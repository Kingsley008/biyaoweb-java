<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>必要</title>
    <style>
        body {
            text-align: center;
        }
        .btn-back {
            cursor: pointer;
            color: #503768;
        }
    </style>
</head>
<body>
<h1>页面还在装修中，请稍后访问...<span class="btn-back">回到主页</span></h1>
    <img src="imgs/404.jpg" alt="">
</body>

<script>
    var btn = document.querySelector('.btn-back');
    btn.addEventListener('click', function (e) {
        e.preventDefault();
        location.href = '/biyaoweb/index';
    });

</script>
</html>