<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>必要商城</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/product.css">
</head>
<body>
<!-- 顶部栏 -->
<#include "./include/header.ftl">
<!-- 导航 -->
<#include "./include/search.ftl">

<div class="section  f-center">
    <div class="section-bread">
        <a href="index.html">首页</a>
        <span class="bread-title">&gt;${product.name}</span>
    </div>
    <div class="section-editor f-cb">
        <div class="editor-main">
            <div class="editor-pic f-cb">
                <p><img class="main-pic" src="${arrImg[0]}"></p>
                <ul class="group-pic">
                <#list arrImg as x>
                    <li><img src="${x}" alt=""></li>
                </#list>
                </ul>
            </div>
            <ul class="editor-policy f-cb">
                <li>
                    <span>7天无忧退换</span>
                    <div>
                        <i></i>
                        <p>实物破损、不符、质量问题，退换货商家承担往返运费。</p>
                    </div>
                </li>
                <li>
                    <span>先行赔付</span>
                    <div>
                        <i></i>
                        <p>争议可申诉，申诉成功，立即退款。</p>
                    </div>
                </li>
                <li>
                    <span>超时赔偿</span>
                    <div>
                        <i></i>
                        <p>未按承诺时间发货，系统自动赔付（赔款金额为订单商品金额的30%，上限500元）。</p>
                    </div>
                </li>
                <li>
                    <span>顺丰包邮</span>
                    <div>
                        <i></i>
                        <p>运费由商家承担</p>
                    </div>
                </li>
            </ul>
        </div>
        <div class="editor-panel">
            <div class="panel-top">
                <h1 class="product-name">${product.name}</h1>
                <p>${product.intro}</p><#-- 缺少abstract 属性 -->
            </div>
            <ul class="panel-main">
                <li class="panel-press">
                    <span>售价</span>
                    <div>
                        <span class="panel-money">￥<i>${product.price}</i></span>
                        <span class="panel-duration">生产周期：<span>${product.produceDate}</span>天
						</span>
                    </div>
                </li>

                <li class="panel-specs">
                    <ul>
                        <li class="specs-dimension clearfix"><span>颜色</span>
                            <div>
                                <ul class="specs-style f-cb">

                                    <li class="color-detail">
                                    ${arrColor[0]}
                                        <em></em>
                                    </li>

                                    <li class="color-detail">
                                    ${arrColor[1]}
                                        <em></em>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="specs-dimension clearfix"><span>尺寸</span>
                            <div>
                                <ul class="specs-size">
                                <#list arrSize as x >
                                    <li class="specs-detail">${x}<em></em></li>
                                </#list>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </li>

                <li class="panel-sizeImg">
                    <div><span>查看尺码对照表</span></div>
                    <!--    <img src="http://bfs.biyao.com/group1/M00/15/F3/rBACVFl0nkiADjDXAADYaVRBfDY420.jpg">-->
                </li>

                <li class="panel-count"><span>数量</span>
                    <div>
                        <p class="panel-num">
                            <span class="panel-minus">-</span>
                            <span class="panel-number">1</span>
                            <span class="panel-add">+</span>
                        </p>
                    </div>
                </li>
            </ul>
            <div class="panel-bottom">
                <p id="buyNow" class="panel-buyNow">立即购买</p>
                <p class="addShopCar">加入购物车</p>
            </div>
        </div>
    </div>
    <!-- 详情页 -->
    <div class="detail-page f-cb">
        <div class="view-title f-cb">
            <a href="" class="brand">EMP服饰</a>
            <a href="" class="tab-selected" data-tab="detail">商品信息</a>
            <a href="" data-tab="comment">评价详情</a>
        </div>
        <div class="left-recommendation">
            <ul>
                <li>
                    <div class="hd">
                        <a href="" target="_blank">
                            <img src="imgs/product/recommendation/recommdation.jpg" alt="推荐商品">
                        </a>
                    </div>
                    <div class="bd">
                        <p>咖啡碳纤维休闲裤</p>
                        <b class="price">￥279</b>
                    </div>
                </li>
                <li>
                    <div class="hd">
                        <a href="" target="_blank">
                            <img src="imgs/product/recommendation/recommdation.jpg" alt="推荐商品">
                        </a>
                    </div>
                    <div class="bd">
                        <p>咖啡碳纤维休闲裤</p>
                        <b class="price">￥279</b>
                    </div>
                </li>
                <li>
                    <div class="hd">
                        <a href="" target="_blank">
                            <img src="imgs/product/recommendation/recommdation.jpg" alt="推荐商品">
                        </a>
                    </div>
                    <div class="bd">
                        <p>咖啡碳纤维休闲裤</p>
                        <b class="price">￥279</b>
                    </div>
                </li>
                <li>
                    <div class="hd">
                        <a href="" target="_blank">
                            <img src="imgs/product/recommendation/recommdation.jpg" alt="推荐商品">
                        </a>
                    </div>
                    <div class="bd">
                        <p>咖啡碳纤维休闲裤</p>
                        <b class="price">￥279</b>
                    </div>
                </li>
            </ul>
        </div>
        <div class="right-product-detail"></div>

    </div>

