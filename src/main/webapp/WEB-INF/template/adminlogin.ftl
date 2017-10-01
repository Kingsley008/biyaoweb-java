<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>必要后台管理系统</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/login.css">
</head>
<body>
<div class="t-body f-center">
    <form class="login-form" method="post" action="" autocomplete="off">
        <h3>管理员登录</h3>
        <i class="phone-warn"></i>
        <input class="userName" placeholder="请输入用户名" data-type = "phone" autocomplete="off">
        <i class="password-warn"></i>
        <input class="password" type="password" placeholder="请输入登录密码" data-type = "password" autocomplete="off">
        <button class="loginBtn" type="submit" >登 录</button>
    </form>
</div>
</body>
<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
<script src="js/md5.js"></script>
<script>
    $('.login-form').on('submit', function (e) {
        e.preventDefault();
        var data = {
            userName : $('.userName').val(),
            password: md5($('.password').val())
        };
        $.ajax({
            url: '/biyaoweb/admin',
            data: data,
            type: 'POST',
            success: function (data) {
                if (data.result && data.type == 1) {
                    location.href = '/biyaoweb/manage'
                }
            }
        })
    })
</script>
</html>