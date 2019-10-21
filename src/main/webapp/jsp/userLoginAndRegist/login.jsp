<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户登录</title>
    <link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet">
    <link href="//at.alicdn.com/t/font_934673_bmwpjs3nh3h.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
    <script src="${pageContext.request.contextPath}/js/rain.js" type="text/javascript"></script>
    <link href="${pageContext.request.contextPath}/css/login.css" rel="stylesheet">
</head>
<body>
<canvas class="rain" id="rain"></canvas>
<div class="container login">
        <h3 align="center" style="margin-top: 75px;">用户登录</h3>
        <form class="form-horizontal login_form" id="login_form" action="${pageContext.request.contextPath}/userLoginServlet" method="post">
            <div class="form-group" align="center">
                <label class="font">
                    <span class="iconfont icon-yonghu2"></span>
                </label>
                <input class="txt" type="text" name="uNiCheng">
            </div>
            <div class="form-group" align="center">
                <label class="font">
                    <span class="iconfont icon-suo"></span>
                </label>
                <input class="txt" type="password" name="uPassword">
            </div>
            <div class="form-group" style="text-align: center;">
                <div>
                    <input class="btn btn-primary regist_btn" id="login_btn" type="submit" value="登录">
                    <%--<span style="position: absolute; color: red;" id="login_span">${login_msg}</span>--%>
                    <c:if test="${sessionScope.get('name')!=null}">
                        <span style="position: absolute; color: red;" id="login_span">用户名或者密码错误！</span>
                    </c:if>
                    <c:if test="${sessionScope.get('name')==null}">
                        <span style="position: absolute; color: red;" id="login_span">${sessionScope.get('xinxi')}</span>
                    </c:if>
                    <p style="margin-top: 10px;">还没账户？前往<a href="${pageContext.request.contextPath}/jsp/userLoginAndRegist/regist.jsp">注册</a></p>
                    <p style="position: absolute;right: 10px;bottom: 20px;cursor: pointer;"><a href="${pageContext.request.contextPath}/jsp/admin/adminLogin.jsp">管理员登录</a></p>
                </div>
            </div>
        </form>
    </div>
</body>
</html>