</div>

</div>
<!-- 侧栏导航 -->
<div class="t-side" style="z-index: 3">
    <ul class="right-bar-fixed">
        <li class=""></li>
        <li class=""></li>
        <li class=""></li>
        <!-- 二维码下载hover 显示 -->
        <li class="rightBar-code">
            <div class="rightBar-code-show">
                <span></span>
                <dl>
                    <dt></dt>
                    <dd>扫码下载必要App</dd>
                </dl>
            </div>
        </li>
        <!-- 滑动条在顶部 隐藏 -->
        <li class="rightBar-top"><a href="#top"></a></li>
    </ul>
</div>

<!-- footer-->
<#include "./include/footer.ftl">

<div class="fixed-top f-dn">
    <div class="t-nav-center-fixed f-cb">
        <div class="view-title f-cb">
            <a href="">EMP服饰</a>
            <a href="" class="tab-selected" data-tab="detail">商品信息</a>
            <a href="" data-tab="comment">评价详情<span class="comment-num">138</span></a>
            <p class="addShopCar">加入购物车</p>
        </div>
    </div>
</div>
</body>
<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
<script type="text/javascript" src="js/ScrollEvent.js"></script>
<script type="text/javascript" src="js/util.js"></script>
<script>
    /* 之后封装 */
    function handleClick() {
        var $mainPic = $('.main-pic');
        // 处理主图切换
        $('.group-pic').on('click', function (e) {
            var target = e.target;
            var imgURL = target.src;
            $(target).parent().siblings().removeClass('main-active');
            $(target).parent().addClass('main-active');
            $mainPic.attr('src', imgURL);

        });
        // 取到相应的款式信息
        $('.specs-style').on('click', function (e) {
            var target = e.target;
            $(target).siblings().removeClass('lowModel-specs-active');
            $(target).addClass('lowModel-specs-active');

            var style = $(target).siblings('.material-sale').html();

        });
        // 取到尺寸
        $('.specs-size').on('click', function (e) {
            var target = e.target;
            $(target).siblings().removeClass('lowModel-specs-active');
            $(target).addClass('lowModel-specs-active');
            var size = parseInt($(target).html());
        });
        // 响应购物数量切换
        var $number = $('.panel-number');
        // 购买的数量
        var num = $number.html();

        $('.panel-num').on('click', function (e) {
            var target = e.target;
            if (target.className === 'panel-minus') {
                num = Math.max(0, --num);
                $number.html(num);
            } else if (target.className === 'panel-add') {
                num = Math.min(100, ++num);
                $number.html(num);
            }
            // console.log(num);

        });
        // 封装
        function showdefualt() {
            var ids = location.search.substring(1).split('=');
            var productId = ids[1]; // productId
            var obj = {
                productId: productId
            };
            $.ajax({
                url: '/biyaoweb/getProductPageDetail',
                type: 'POST',
                data: obj,
                success: function (data) {
                    var templateDetail = data.productPageDetail;
                    showTab(templateDetail);
                    //console.log(templateDetail);
                }
            });
        }

        showdefualt();


        // tab页切换
        $('.view-title').on('click', function (e) {
            e.preventDefault();
            var ids = location.search.substring(1).split('=');
            var productId = ids[1]; // productId
            var obj = {
                productId: productId
            };
            var $target = $(e.target);
            if ($target.attr('class') === 'brand') {
                // 进行店铺跳转
                return
            }
            // 选中样式转换
            $target.siblings().removeClass('tab-selected');
            $target.addClass('tab-selected');
            console.log($target.attr('data-tab'));
            switch ($target.attr('data-tab')) {
                case 'comment':
                    // 请求商品评论
                    $.ajax({
                        url: '/biyaoweb/getComments',
                        type: 'GET',
                        data: obj,
                        success: function (data) {
                            console.log(data);
                            var list = data.commentsList;
                            var templateComment = '<p>商品满意度：<span class= "total - eval">4.8分</span></p>' +
                                    '            <ul>\n';
                            // TODO  动态详情页
                            // var templateDetail

                            list.forEach(function (value, index, p3) {
                                mapComment = {
                                    1: '好评',
                                    2: '中评',
                                    3: '差评'
                                };
                                mapIcon = {
                                    1: 'good-icon',
                                    2: 'good-icon',
                                    3: 'bad-icon'
                                };

                                var rank = mapComment[rank];
                                var rankIcon = mapIcon[value.rank];
                                var temp = '                <li class="f-cb">\n' +
                                        '                    <div class="eval-user">\n' +
                                        '                        <img class="user-icon" src="imgs/icon/admin.png" width="40" height="40">\n' +
                                        '                        <span class="user-id">' + value.trueName.substring(0, 1) + '***' + '</span>\n' +
                                        '                    </div>\n' +
                                        '                    <dl class="eval-result">\n' +
                                        '                        <dt class="' + rankIcon + '"></dt>\n' +
                                        '                        <dd>' + rank + '</dd>\n' +
                                        '                    </dl>\n' +
                                        '                    <div class="eval-content">\n' +
                                        '                        <p>' + value.comments + '</p>\n' +
                                        '                    </div>\n' +
                                        '                    <div class="eval-product">\n' +
                                        '                        <span> ' + value.buyTime + ' </span>\n' +
                                        '                        <span>颜色: ' + value.color + '</span>\n' +
                                        '                        <span>尺寸: ' + value.size + '</span>\n' +
                                        '                    </div>\n' +
                                        '                </li>\n';
                                templateComment += temp;
                            });
                            templateComment += '<p class="no-more-comment">没有更多评论了</p>\n' +
                                    '            </ul>\n';
                            //console.log(templateComment);
                            showTab(templateComment);
                        }
                    });

                    break;
                case 'detail':
                    $.ajax({
                        url: '/biyaoweb/getProductPageDetail',
                        type: 'POST',
                        data: obj,
                        success: function (data) {
                            var templateDetail = data.productPageDetail;
                            showTab(templateDetail);
                            //console.log(templateDetail);
                        }
                    });

            }
        });


        function showTab(template) {
            var container = $('.right-product-detail');
            container.html('');
            container.html(template);
        }

        // 切换到 购物车页面  并且 进行数据保存
        $('.panel-bottom').on('click', function (e) {
            var checked = dealCart();
            var e = e || window.e;
            // 跳页前确认是否勾选参数
            if (typeof checked == 'boolean') {
                return
            }

            if (e.target.className == 'addShopCar') {
                location.href = '/biyaoweb/shoppingCart';

            } else if (e.target.className = '.panel-buyNow') {

                var sumData = {};
                var productArr = [];
                // 得到订单列表的数量
                var obj = {};
                obj.imgURL = $('.main-pic').attr('src');
                obj.name = $('.product-name').text();
                obj.color = $('.color-detail.lowModel-specs-active').text();
                obj.size = $('.specs-detail.lowModel-specs-active').text();
                obj.price = $('.panel-money').find('i').text();
                obj.number = $('.panel-number').text();
                sumData.totalNumber = obj.number;
                var total = '￥' + (obj.number * obj.price);
                obj.price = '￥' + obj.price;
                obj.count = obj.price;
                var ids = location.search.substring(1).split('=');
                obj.productId = ids[1]; // productId
                productArr.push(obj);
                sumData.productArr = productArr;
                sumData.totalPrice = total;

                console.log(sumData);
                localStorage.setItem('sumData', JSON.stringify(sumData));

                var cookies = util.getCookie();

                if (cookies.userId == null) {
                    // 登入弹窗
                    // TODO 做一个登录modal
                    location.href = "/biyaoweb/login";
                } else {
                    location.href = "/biyaoweb/settlement";
                }
            }

        });
        // TODO 跳转订单确认页面

        function saveInfo() {
            var productObj = {};
            productObj.imgURL = $('.main-pic').attr('src');
            productObj.name = $('.product-name').html();
            productObj.style = $('.color-detail.lowModel-specs-active').text();
            productObj.size = $('.specs-detail.lowModel-specs-active').text();
            productObj.price = $('.panel-money>i').html();
            productObj.number = $('.panel-number').html();
            var ids = location.search.substring(1).split('=');
            productObj[ids[0]] = ids[1]; // productId
            console.log(productObj);
            // 检查参数是否存在
            for (var v in productObj) {
                var checked = true;

                if (productObj[v].length > 0) {
                    console.log(productObj[v].length);

                } else {
                    checked = false;
                    return checked;
                }

            }

            if (checked) {
                return productObj;
            }
        }

        function dealCart() {
            var productObj = saveInfo();
            if (typeof productObj == 'boolean') {
                alert('请选择商品的型号');
                return false
            }


            if (!localStorage.getItem('productCart')) {
                // 当前没有购物车 创建购物车
                var productArr = [];
                localStorage.setItem('productCart', JSON.stringify(productArr));
                productArr.push(productObj);
            } else {
                // 已有购物车 取出
                var arr = JSON.parse(localStorage.getItem('productCart'));
                arr.push(productObj);
                localStorage.setItem('productCart', JSON.stringify(arr));
            }

        }

    }


    function _main() {

        $.scrollEvent({
            bdSelector: ".detail-page", //滚动到bd显示 固定的顶部栏
            topSelector: ".rightBar-top", // 在顶部时 进行隐藏
            // showManSelector:".m-show.man", // 滚动到这个节点 动态加载下一个节点
            topFixedSelector: ".fixed-top", // 用于显示隐藏
        });

        handleClick();

    }

    _main();
</script>
</html>