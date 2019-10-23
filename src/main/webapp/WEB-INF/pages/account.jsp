<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set value="${pageContext.request.contextPath}" var="ctx"/>
<html>
    <head>
        <title>Title</title>
        <%--引入jquery--%>
        <script src="${pageContext.request.contextPath}/js/jquery-3.4.1.js"></script>
        <%--引入bootstrap的css全局样式--%>
        <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <%--引入bootstrap的js插件--%>
        <script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
    </head>
    <body>
    <div class="container">
        <%--第一行 标题--%>
        <div class="row">
            <div class="col-md-12">
                <h1>SSM-CRUD</h1>
            </div>
        </div>
            <%--第二行 增加 删除 按钮--%>
            <div class="row">
                <div class="col-md-4 col-md-offset-10">
                    <button class="btn btn-success">新增</button>
                    <button class="btn btn-danger">删除</button>
                </div>
            </div>
            <%--第三行 表格--%>
            <div class="row">
                <div class="col-md-12">
                    <table class="table table-hover table-bordered">
                        <thead>
                        <tr>
                            <th>#</th>
                            <th>用户名</th>
                            <th>性别</th>
                            <th>账户金额</th>
                            <th>地址</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="obj" items="${page.list}">
                            <tr>
                                <td>${obj.id}</td>
                                <td>${obj.user.username}</td>
                                <td>${obj.user.sex}</td>
                                <td>${obj.money}</td>
                                <td>${obj.user.address}</td>
                                <td>
                                    <button class="btn btn-info btn-sm">
                                        <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
                                        编辑
                                    </button>
                                    <button class="btn btn-danger btn-sm">
                                        <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
                                        删除
                                    </button>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
            <%--第四行 底部导航栏--%>
            <div class="row">
                <%--页面信息--%>
                <div class="col-md-6">
                    当前第 <span class="label label-default">${page.pageNum}</span> 页，
                    共 <span class="label label-default">${page.pages}</span> 页，
                    共 <span class="label label-default">${page.total}</span> 条记录
                </div>
                <%--页面导航--%>
                <div class="col-md-6">
                    <nav aria-label="Page navigation">
                        <ul class="pagination">
                            <%--当前页是第一页--%>
                            <c:if test="${page.isFirstPage == true}">
                                <li><a href="#">首页</a></li>
                            </c:if>
                            <c:if test="${page.isFirstPage == false}">
                                <li><a href="${ctx}/account/list?pn=1">首页</a></li>
                            </c:if>
                            <%--如果有上一页，则显示下一页符号，并设置跳转参数--%>
                            <c:if test="${page.hasPreviousPage == true}">
                                <li>
                                    <a href="${ctx}/account/list?pn=${page.pageNum-1}" aria-label="Previous">
                                        <span aria-hidden="true">&laquo;</span>
                                    </a>
                                </li>
                            </c:if>
                            <%--遍历导航页号--%>
                            <c:forEach var="num" items="${page.navigatepageNums}">
                                <%--遍历到当前页号，则不能点击，且高亮显示--%>
                                <c:if test="${page.pageNum == num}">
                                    <li class="active"><a href="#">${num}</a></li>
                                </c:if>
                                <%--遍历到其他页号，则跳转查询相应页信息--%>
                                <c:if test="${page.pageNum != num}">
                                    <li><a href="${ctx}/account/list?pn=${num}">${num}</a></li>
                                </c:if>
                            </c:forEach>
                            <%--如果有下一页，则显示下一页符号，并设置跳转参数--%>
                            <c:if test="${page.hasNextPage == true}">
                                <li>
                                    <a href="${ctx}/account/list?pn=${page.pageNum+1}" aria-label="Next">
                                        <span aria-hidden="true">&raquo;</span>
                                    </a>
                                </li>
                            </c:if>
                            <%--当前页是第最后一页--%>
                            <c:if test="${page.isLastPage == true}">
                                <li><a href="#">尾页</a></li>
                            </c:if>
                            <c:if test="${page.isLastPage == false}">
                                <li><a href="${ctx}/account/list?pn=${page.pages}">尾页</a></li>
                            </c:if>
                        </ul>
                    </nav>
                </div>
            </div>
    </div>
    </body>
</html>
