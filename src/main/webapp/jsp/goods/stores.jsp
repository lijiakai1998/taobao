<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" />
    <script src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <link href="${pageContext.request.contextPath}/css/showGoods.css" rel="stylesheet" />
</head>
<body>
<div class="container-fluid">
    <h3 align="center" style="margin-bottom: 50px;">店铺</h3>
    <div class="container">
        <c:forEach items="${stores}" var="store">
            <a href="${pageContext.request.contextPath}/goods/selGoodByStore?gStore=${store}">${store}</a>
        </c:forEach>
    </div>
</div>
</body>
</html>
