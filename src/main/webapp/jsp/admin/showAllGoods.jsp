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
    <h3 align="center" style="margin-bottom: 50px;">全部商品</h3>
    <div class="container">
        <c:forEach items="${ggg}" var="goods">
            <dl class="good">
                <dt><a href="${pageContext.request.contextPath}/admin/oneGood?gId=${goods.gId}"><img src="${goods.gImage}"></a></dt>
                <dd>
                    <span>${goods.gPrice}</span>
                    <p style="margin-left: 10px;"><a href="#">${goods.gName}</a></p>
                    <%--<button type="submit" onclick="getId(${goods.gId})">购买</button>--%>
                </dd>
            </dl>
        </c:forEach>
    </div>
</div>
</body>
</html>
<%--<script type="text/javascript">--%>
<%--function getId(data) {--%>
    <%--console.log(data);--%>
    <%--window.location.href="${pageContext.request.contextPath}/admin/buy?gid="+data;--%>
<%--}--%>
<%--</script>--%>