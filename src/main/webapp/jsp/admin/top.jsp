<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        body{
            margin: 0;
            padding: 0;
        }
        .top{
            height: 75px;
            width: 100%;
            background: linear-gradient(45deg, #1b6d85, #00F7DE);
        }
        .top_msg{
            float: right;
            height: 75px;
        }
    </style>
</head>
<body>
    <div class="top">
        <h2 style="float: left; margin-left: 10px;">微淘后台管理系统</h2>
        <div class="top_msg">
            <p>当前管理员：${admin.dName}<a style="margin: 0 10px 0 10px;" href="${pageContext.request.contextPath}/admin/exit" target="_parent">安全退出</a></p>
        </div>
    </div>
</body>
</html>
