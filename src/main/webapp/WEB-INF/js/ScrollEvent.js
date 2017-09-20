/* 滑动显示 */
(function (w, d, $) {
    function ScrollEvent(options) {
        this.options = $.extend({}, this.DEFAULT, options);
        this.scrollTop = 0;
        this.documentH = $(window).height();
        this._initDom()._bindScroll();

    }

    ScrollEvent.prototype = (function () {

        return {
            DEFAULT: {},
            _initDom: function () {
                var self = this;
                self.$bd = $(self.options.bdSelector);
                self.$top = $(self.options.topSelector);
                self.$showMan = $(self.options.showManSelector);
                self.$fixedTop = $(self.options.topFixedSelector);
                self.$showLady = $(self.options.showLadySelector);
                return self;
            },
            _showFixedTop: function () {
                var self = this;
                self.$fixedTop.removeClass("f-dn");
            },
            _hideFixedTop: function () {
                var self = this;
                self.$fixedTop.addClass('f-dn');
            },
            _hideToTop: function () {
                var self = this;
                self.$top.hide();
            },
            _showToTop: function () {
                var self = this;
                self.$top.show();
            },
            _bindScroll: function () {
                var self = this;
                $(window).on('scroll', function (e) {
                    self.scrollTop = Math.floor($(window).scrollTop());

                    // 显示 隐藏 直达顶部 按钮
                    if (self.scrollTop <= 20) {
                        self._hideToTop();
                    } else {
                        self._showToTop();
                    }

                    // 顶部固定 导航
                    if (self.scrollTop > self.$bd.offset().top + 84) {
                        self._showFixedTop();
                    } else if (self.scrollTop <= self.$bd.offset().top + 84) {

                        self._hideFixedTop();
                    }

                    //动态加载
                    if(self.$showMan.length <= 0){
                        console.log("return")
                        return
                    }

                    if (self.documentH + self.scrollTop > self.$showMan.offset().top + self.$showMan.height() / 2) {
                        console.log('trigger');
                        var isManLoad = false;
                        if (!isManLoad){
                            this.show('/biyaoweb/getManCatagory', $('.m-show-wrap.man'));
                            isManLoad = true;
                        }

                    }
                    if (self.documentH + self.scrollTop > self.$showLady.offset().top + self.$showLady.height() / 2) {
                        var isWomenLoad = false;
                        if (!isWomenLoad) {
                            this.show('/biyaoweb/getWomanCatagory',$('.m-show-wrap.lady'));
                            isWomenLoad = true;
                        }
                    }

                }.bind(self))

                return self;
            },
            getCatagory: function (container, list) {
                var productList = list;
                var template = '';
                for (var i = 0; i < productList.length; i++) {
                    var singleTemp = '<li class="item-small">\n' +
                        '                <div class="hd">\n' +
                        '                    <a href="/biyaoweb/product?productId=' + productList[i].id + '"><img src="' + productList[i].icon + '" width="204"></a>\n' +
                        '                </div>\n' +
                        '                <div class="bd">\n' +
                        '                    <a href="/biyaoweb/product?productId=' + productList[i].id + '"><p class="item-small-intro f-toe">' + productList[i].name + '</p></a>\n' +
                        '                    <span class="item-samll-price">¥' + productList[i].price + '</span>\n' +
                        '                </div>\n' +
                        '            </li>';
                    template += singleTemp;
                }
                container.html(template);
            },

            show: function (url,container) {
                var self = this;
                $.ajax({
                    url: url,
                    type: "GET",
                    success: function (data) {
                        // dom动态插入数据
                        self.getCatagory(container, data.ClotheList);
                    }
                });
            }
        }
    })()
    $.extend({
        scrollEvent: function (options) {
            new ScrollEvent(options);
        }
    })
})(window, document, jQuery);