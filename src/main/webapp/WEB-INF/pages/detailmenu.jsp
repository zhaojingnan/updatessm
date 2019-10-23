<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set value="${pageContext.request.contextPath}" var="ctx"/>
<html>
<head>
    <title>商品详情</title>
    <link href="${ctx}/css/common.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/css/product.css" rel="stylesheet" type="text/css"/>
</head>
<body>
   <%--头部--%>
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
                <a>会员中心</a>
                |
                </li>
                <li>
                    <a>购物指南</a>
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
            <strong>15726607618</strong>
        </div>
    </div>
    <div class="span24">
        <ul class="mainNav">
            <li>
                <a href="./index.htm">首页</a>
                |
            </li>
            <li>
                <a href="${ctx}/goods/getmenu">定制套餐</a>
                |
            </li>
            <li>
                <a >安全频道</a>
                |
            </li>
            <li>
                <a>商城卡</a>
                |
            </li>
            <li>
                <a >蔬菜基地</a>
                |
            </li>
            <li>
                <a>节气养生</a>
                |
            </li>
            <li>
                <a>便民服务</a>
                |
            </li>

        </ul>
    </div>

   </div>
   <%--中部--%>
   <div class="container productContent">
       <%--左侧--%>
       <div class="span6">
           <div class="hotProductCategory">
               <c:forEach var="fuCategory" items="${category}">
                   <dl>
                       <dt>
                           <a href="#">${fuCategory.type}</a>
                       </dt>
                       <c:forEach var="ziCategory" items="${fuCategory.categoryList}">
                           <dd>
                               <a href="${ctx}/goods/getmenu?typeid=${ziCategory.id}" >${ziCategory.type}</a>
                           </dd>
                       </c:forEach>
                   </dl>
               </c:forEach>
           </div>
       </div>
           <%--右侧详情--%>
       <div class="span18 last">
           <div class="productImage">
               <a title="" style="outline-style: none; text-decoration: none;" id="zoom" href="#" rel="gallery">
                   <div class="zoomPad">
                       <img style="opacity: 1;" title="" class="medium" src="${ctx}/image/${goods.titleimage}">
                       <div style="display: block; top: 0px; left: 162px; width: 0px; height: 0px; position: absolute; border-width: 1px;" class="zoomPup"></div>
                          <div style="position: absolute; z-index: 5001; left: 312px; top: 0px; display: block;" class="zoomWindow"><div style="width: 368px;" class="zoomWrapper">
                           <div style="width: 100%; position: absolute; display: none;" class="zoomWrapperTitle"></div>
                           <div style="width: 0%; height: 0px;" class="zoomWrapperImage">
                             <img src="%E5%B0%9A%E9%83%BD%E6%AF%94%E6%8B%89%E5%A5%B3%E8%A3%852013%E5%A4%8F%E8%A3%85%E6%96%B0%E6%AC%BE%E8%95%BE%E4%B8%9D%E8%BF%9E%E8%A1%A3%E8%A3%99%20%E9%9F%A9%E7%89%88%E4%BF%AE%E8%BA%AB%E9%9B%AA%E7%BA%BA%E6%89%93%E5%BA%95%E8%A3%99%E5%AD%90%20%E6%98%A5%E6%AC%BE%20-%20Powered%20By%20Mango%20Team_files/6d53c211-2325-41ed-8696-d8fbceb1c199-large.jpg" style="position: absolute; border: 0px none; display: block; left: -432px; top: 0px;">
                           </div>
                       </div>
                       </div>
                       <div style="visibility: hidden; top: 129.5px; left: 106px; position: absolute;" class="zoomPreload">Loading zoom</div>
                   </div>
               </a>
           </div>
           <div class="name">${goods.name}</div>
           <div class="sn">
               <div>编号：${goods.id}</div>
           </div>
           <div class="info">
               <dl>
                   <dt>市场价:</dt>
                   <dd>
                       <strong>￥：${goods.marketprice}元/份</strong>
                       参 考 价：
                       <del>￥6.00元/份</del>
                   </dd>
               </dl>
               <dl>
                   <dt>促销:</dt>
                   <dd>
                       <a target="_blank" title="限时抢购 (2014-07-30 ~ 2015-01-01)">限时抢购</a>
                   </dd>
               </dl>
               <dl>
                   <dt>    </dt>
                   <dd>
                       <span>    </span>
                   </dd>
               </dl>
           </div>
           <div class="action">

               <dl class="quantity">
                   <dt>购买数量:</dt>
                   <dd>
                       <input style="width: 60px"   id="quantity" oninput='this.value=this.value.replace(/^[0]+[0-9]*$/gi,"")'   name="quantity" value="1" maxlength="4" onpaste="return false;" type="number" min="1" max="${goods.num}">

                   </dd>
                   <dd>
                       件
                   </dd>
               </dl>
               <div class="buy">
                   <input id="addCart" class="addCart" value="加入购物车" type="button">

               </div>
           </div>
           <div id="bar" class="bar">
               <ul>
                   <li id="introductionTab">
                       <a href="#introduction">商品介绍</a>
                   </li>

               </ul>
           </div>
           <div id="introduction" name="introduction" class="introduction">
               <div class="title">
                   <strong>商品介绍</strong>
               </div>
               <div>
                   ${goods.description}
               </div>
           </div>
       </div>
   </div>
   <%--尾部--%>
   <div class="container footer">
       <div class="span24">
           <div class="footerAd">
               <img src="${ctx}/image/footer.jpg" width="950" height="52" alt="我们的优势" title="我们的优势">
           </div>	</div>
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
                   <a >诚聘英才</a>
                   |
               </li>
               <li>
                   <a >法律声明</a>
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
                   <a >官网</a>
                   |
               </li>
               <li>
                   <a >论坛</a>

               </li>
           </ul>
       </div>
       <div class="span24">
           <div class="copyright">Copyright©2005-2015 网上商城 版权所有</div>
       </div>
   </div>
</body>
</html>
