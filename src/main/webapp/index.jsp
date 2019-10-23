<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set value="${pageContext.request.contextPath}" var="ctx"/>
<html>
<head>
    <title>商城首页</title>
    <link href="${ctx}/css/slider.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/css/common.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/css/index.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<div class="container header">
    <div class="span5">
        <div class="logo">
            <a href="${ctx}/index.jsp">
                <img src="${pageContext.request.contextPath}/image/logo.png" alt="">
            </a>
        </div>
    </div>
    <div class="span9">
        <div class="headerAd">
            <img src="${ctx}/image/header.jpg" width="320" height="50" alt="正品保障" title="正品保障"/>
        </div>	</div>
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
                <li><a>会员中心</a>|</li>
                <li><a>购物指南</a>|</li>
                <li><a>关于我们</a>
                </li>
            </ul>
        </div>
        <div class="cart">
            <a  href="./购物车.htm">购物车</a>
        </div>
        <div class="phone">
            客服热线:
            <strong>96008/53277764</strong>
        </div>
    </div>
    <div class="span24">
        <ul class="mainNav">
            <li><a href="./index.htm">首页</a>|</li>
            <li><a href="${ctx}/goods/getmenu">定制套餐</a>|</li>
            <li><a >安全频道</a>|</li>
            <li><a>商城卡</a>|</li>
            <li><a>蔬菜基地</a>|</li>
            <li><a>节气养生</a>|</li>
            <li><a>便民服务</a>|</li>
        </ul>
    </div>


</div>

<div class="container index">
    <div class="span24">
        <div id="hotProduct" class="hotProduct clearfix">
            <div class="title">
                <strong>热门商品</strong>
                <!-- <a  target="_blank"></a> -->
            </div>
            <ul class="tab">
                <li class="current">
                    <a href="./蔬菜分类.htm?tagIds=1" target="_blank"></a>
                </li>
                <li>
                    <a  target="_blank"></a>
                </li>
                <li>
                    <a target="_blank"></a>
                </li>
            </ul>
            <!-- 					<div class="hotProductAd">
                        <img src="./image/a.jpg" width="260" height="343" alt="热门商品" title="热门商品">
            </div> -->
            <ul class="tabContent" style="display: block;">
                <li>
                    <a target="_blank"><img src="./image/b.jpg" data-original="http://storage.shopxx.net/demo-image/3.0/201301/0ff130db-0a1b-4b8d-a918-ed9016317009-thumbnail.jpg" style="display: block;"></a>
                </li>
                <li>
                    <a  target="_blank"><img src="./image/c.jpg" data-original="http://storage.shopxx.net/demo-image/3.0/201301/51afeef5-f6cb-4936-abea-315cfca0edc0-thumbnail.jpg" style="display: block;"></a>
                </li>
                <li>
                    <a  target="_blank"><img src="./image/d.jpg" style="display: block;"></a>
                </li>
                <li>
                    <a  target="_blank"><img src="./image/e.jpg" style="display: block;"></a>
                </li>
                <li>
                    <a target="_blank"><img src="./image/f.jpg" style="display: block;"></a>
                </li>
                <li>
                    <a  target="_blank"><img src="./image/g.jpg" style="display: block;"></a>
                </li>
                <li>
                    <a  target="_blank"><img src="./image/h.jpg" style="display: block;"></a>
                </li>
                <li>
                    <a target="_blank"><img src="./image/i.jpg" style="display: block;"></a>
                </li>
                <li>
                    <a target="_blank"><img src="./image/i.jpg" style="display: block;"></a>
                </li>
                <li>
                    <a target="_blank"><img src="./image/i.jpg" style="display: block;"></a>
                </li>
            </ul>


        </div>
    </div>
    <div class="span24">
        <div id="newProduct" class="newProduct clearfix">
            <div class="title">
                <strong>最新商品</strong>
                <a  target="_blank"></a>
            </div>
            <ul class="tab">
                <li class="current">
                    <a href="./蔬菜分类.htm?tagIds=2" target="_blank"></a>
                </li>
                <li>
                    <a  target="_blank"></a>
                </li>
                <li>
                    <a target="_blank"></a>
                </li>
            </ul>
            <!-- 					<div class="newProductAd">
                                                <img src="./image/q.jpg" width="260" height="343" alt="最新商品" title="最新商品">
                                    </div>
                                     -->
            <ul class="tabContent" style="display: block;">
                <li>
                    <a  target="_blank"><img src="./image/l.jpg" data-original="http://storage.shopxx.net/demo-image/3.0/201301/4a51167a-89d5-4710-aca2-7c76edc355b8-thumbnail.jpg" style="display: block;"></a>									</li>
                <li>
                    <a  target="_blank"><img src="./image/m.jpg" style="display: block;"></a>									</li>

                <li>
                    <a target="_blank"><img src="./image/n.jpg" style="display: block;"></a>									</li>
                <li>
                    <a target="_blank"><img src="./image/o.jpg" style="display: block;"></a>									</li>
                <li>
                    <a target="_blank"><img src="./image/p.jpg" style="display: block;"></a>									</li>
                <li>
                    <a target="_blank"><img src="./image/m.jpg" style="display: block;"></a>									</li>
                <li>
                    <a  target="_blank"><img src="./image/15.jpg" style="display: block;"></a>
                <li>
                    <a  target="_blank"><img src="./image/l.jpg" data-original="http://storage.shopxx.net/demo-image/3.0/201301/b499fb5e-999f-431b-a375-172ee09e4a3e-thumbnail.jpg" style="display: block;" /></a>
                </li>
                <li>
                    <a  target="_blank"><img src="./image/l.jpg" data-original="http://storage.shopxx.net/demo-image/3.0/201301/b499fb5e-999f-431b-a375-172ee09e4a3e-thumbnail.jpg" style="display: block;" /></a>
                </li>
                <li>
                    <a  target="_blank"><img src="./image/l.jpg" data-original="http://storage.shopxx.net/demo-image/3.0/201301/b499fb5e-999f-431b-a375-172ee09e4a3e-thumbnail.jpg" style="display: block;" /></a>
                </li>
            </ul>

        </div>
    </div>
    <div class="span24">
        <div class="friendLink">
            <dl>
                <dt>新手指南</dt>
                <dd>
                    <a  target="_blank">支付方式</a>
                    |
                </dd>
                <dd>
                    <a  target="_blank">配送方式</a>
                    |
                </dd>
                <dd>
                    <a  target="_blank">售后服务</a>
                    |
                </dd>
                <dd>
                    <a  target="_blank">购物帮助</a>
                    |
                </dd>
                <dd>
                    <a  target="_blank">蔬菜卡</a>
                    |
                </dd>
                <dd>
                    <a  target="_blank">礼品卡</a>
                    |
                </dd>
                <dd>
                    <a target="_blank">银联卡</a>
                    |
                </dd>
                <dd>
                    <a  target="_blank">亿家卡</a>
                    |
                </dd>

                <dd class="more">
                    <a >更多</a>
                </dd>
            </dl>
        </div>
    </div>
</div>
<div class="container footer">
    <div class="span24">
        <div class="footerAd">
            <img src="./image/footer.jpg" width="950" height="52" alt="我们的优势" title="我们的优势">
        </div>	</div>
    <div class="span24">
        <ul class="bottomNav">
            <li>
                <a>关于我们</a>
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
                <a target="_blank">配送方式</a>
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
</html>
