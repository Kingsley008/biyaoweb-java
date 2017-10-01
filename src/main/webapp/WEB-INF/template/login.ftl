<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>必要商城</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/login.css">
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
    <form class="login-form" method="post" action="" autocomplete="off">
        <h3>用户登录</h3>
        <i class="phone-warn"></i>
        <input class="phoneNum" placeholder="请输入手机号" data-type = "phone" autocomplete="off">
        <i class="password-warn"></i>
        <input class="password" type="password" placeholder="请输入登录密码" data-type = "password" autocomplete="off">
        <input  type="checkbox" class="autologin" id="auto-login" value="1"><label for="auto-login">下次自动登录</label>
        <button class="loginBtn" type="submit" >登 录</button>
    </form>
</div>
<!-- footer-->
<#include "./include/footer.ftl">
</body>
<script src ="js/util.js"></script>
<script type="text/javascript" src="js/md5.js"></script>
<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
<script src="js/notice.js"></script>
<script type="text/javascript" src="js/validate.js"></script>
<script>
    $.validate({
        phoneNumSelector:".phoneNum", //检查手机号码格式
        passwordSelector:".password", //检查密码格式
        secPswSelector:null, // 注册 第二次密码确认
        checkAutoLoginSelector:".autologin", // 自动登录 cookies 设置
        checkValidateSelector:null, //注册 用户协议确认
        loginBtnSelector:".loginBtn",
        loginFormSelector:".login-form"

    });
    $('.login-btn').on('click', function () {
        location.href = "/biyaoweb/login"
    });

    $('.register-btn').on('click', function () {
        location.href = "/biyaoweb/register"
    });
</script>
</html>