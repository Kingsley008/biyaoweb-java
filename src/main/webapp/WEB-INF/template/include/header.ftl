<!-- 顶部栏 -->
<div id="top" class="t-header">
    <div class="t-header-center f-tac">
        <ul class="header-nav">
            <li class="header-nav-item"><a href="/biyaoweb/index">首页</a><b class="hr-v"></b></li>
            <li class="header-nav-item"><a href="">平台政策</a><b class="hr-v"></b></li>
            <li class="header-nav-item"><a href="">商家入驻</a></li>
        </ul>
        <ul class="header-user">
            <li class="header-user-item login"><a href="/biyaoweb/login" id="loginBtn">登录</a></li>
            <li class="header-user-item regist"><a href="/biyaoweb/register" id="registBtn">注册</a><b class="hr-v"></b></li>
            <li class="header-user-item user-center"><a href="javascript:void(0)" id="username">用户中心</a><b
                    class="hr-v"></b>
                <div class="user-center-drop">
                    <b class="drop-icon"></b>
                    <ul>
                        <li><a href="" target="_blank">我的订单</a></li>
                        <li><a href="" target="_blank">个人中心</a></li>
                        <li><a href="">退出登录</a></li>
                    </ul>
                </div>
            </li>
            <li class="header-user-item user-app"><a href="">下载必要APP</a><b class="hr-v"></b>
                <div class="user-app-drop">
                    <b class="drop-icon"></b>
                    <dl>
                        <dt>
                        <p>我要的 才是必要的</p></dt>
                        <dd>
                            <span></span>
                        </dd>
                    </dl>
                </div>
            </li>
            <li class="header-user-item user-message"><a href=""><#if !user.trueName >游客， 你好<#else >${user.trueName},你好</#if><span class="message-num"></span></a></li>
            <li class="header-user-item user-shopCar"><a href="">购物车<span class="shopCar-num">0</span></a></li>
        </ul>
    </div>
</div>