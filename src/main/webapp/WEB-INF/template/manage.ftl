<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>必要后台</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/manage.css">
</head>
<body>
<div class="left-aside-nav">
    <ul class="nav-container">
        <li class="slider nav-selected">图片轮播管理</li>
        <li class="user">用户管理</li>
        <li class="product">商品管理</li>
        <li class="order">订单管理</li>
        <li class="else">其他</li>
    </ul>
</div>
<div class="right-content">
    <!-- ajax 动态生成 -->

    <!-- slider 管理-->
    <!--    <table>
            <thead><tr><th>id</th><th>商品名称</th><th>商品地址</th><th>图片地址</th><th>操作</th></tr></thead>
            <tbody><tr><td>1</td><td><input value="男生衬衫"></td><td><input value="www.qeqwew.com"></td><td><input value="text.com"></td><td><span class="update">更新</span></td></tr></tbody>
        </table>-->
    <!-- 用户管理 -->
    <!--    <table>
            <thead><tr><th>id</th><th>用户手机号</th><th>密码</th><th>收货名</th><th>收货地址</th><th>操作1</th><th>操作2</th></tr></thead>
            <tbody><tr><td>1</td><td><input value="男生衬衫"></td><td><input value="www.qeqwew.com"></td><td><input value="text.com"></td><td><input value="text.com"></td><td><span class="update">更新</span></td><td><span class="delete">删除</span></td></tr></tbody>
        </table>-->

<!--    <table>
        <thead>
        <tr>
            <th>id</th>
            <th>商品名称</th>
            <th>生产周期</th>
            <th>商品分类</th>
            <th>子分类</th>
            <th>操作1</th>
            <th>操作2</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>1</td>
            <td><input value="男生衬衫"></td>
            <td><input value="1"></td>
            <td><input value="text.com"></td>
            <td><input value="text.com"></td>
            <td><span class="update">查看详细信息</span></td>
            <td><span class="delete">删除</span></td>
        </tr>
        </tbody>
    </table>-->


    <!-- 商品详情 -->
<#--       <div class="m-modal"></div>-->

    <!--
       <div class="form-container">
           <form class="product-detail" name="product-detail">
               <p>id:<input value="1" name="id"></p>
               <p>商品名称：<input name="productName" value=""></p>
               <p>生产周期：<input value="7天"></p>
               <p>商品分类：<input value="男装"></p>
               <p>子分类：<input value="衬衫"></p>
               <p>新品：<input value="1"></p>
               <p>型号：<input value="XL;XXL"></p>
               <p>颜色：<input value="黑色;白色"></p>
               <p>当前价格：<input value="100"></p>
               <p>封面图片：<input value="1.png"></p>
               <p>展示图片：<input value="1.png;2.png;3.png;4.png"></p>
               <p>详情页：<textarea value="html"></textarea></p>
               <button type="submit">更新</button><button>取消</button>
           </form>
       </div>-->

<#--    <table>
        <thead>
        <tr>
            <th>id</th>
            <th>商品名称</th>
            <th>收货地址</th>
            <th>收货人</th>
            <th>购买价格</th>
            <th>操作1</th>
            <th>操作2</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>1</td>
            <td><input value="男生衬衫"></td>
            <td><input value="1"></td>
            <td><input value="text.com"></td>
            <td><input value="text.com"></td>
            <td><span class="update">查看详细信息</span></td>
            <td><span class="delete">删除</span></td>
        </tr>
        </tbody>
    </table>-->

<#--     <div class="form-container">
         <form class="product-detail" name="product-detail">
             <p>id:<input value="1" name="id"></p>
             <p>商品名称：<input name="productName" value=""></p>
             <p>型号：<input value="XL;XXL"></p>
             <p>颜色：<input value="黑色;白色"></p>
             <p>评价：<input value="不错"></p>
             <p>购买价格：<input value="100"></p>
             <p>评价内容：<textarea value="很好"></textarea></p>
             <p><button type="submit">更新</button><button>取消</button></p>
         </form>
     </div>-->

</div>
</body>
<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
<script src="js/notice.js"></script>
<script src="js/manage.js"></script>
</html>