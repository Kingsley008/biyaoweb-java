<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>必要商城</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/reg.css">
</head>
<body>
<!-- 导航 -->
<div class="t-nav">
    <div class="t-nav-center f-cb">
        <div class="nav-logo"><a href="/biyaoweb/index"></a></div>
        <div class="nav-right">
            <p class="f-cb">
                欢迎来到必要，请
                <span class="login-btn">登入</span>
                <i>|</i>
                <span class="register-btn">注册</span>
            </p>
        </div>
    </div>
</div>
<div class="t-body f-center">
    <form class="reg-form" method="post" action="">
        <h3>新用户注册</h3>
        <i class="phone-warn"></i>
        <input class="phoneNum" placeholder="请输入手机号">
        <i class="password-warn"></i>
        <input class="password" type="password" placeholder="6-16位字符加数字的密码">
        <i class="password-warn"></i>
        <input class="secPassword" type="password" placeholder="请再次输入密码">
        <input class="address" placeholder="请输入默认配送地址">
        <input class="trueName" placeholder="请输入默认收件人姓名">
        <input type="checkbox" id="check-server"><label for='check-server'>我已经阅读并同意<a>服务协议</a></label>
        <button class="regBtn" type="submit">注 册</button>
    </form>
</div>
<!-- footer-->
<#include "./include/footer.ftl">
</body>
<script type="text/javascript" src="js/md5.js"></script>
<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
<script src="js/notice.js"></script>
<script src="js/validate.js"></script>
<script>
    var reg = $.validate({
        phoneNumSelector:".phoneNum", //检查手机号码格式
        passwordSelector:".password", //检查密码格式
        addressSelector:'.address',   //得到用户的送货地址
        secPswSelector:'.secPassword', // 注册 第二次密码确认
        checkAutoLoginSelector:null, // 自动登录 cookies 设置
        checkValidateSelector:'#check-server', //注册 用户协议确认
        loginBtnSelector:'.regBtn',
        regFormSelector:'.reg-form',
        trueNameSelector:'.trueName'
    });

    $('.login-btn').on('click', function () {
        location.href = "/biyaoweb/login"
    });

    $('.register-btn').on('click', function () {
        location.href = "/biyaoweb/register"
    });
</script>
</html>