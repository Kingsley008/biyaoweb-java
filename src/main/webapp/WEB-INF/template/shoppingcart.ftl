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
    <link rel="stylesheet" href="css/shoppingcart.css">

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

<div class="cart f-center">
    <!-- 没有购物信息的模版 -->
    <div class="no-product">
        <p>您的购物车空空的</p>
        <button id="go-index">立即购物</button>
    </div>
    <div class="shopping-cart">
        <h3>购物车</h3>
        <table class="table-title" cellpadding="0" cellspacing="0">
            <tr>
                <th colspan="2" width="15%">
                    <label data-select="all"><input name="check-all" class="checkbox checked" type="checkbox" checked>
                        全选
                    </label>
                </th>
                <th align="left">商品信息</th>
                <th width="10%">单价</th>
                <th width="10%">数量</th>
                <th width="20%">包装</th>
                <th width="10%">小计</th>
                <th width="5%">操作</th>
            </tr>
        </table>

        <div class="cart-summary f-cb">
            <a class="delete-all" href="">全部删除</a>
            <div class="settlement ">
                <p>合计（不含运费）:<span class="cart-sum-price ff6600"></span></p>
                <button class="settlement-btn">结算</button>
            </div>
        </div>
    </div>
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


<div class="m-modal" style="display: none"></div>



</body>

<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
<script type="text/javascript" src="js/modal.js"></script>
<script type="text/javascript" src="js/util.js"></script>
<script type="text/javascript" src="js/shoppingcart.js"></script>

</html>