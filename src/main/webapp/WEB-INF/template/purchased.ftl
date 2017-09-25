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
        <div class="nav-logo"><a href="index.html"></a></div>
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

<div class="order f-center f-cb">

    <h3 class="h-title">已购买</h3>
    <table class="table-title" cellpadding="0" cellspacing="0">
        <tr>
            <th width="70%">产品规格</th>
            <th width="12%">单价</th>
            <th width="13%">数量</th>
            <th width="10%">时间</th>
        </tr>
    </table>
</div>
<#include "./include/footer.ftl">
</body>
<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
<script>
    function settlement() {
        $.ajax({
            type:'GET',
            url:"/biyaoweb/pu.json",
            success:function (data) {
                fillTemplate(data);
            }
        })
        // 根据json 信息 填写模版
        function  fillTemplate (data) {
            var orderList = data.orderList;
            var templateTable = '';
            orderList.forEach(function (t, number) {
                var singleTable  = '    <table class="settlement-table '+ number + ' ">\n' +
                        '        <tbody>\n' +
                        '        <tr>\n' +
                        '            <td>\n' +
                        '                <span class="shop-img">\n' +
                        '                    <a href="" target="_blank">\n' +
                        '                        <img width="100" height="100" src="'+ t.id + '">\n' +
                        '                    </a>\n' +
                        '                </span>\n' +
                        '            </td>\n' +
                        '            <td align="left">\n' +
                        '                <a target="_blank" href="">\n' +
                        '                    <span class="product-name">'+ t.productName + '</span>\n' +
                        '                </a>\n' +
                        '                <div class="product-des">\n' +
                        '                    <p>颜色:'+ t.color + '</p>\n' +
                        '                    <p>尺寸：'+ t.size  + '</p>\n' +
                        '                </div>\n' +
                        '            </td>\n' +
                        '            <td width="10%" class="single-price ff6600">&yen;'+ t.price + '</td>\n' +
                        '            <td width="10%"><input class="total-number" type="number" max="99" min="0" value="'+ t.buyNumber+ '" readonly></td>\n' +
                        '            <td width="10%">\n' +
                        '                <span class="product-price-count ff6600">'+ t.buyTime + '</span><br>\n' +   '                ' +
                        '               <span class="product-price-count ff6600">评论</span>\n' +
                        '            </td>\n' +
                        '        </tr>\n' +
                        '        </tbody>\n' +
                        '    </table>';

                templateTable += singleTable;


            });
            $('.order').append(templateTable);

        }

    }
    settlement();
</script>
</html>