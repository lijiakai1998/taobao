<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员首页</title>
    <style type="text/css">
        .box{
            width:150px;
            height:50px;
            border:2px solid #ff500f;
            background-color: #ff6d12;
            padding:30px;
            margin:30px auto;
        }
    </style>
</head>
<frameset rows="75, *" cols="*" frameborder="no">
    <frame src="${pageContext.request.contextPath}/admin/top" name="title" scrolling="no" noresize="noresize">
    <frameset cols="275, *">
        <frame src="${pageContext.request.contextPath}/admin/left" name="tree" noresize="no">
        <frame name="main" noresize="noresize">
    </frameset>
</frameset>
<body>
<%--
<div class="box"><span style="color: #fff878; font-family: 楷体;font-size: xx-large;"><a href="${pageContext.request.contextPath}/admin/userList">管理客户</a> </span></div>
<div class="box"><span style="color: #fff878; font-family: 楷体;font-size: xx-large;"><a href="../../jsp/admin/shangPinGuanLi.jsp">管理商品</a></span></div>
<div class="box"><span style="color: #fff878; font-family: 楷体;font-size: xx-large;"><a href="../../jsp/liuYan/tiaoZhuan.jsp">管理评论</a></span></div>
<div class="box"><span style="color: #fff878; font-family: 楷体;font-size: xx-large;"><a href="../../jsp/userLoginAndRegist/login.jsp">返回</a></span></div>
--%>
</body>
</html>
