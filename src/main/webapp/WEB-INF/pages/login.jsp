<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set value="${pageContext.request.contextPath}" var="ctx"/>
<html>
<head>
    <title>用户登录</title>
    <link href="${ctx}/css/common.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/css/register.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/css/login.css" rel="stylesheet" type="text/css"/>
    <script src="${ctx}/js/jquery-3.4.1.js"></script>
</head>
<body>
<div class="container header">
    <div class="span5">
        <div class="logo">
            <a href="#">
                <img src="${ctx}/image/logo.png" alt="">
            </a>
        </div>
    </div>
    <div class="span9">
        <div class="headerAd">
            <img src="${ctx}/image/header.jpg" width="320" height="50" alt="正品保障" title="正品保障">
        </div>
    </div>
    <div class="span10 last">
        <div class="topNav clearfix">
            <ul>
                <c:if test="${user==null}">
                    <li id="headerLogin" class="headerLogin" style="display: list-item;">
                        <a href="${ctx}/iuser/tologin">登录</a>|
                    </li>
                </c:if>
                <c:if test="${user!=null}">
                    <li id="headerLogin" class="headerLogin" style="display: list-item;">
                        <font color="red">欢迎:${user.username}</font>|
                    </li>
                </c:if>
                <li id="headerLogout" class="headerLogout" style="display: list-item;">
                    <a href="${ctx}/iuser/loginout">[退出]</a>|
                </li>
                <c:if test="${user==null}">
                    <li id="headerRegister" class="headerRegister" style="display: list-item;">
                        <a href="${ctx}/iuser/toregister">注册</a>|
                    </li>
                </c:if>

                <li id="headerUsername" class="headerUsername"></li>
                <li>
                    <a >会员中心</a>
                    |
                </li>
                <li>
                    <a >购物指南</a>
                    |
                </li>
                <li>
                    <a>关于我们</a>

                </li>
            </ul>
        </div>
        <div class="cart">
            <a href="./购物车.htm">购物车</a>
        </div>
        <div class="phone">
            客服热线:
            <strong>96008/53277764</strong>
        </div>
    </div>
    <div class="span24">
        <ul class="mainNav">
            <li>
                <a href="./index.htm">首页</a>
                |
            </li>
            <li>
                <a href="./蔬菜分类.htm">定制套餐</a>
                |
            </li>
            <li>
                <a >安全频道</a>
                |
            </li>
            <li>
                <a >亿家卡</a>
                |
            </li>
            <li>
                <a >蔬菜基地</a>
                |
            </li>
            <li>
                <a >节气养生</a>
                |
            </li>
            <li>
                <a>便民服务</a>
                |
            </li>

        </ul>
    </div>

</div>	<div class="container login">
    <div class="span12">
        <div class="ad">
            <img src="${ctx}/image/login.jpg" width="500" height="330" alt="会员登录" title="会员登录">
        </div>
    </div>
    <div class="span12 last">
        <div class="wrap">
            <div class="main">
                <div class="title">
                    <strong>会员登录-用户登录</strong>USER LOGIN
                </div>
                <form id="loginForm" action="${ctx}/iuser/userLogin"  method="post" novalidate="novalidate" onsubmit="return checkForm()">
                    <table>
                        <tbody>
                        <tr>
                            <th width="130px">
                                用户名/邮箱:
                            </th>
                            <td>
                                <input type="text" id="username" value="${cookie.username.value}" name="username" class="text" maxlength="20">
                                 <span id="span1"></span>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                密&nbsp;&nbsp;码:
                            </th>
                            <td>
                                <input type="password" id="password" value="${cookie.password.value}" name="password" class="text" maxlength="20" autocomplete="off">
                                <span id="span2"></span>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                验证码:
                            </th>
                            <td>
                                <span class="fieldSet">
                                    <input type="text" id="checkcode" name="checkcode" class="text captcha" maxlength="4" autocomplete="off">
                                    <img id="imgcode" class="captchaImage" src="${ctx}/iuser/checkCode" title="点击更新验证码" onclick="change()">
                                    <span id="span3"></span>


                                </span>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                &nbsp;
                            </th>
                            <td>
                                <label>
                                    <input type="checkbox" id="isRememberUsername" name="isRememberUsername" value="1" ${member==1? 'checked':''}>记住用户名
                                </label>
                                <label>
                                    &nbsp;&nbsp;<a >找回密码</a>
                                </label>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                &nbsp;
                            </th>
                            <td>
                                <input type="submit" class="submit" value="登 录">
                                <font color="red">${msg}</font>
                            </td>
                        </tr>
                        <tr class="register">
                            <th>
                                &nbsp;
                            </th>
                            <td>
                                <dl>
                                    <dt>还没有注册账号？</dt>
                                    <dd>
                                        立即注册即可体验在线购物！
                                        <a href="${ctx}/iuser/toregister">立即注册</a>
                                    </dd>
                                </dl>
                            </td>
                        </tr>
                        </tbody></table>
                </form>
            </div>
        </div>
    </div>
