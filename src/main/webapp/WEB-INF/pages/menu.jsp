<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set value="${pageContext.request.contextPath}" var="ctx"/>
<html>
<head>
    <title>定制套餐</title>
    <link href="${ctx}/css/common.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/css/product.css" rel="stylesheet" type="text/css"/>
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
<div class="container productList">
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
    <div class="span18 last">
        <form id="productForm" action="./image/蔬菜 - Powered By Mango Team.htm" method="get">
            <input type="hidden" id="brandId" name="brandId" value="">
            <input type="hidden" id="promotionId" name="promotionId" value="">
            <input type="hidden" id="orderType" name="orderType" value="">
            <input type="hidden" id="pageNumber" name="pageNumber" value="1">
            <input type="hidden" id="pageSize" name="pageSize" value="20">

            <div id="result" class="result table clearfix">
                <ul>
                    <c:forEach items="${pageInfo.list}" var="goods">
                    <li>
                        <a href="${ctx}/goods/getdetail?id=${goods.id}">
                            <img src="${ctx}/image/${goods.titleimage}" width="170" height="170"  style="display: inline-block;">
                            <span style='color:green'>${goods.name}</span>
                            <span class="price">商城价:￥${goods.estoreprice}/份</span>
                        </a>
                    </li>
                    </c:forEach>
                </ul>
            </div>
            <div class="pagination">
                <c:if test="${pageInfo.isFirstPage == true}">
                    <a href="#" class="firstPage"></a>
                </c:if>
                <c:if test="${pageInfo.isFirstPage == false}">
                    <a href="${ctx}/goods/getmenu?pageNum=1&typeid=${typeid}" class="firstPage">&nbsp;</a>
                </c:if>
                <c:if test="${pageInfo.hasPreviousPage == true}">
                    <a class="previousPage" href="${ctx}/goods/getmenu?pageNum=${pageInfo.pageNum-1}&typeid=${typeid}" >
                    </a>
                </c:if>
                <c:forEach var="num" items="${pageInfo.navigatepageNums}">
                    <%--遍历到当前页号，则不能点击，且高亮显示--%>
                    <c:if test="${pageInfo.pageNum == num}">
                       <a style="background: #2c64b1" class="currentPage" href="#">${num}</a>
                    </c:if>
                    <%--遍历到其他页号，则跳转查询相应页信息--%>
                    <c:if test="${pageInfo.pageNum != num}">
                        <a class="currentPage" href="${ctx}/goods/getmenu?pageNum=${num}&typeid=${typeid}">${num}</a>
                    </c:if>
                </c:forEach>
                <%--如果有下一页，则显示下一页符号，并设置跳转参数--%>
                <c:if test="${pageInfo.hasNextPage == true}">
                        <a class="nextPage" href="${ctx}/goods/getmenu?pageNum=${pageInfo.pageNum+1}&typeid=${typeid}" >
                        </a>

                </c:if>
                <%--判断是否为尾页--%>
                <c:if test="${pageInfo.isLastPage == true}">
                   <a class="lastPage" href="#">&nbsp;</a>
                </c:if>
                <c:if test="${pageInfo.isLastPage == false}">
                    <a class="lastPage" href="${ctx}/goods/getmenu?pageNum=${pageInfo.pages}&typeid=${typeid}">&nbsp;</a>
                </c:if>

            </div>
        </form>
    </div>
</div>
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
