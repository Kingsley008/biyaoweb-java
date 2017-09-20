<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>必要商城</title>
    <meta name="description"
          content="必要C2M商城是全球性价比最高的电子商务平台，是全球第一家用户直连制造（Customer To Manufactory）的平台，通过平台建立消费者与品质制造商的桥梁，将消费者的需求直接发送到工厂，按需生产模式既满足了消费者个性化的需求，又短路了复杂的商品流通环节，真正让消费者享受到专属且高品质的商品。目前，商品覆盖高跟鞋、眼镜、饰品、运动鞋、运动服、女士包包等品类，未来会按照消费者需求来增加新的产品类目。">
    <meta name="Keywords" content="必要;必要商城;必要平台;必要电商;C2M商城;工业4.0;定制平台;定制商城;奢侈品定制;定制鞋;定制包;定制眼镜;定制饰品;定制运动服;定制运动鞋">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/settlement.css">
</head>
<body>
<!-- 顶部栏 -->
<#include "./include/header.ftl">
<!-- 导航 -->
<div class="t-nav">
    <div class="t-nav-center f-cb">
        <div class="nav-logo"><a href="/biyaoweb/index"></a></div>
        <div class="nav-search">
            <span class="icon-process"></span>
            <ul class="steps f-cb">
                <li>查看购物车</li>
                <li>确认订单</li>
                <li>在线付款</li>
                <li>收货并评价</li>
            </ul>
        </div>
    </div>
</div>

<!-- 收获地址 -->
<div class="address f-center">
    <h3 class="h-title">确认收货信息</h3>
    <label>真实姓名：<input type="text" value="${user.trueName}"></label>
    <label>收货地址：<input name="address" type="text" value="${user.address}"></label>
    <label>联系电话：<input type="tel" value="${user.phoneNumber}"></label>
    <button class="changeAddr">修改收货地址</button>
</div>

<!-- 确认订单 -->
<div class="order f-center f-cb">
    <h3 class="h-title">确认订单</h3>
    <table class="table-title" cellpadding="0" cellspacing="0">
        <tr>
            <th width=""></th>
            <th width="10%">单价</th>
            <th width="10%">数量</th>
            <th width="5%">小计</th>
        </tr>
    </table>
</div>
<!-- footer-->
<div class="ft">
    <div class="ft-wrap f-center">
        <div class="special-serve">
            <ul class="f-cb">
                <li class="serve-make">直连一线制造</li>
                <li class="serve-shipping">全品类包邮</li>
                <li class="serve-pay">平台先行赔付</li>
                <li class="serve-refund">7天无忧退货</li>
            </ul>
        </div>
        <div class="ft-content f-cb">
            <ul class="f-cb">
                <li>
                    <h3>帮助中心</h3>
                    <a href="">平台政策</a><a href="">商家入驻</a></li>
                <li>
                    <h3>关注必要</h3>
                    <a href="">新浪微博</a><a href="">官方微信</a></li>
                <li>
                    <h3>关于必要</h3>
                    <a href="">了解必要</a><a href="">加入必要</a><a href="">联系我们</a></li>
                <li>
                    <h3>下载必要app</h3>
                    <img src="imgs/app.png"></li>
            </ul>
            <dl>
                <dt>服务监督邮箱</dt>
                <dd>service@biyao.com</dd>
            </dl>
        </div>
    </div>
</div>
</body>
<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
<script>
    function settlement() {
//        $.ajax({
//            type:'GET',
//            url:"data/data.json",
//            success:function (data) {
//                fillTemplate(data);
//            }
//        })
        var data = localStorage.getItem('sumData') && JSON.parse(localStorage.getItem('sumData'));
        // 根据json 信息 填写模版
        console.log(data);
        fillTemplate(data.productArr);
        function  fillTemplate (productArr) {
            console.log(productArr);
            var templateTable = '';
            productArr.forEach(function (t, number) {
                var singleTable  = '    <table class="settlement-table '+ number + ' ">\n' +
                        '        <tbody>\n' +
                        '        <tr>\n' +
                        '            <td>\n' +
                        '                <span class="shop-img">\n' +
                        '                    <a href="" target="_blank">\n' +
                        '                        <img width="100" height="100" src="'+ t.imgURL + '">\n' +
                        '                    </a>\n' +
                        '                </span>\n' +
                        '            </td>\n' +
                        '            <td align="left">\n' +
                        '                <a target="_blank" href="">\n' +
                        '                    <span class="product-name">'+ t.name + '</span>\n' +
                        '                </a>\n' +
                        '                <div class="product-des">\n' +
                        '                    <p>'+ t.color + '</p>\n' +
                        '                    <p>'+ t.size  + '</p>\n' +
                        '                </div>\n' +
                        '            </td>\n' +
                        '            <td width="10%" class="single-price ff6600">'+ t.price + '</td>\n' +
                        '            <td width="10%"><input class="total-number" type="number" max="99" min="0" value="'+ t.number + '" readonly></td>\n' +
                        '            <td width="5%">\n' +
                        '                <span class="product-price-count ff6600">'+ t.count + '</span>\n' +
                        '            </td>\n' +
                        '        </tr>\n' +
                        '        </tbody>\n' +
                        '    </table>';

                templateTable += singleTable;


            })
            $('.order').append(templateTable);

            var templateSum = '    <div class="settlement-sum">\n' +
                    '        <p>商品总数 <span class="total-num ff6600">' + data.totalNumber + '件</span></p>\n' +
                    '        <p>商品总价：<span class="total-price ff6600"> ' + data.totalPrice + '</span></p>\n' +
                    '        <div>\n' +
                    '            <button class="cart-btn">返回购物车</button>\n' +
                    '            <button class="order-btn">提交订单</button>\n' +
                    '        </div>\n' +
                    '    </div>'

            $('.order').append(templateSum);
        }

    }
    settlement();
</script>
</html>