</div>
<div class="container footer">
    <div class="span24">
        <div class="footerAd"><img src="${ctx}/image/footer.jpg" width="950" height="52" alt="我们的优势" title="我们的优势" /></div>
    </div>
    <div class="span24">
        <ul class="bottomNav">
            <li>
                <a >关于我们</a>
                |
            </li>
            <li>
                <a>联系我们</a>
                |
            </li>
            <li>
                <a>招贤纳士</a>
                |
            </li>
            <li>
                <a>法律声明</a>
                |
            </li>
            <li>
                <a>友情链接</a>
                |
            </li>
            <li>
                <a target="_blank">支付方式</a>
                |
            </li>
            <li>
                <a  target="_blank">配送方式</a>
                |
            </li>
            <li>
                <a>服务声明</a>
                |
            </li>
            <li>
                <a>广告声明</a>

            </li>
        </ul>
    </div>
    <div class="span24">
        <div class="copyright">Copyright © 2005-2015 网上商城 版权所有</div>
    </div>
</div>
</body>
<script>
    var usernameflag=false;
    var passwordflag=false;
    var checkcodeflag=false;
    $(function () {
        //校验用户名
        $("#username").blur(function () {
            var val = $("#username").val();
            var span1 = $("#span1");
            if(val==null || val==""){
                span1.css("color","red");
                span1.css("font-size","13px")
                span1.html("用户名或邮箱不能为空")
                usernameflag=false;
            }else {
                span1.css("color","green");
                span1.css("font-size","13px")
                span1.html("格式正确")
                usernameflag=true;
            }
        });
        //校验密码
        $("#password").blur(function () {
            var val = $("#password").val();
            var span2 = $("#span2");
            if(val==null || val==""){
                alert("密码不能为空")
                // span2.css("color","red");
                // span2.css("font-size","13px")
                // span2.html("密码不能为空")
                passwordflag=false;
            }else {
                span2.css("color","green");
                span2.css("font-size","13px")
                span2.html("格式正确")
                passwordflag=true;
            }
        });
        //校验验证码
        $("#checkcode").blur(function () {
            var val = $("#checkcode").val();
            var span3 = $("#span3");
            if(val==null || val==""){
                alert("验证码不能为空")
                // span3.css("color","red");
                // span3.css("font-size","13px")
                // span3.html("验证码不能为空")
                checkcodeflag=false;
            }else {
                checkcodeflag=true;
            }
        });
        $("#checkcode").focus(function () {
            $("#msg").hide;
        });
    });
    function change(){
        var date=new Date().getTime();
        document.getElementById("imgcode").src="${ctx}/iuser/checkCode?"+date;
    }
    function checkForm() {
        return usernameflag&&passwordflag&&checkcodeflag;

    }
</script>
</html>
