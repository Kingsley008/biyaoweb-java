(function () {
    // 管理四大模块
    function Manager(options) {
        this.option = options;
        this.initDOM().bindTab();
    }
    Manager.prototype = {
        initDOM: function () {
            $sliderManagerTab = $('.slider');
            $userManagerTab = $('.user');
            $productManagerTab = $('.product');
            $orderManagerTab = $('.order');
            return this;
        },
        bindTab: function () {
            var self = this;
            $('.nav-container').on('click', function (e) {
                var $target = $(e.target);
                $target.siblings().removeClass('nav-selected');
                $target.addClass('nav-selected');
                console.log($target.attr('class'));
                switch ($target.attr('class')){
                    case 'slider nav-selected':
                        self.sliderManager();
                        break;

                }
            });
            return self;
        },
        sliderManager: function () {
            initSliderInfo();

            function initSliderInfo() {
                $.ajax({
                    url: '/biyaoweb/showSlider',
                    type: 'POST',
                    data:null,
                    success: function (data) {

                        showTemplate(data.sliderList);
                        updateSliderInfo();
                    }
                })
            }

            function showTemplate(list) {

                var template = '    <table>\n' +
                    '        <thead><tr><th>id</th><th>商品名称</th><th>图片地址</th><th>商品地址</th><th>操作</th></tr></thead><tbody>\n'
                list.forEach(function (p1, p2, p3) {

                    template += '        <tr><td class="id">'+ p1.id +'</td><td><input class="product-name" value="'+ p1.productName +'"></td><td><input class="imgURL" value="'+ p1.imgURL +'"></td>' +
                        '<td><input class="pageURL" value="'+ p1.pageURL +'"></td><td><span class="update">更新</span></td></tr>\n';

                })
                template +=    '   </tbody> </table>';
                $('.right-content').html(template);
            }

            function updateSliderInfo() {
                    var updateBtns = $('.update');
                    /* 切换tab 页面 手动释放内存 */
                    $.each(updateBtns, function (value) {
                        $(this).on('click', function (e) {
                            $target = $(e.target);
                            var $tr = $target.parent().parent();
                            var slider = {};
                            slider.productName = $tr.find('.product-name').val();
                            slider.imgURL =  $tr.find('.imgURL').val();
                            slider.pageURL = $tr.find('.pageURL').val();
                            slider.id = $tr.find('.id').html();
                            $.ajax({
                                url: '/biyaoweb/updateSlider',
                                type: 'POST',
                                data: JSON.stringify(slider),
                                dataType:"json",
                                contentType:"application/json",
                                success: function () {
                                    window.notice('更新成功');
                                }
                            })
                        })
                    })

            }



        }
    }

    $.extend({manager: function (options) {
        new Manager(options)
    }});
    $.manager();
})()
