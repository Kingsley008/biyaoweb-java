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
                    case 'product nav-selected':
                        self.productManager();
                        break;
                    case 'user nav-selected':
                        self.userManager();
                        break;

                }
            });
            return self;
        },
        sliderManager: function () {
            initSliderInfo();

            function initSliderInfo() {
                $.ajax({
                    url: '  /biyaoweb/showSlider',
                    type: 'POST',
                    data:null,
                    success: function (data) {
                        showTemplate(data.sliderList);
                        updateSliderInfo();

                    }
                })
            }

            function showTemplate(list) {

                var template = '    <table >\n' +
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



        },
        productManager: function () {

            initProductInfo();

            function initProductInfo() {
                $.ajax({
                    url: '/biyaoweb/showProduct',
                    type: 'POST',
                    data:null,
                    success: function (data) {
                        showTemplate(data.productList);
                        pageHandler(data.pageCount);
                        bindClickOnTable();
                        bindPageHandler();
                        bindAddNew();
                    }
                })
            }

            function showTemplate(list) {

                var template = '    <table class="product-table">\n' +
                    '        <thead><tr><th>id</th><th>商品名称</th><th>图片地址</th><th>商品价格</th><th>操作1</th><th>操作2</th></tr></thead><tbody>\n'
                list.forEach(function (p1, p2, p3) {

                    template += '        <tr><td class="id">'+ p1.id +'</td><td><input class="product-name" value="'+ p1.name +'"></td><td><input class="icon" value="'+ p1.icon +'"></td>' +
                        '<td><input class="price" value="'+ p1.price +'"></td> <td><span class="detail">详细信息</span></td> <td><span class="delete">删除</span></td></tr>\n';

                })
                template +=    '   </tbody> </table><button class="addNewBtn">上新</button>';

                $('.right-content').html(template);
            }

            function pageHandler(pageCount) {
                temp = '<ul class="pageHanlder">';

                for ( var i = 1; i <= pageCount; i++) {
                    temp += '<li class="page">' + i + '</li>'
                }
                temp += '</ul>  ';

                $('.right-content').append(temp);
            }

            function bindPageHandler() {
                var $pages =  $('.page');
                $.each($pages, function () {
                    $(this).on('click', function (e) {
                        $target = $(e.target);
                        var data = {};
                        data.currentPage = $target.text();

                        $.ajax(
                            {
                                url : '/biyaoweb/dealProductPage',
                                data : data,
                                type : 'POST',
                                success: function (data) {
                                    showTemplate(data.productList);
                                    $.each($pages, function () {
                                        $(this).on('click', null);
                                    });
                                    pageHandler(data.pageCount);
                                    bindPageHandler();
                                    bindClickOnTable();
                                    bindClickOnTable();
                                    bindAddNew();
                                }
                            }
                        )
                    })
                })
            }
            /*
            *
            * 集中处理所有的table上的click事件
            *
            * */
            function bindClickOnTable() {
                $tabe = $('.product-table');
                $tabe.on('click',function (e) {
                    $target = $(e.target);
                    console.log($target.attr('class'));
                    switch ($target.attr('class')){
                        case 'detail':
                            var id = $target.parent().parent().find('.id').text();
                            var data = {id : id};
                            $.ajax({
                                url: '/biyaoweb/showCurrentDetail',
                                type:'POST',
                                data: data,
                                success: function (data) {
                                    dealDetailTemp(data.productDetail);
                                }
                            });
                            break;
                        case 'delete':
                                var id = $target.parent().parent().find('.id').text();
                                var data = {id : id};
                                var ret = confirm("确定删除吗？");
                                if (ret){
                                    $.ajax({
                                        url: '/biyaoweb/deleteProduct',
                                        type:'POST',
                                        data: data,
                                        success: function (data) {
                                            if(data.message === 1){
                                                window.notice("删除成功");
                                                setTimeout(location.reload, 2000);

                                            }
                                        }
                                    });

                                }
                                break;
                    }
                })
            }

            function addModal(temp,modal) {
                $('.body').append(temp);
                $('.body').append(modal);
            }

            function removeModal() {
                $('.form-container').remove();
                $('.m-modal').css('display','none');
            }

            /*
             * 添加新品
             * */
            function bindAddNew() {
                $('.addNewBtn').on('click',function (e) {
                    e.preventDefault();
                    console.log('new');
                    var modal = '<div class="m-modal">';
                    var temp = ' <div class="form-container">     \n' +
                        '           <form class="product-detail" name="product-detail">\n' +
                        '               <p>id:<input value="0" name="id" readonly></p>\n' +
                        '               <p>商品名称：<input name="name" value="" required></p>\n' +
                        '               <p>商品介绍：<input name="intro" value="" required></p>\n' +
                        '               <p>生产周期：<input name="produceDate" value="" required></p>\n' +
                        '               <p>商品分类：<input name="catagory" value="" required></p>\n' +
                        '               <p>子分类：<input  name="subCatagory" value="" required></p>\n' +
                        '               <p>新品：<input name="newicon" value="" required></p>\n' +
                        '               <p>型号：<input name="sizes" value="" required></p>\n' +
                        '               <p>颜色：<input name="colors" value="" required></p>\n' +
                        '               <p>当前价格：<input name="price" value="" required></p>\n' +
                        '               <p>封面图片：<input name="icon" value="" required></p>\n' +
                        '               <p>展示图片：<input name="imgs" value="" required></p>\n' +
                        '               <p>详情页：<textarea name="text" value="" required></textarea></p>\n' +
                        '               <button type="submit" class="add">添加</button></button><button class="cancel">取消</button>\n' +
                        '           </form>\n' +
                        '    </div>   ';
                    addModal(temp, modal);
                    // 重构的时候封装起来
                    $('.form-container').on('click', function (e) {
                        e.preventDefault();
                        $target = $(e.target);
                        switch ($target.attr('class')) {
                            case 'cancel':
                                removeModal();
                                break;
                            case 'add':
                                var ret =  $('.product-detail').serialize();
                                console.log(ret);
                                $.ajax({
                                    url:'/biyaoweb/addNewProduct',
                                    data:ret,
                                    type:'POST',
                                    success: function (data) {
                                        console.log(data.message); // 1
                                        if (data.message) {
                                            window.notice('上新成功');
                                            removeModal();
                                            location.reload();
                                        }
                                    }
                                });
                                break;
                        }

                    });

                });
            }



            function dealDetailTemp(productDetail) {
                var p = productDetail; //   </div>
                var modal = '<div class="m-modal">';
                var temp = ' <div class="form-container">     \n' +
                    '           <form class="product-detail" name="product-detail">\n' +
                    '               <p>id:<input value="'+ p.id +'" name="id"></p>\n' +
                    '               <p>商品名称：<input name="name" value="'+ p.name +'"></p>\n' +
                    '               <p>商品介绍：<input name="intro" value="'+ p.intro +'"></p>\n' +
                    '               <p>生产周期：<input name="produceDate" value="'+ p.produceDate +'"></p>\n' +
                    '               <p>商品分类：<input name="catagory" value="'+ p.catagory+'"></p>\n' +
                    '               <p>子分类：<input  name="subCatagory" value="'+ p.subCatagory +'"></p>\n' +
                    '               <p>新品：<input name="newicon" value="'+ p.newicon +'"></p>\n' +
                    '               <p>型号：<input name="sizes" value="'+ p.sizes +'"></p>\n' +
                    '               <p>颜色：<input name="colors" value="'+ p.colors +'"></p>\n' +
                    '               <p>当前价格：<input name="price" value="'+ p.price +'"></p>\n' +
                    '               <p>封面图片：<input name="icon" value="'+ p.icon +'"></p>\n' +
                    '               <p>展示图片：<input name="imgs" value="'+ p.imgs +'"></p>\n' +
                    '               <p>详情页：<textarea name="text" value="'+ p.text +'"></textarea></p>\n' +
                    '               <button type="submit" class="update">更新</button></button><button class="cancel">取消</button>\n' +
                    '           </form>\n' +
                    '    </div>   ';
                addModal(temp, modal);



                $('.form-container').on('click', function (e) {
                    e.preventDefault();
                    $target = $(e.target);
                    switch ($target.attr('class')) {
                        case 'cancel':
                            removeModal();
                        break;
                        case 'update':
                           var ret =  $('.product-detail').serialize();
                           $.ajax({
                              url:'/biyaoweb/updateCurrentDetail',
                              data:ret,
                              type:'POST',
                              success: function (data) {
                                  console.log(data.message);
                                  /* 更新返回 null*/
                                  if (!data.message) {
                                      window.notice('更新成功');
                                      removeModal();
                                  }
                              }
                           });
                           break;
                    }

                });
            }
        },
        userManager: function () {
            initUserInfo();
            console.log('user');
            function initUserInfo() {
                $.ajax({
                    url: '/biyaoweb/showUserList',
                    type: 'POST',
                    data:null,
                    success: function (data) {
                        showTemplate(data.userList);
                        updateUserInfo();
                        pageHandler(data.pageCount);
                        bindPageHandler();

                    }
                })
            }

            function showTemplate(list) {

                var template = '    <table class="table-user" >\n' +
                    '        <thead><tr><th>id</th><th>手机号</th><th>密码</th><th>收货姓名</th><th>收货地址</th><th>用户类型</th><th>操作1</th><th>操作2</th></tr></thead><tbody>\n'
                list.forEach(function (p1, p2, p3) {

                    template += '        <tr><td class="id">'+ p1.id +'</td><td><input class="phoneNumber" value="'+ p1.phoneNumber +'"></td><td><input class="password" value="'+ p1.password +'"></td>' +
                        '<td><input class="trueName" value="'+ p1.trueName +'"></td><td><input class="address" value="'+ p1.address +'"></td><td><input class="type" value="'+ p1.type +'"></td><td><span class="update">更新</span></td><td><span class="delete">删除</span></td></tr>\n';

                })
                template +=    '   </tbody> </table>';
                $('.right-content').html(template);

            }

            function pageHandler(pageCount) {
                temp = '<ul class="pageHanlder">';

                for ( var i = 1; i <= pageCount; i++) {
                    temp += '<li class="page">' + i + '</li>'
                }
                temp += '</ul>  ';

                $('.right-content').append(temp);
            }



            function updateUserInfo() {

                /* 切换tab 页面 手动释放内存 */
                $('.table-user').on('click', function (e) {
                   $target = $(e.target);
                   var $tr = $target.parent().parent();
                   switch ($target.attr('class')){
                       case 'update':
                           var user = {};
                           user.phoneNumber = $tr.find('.phoneNumber').val();
                           user.password = md5($tr.find('.password').val());
                           user.address = $tr.find('.address').val();
                           user.type = $tr.find('.type').val();
                           user.trueName = $tr.find('.trueName').val();
                           user.id = $tr.find('.id').html();

                           $.ajax({
                               url: '/biyaoweb/updateUser',
                               type: 'POST',
                               data: user,
                               success: function () {
                                   window.notice('更新成功');

                               }
                           });
                           break;
                       case 'delete':
                           var id = $tr.find('.id').html();
                           var data = {id:id};
                           var ret = confirm("确定删除该用户？");
                           if(!ret){
                               return
                           }
                           $.ajax({
                               url: '/biyaoweb/deleteUser',
                               type: 'POST',
                               data: data,
                               success: function () {
                                   window.notice('删除成功');
                               }
                           });

                   }
                });
            }
            function bindPageHandler() {
                var $pages =  $('.page');
                $.each($pages, function () {
                    $(this).on('click', function (e) {
                        $target = $(e.target);
                        var data = {};
                        data.currentPage = $target.text();

                        $.ajax(
                            {
                                url : '/biyaoweb/dealUserPage',
                                data : data,
                                type : 'POST',
                                success: function (data) {
                                    showTemplate(data.userList);
                                    $.each($pages, function () {
                                        $(this).on('click', null);
                                    });
                                    updateUserInfo();
                                    pageHandler(data.pageCount);
                                    bindPageHandler();

                                }
                            }
                        )
                    })
                })
            }

        }
    };


    $.extend({manager: function (options) {
        new Manager(options)
    }});
    $.manager();
})()
