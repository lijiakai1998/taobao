<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- HTML5文档-->
<!DOCTYPE html>
<!-- 网页使用的语言 -->
<html lang="zh-CN">
<head>
    <!-- 指定字符集 -->
    <meta charset="utf-8">
    <!-- 使用Edge最新的浏览器的渲染方式 -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- viewport视口：网页可以根据设置的宽度自动进行适配，在浏览器的内部虚拟一个容器，容器的宽度与设备的宽度相同。
    width: 默认宽度与设备的宽度相同
    initial-scale: 初始的缩放比，为1:1 -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>添加用户</title>

    <!-- 1. 导入CSS的全局样式 -->
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <!-- 2. jQuery导入，建议使用1.9以上的版本 -->
    <script src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
    <!-- 3. 导入bootstrap的js文件 -->
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <!-- 4. 设置返回键 -->
    <script>
        window.onload = function () {
            var btn = document.getElementById("return");
            //给btn返回按钮加上点击事件，返回list.jsp
            btn.onclick = function () {
                //window.history.back(-1);
                location.href = "${pageContext.request.contextPath}/admin/userList";
            }
        }
    </script>
</head>
<body>
<div class="container">
    <center><h3>添加联系人页面</h3></center>
    <form action="${pageContext.request.contextPath}/admin/userAdd" method="post">
        <div class="form-group">
            <label for="name">昵称：</label>
            <input type="text" class="form-control" id="name" name="uNiCheng" placeholder="请输入昵称">
        </div>

        <div class="form-group">
            <label for="name">密码：</label>
            <input type="text" class="form-control" id="uPassword" name="uPassword" placeholder="请输入密码">
        </div>

        <div class="form-group">
            <label for="name">真实姓名：</label>
            <input type="text" class="form-control" id="uRealName" name="uRealName" placeholder="请输入真实姓名">
        </div>


        <div class="form-group">
            <label>性别：</label>
            <input type="radio" name="uSex" value="男" checked="checked"/>男
            <input type="radio" name="uSex" value="女"/>女
        </div>

        <div class="form-group">
            <label for="age">qq：</label>
            <input type="text" class="form-control" id="uQq" name="uQq" placeholder="请输入qq">
        </div>


        <div class="form-group">
            <label for="age">住址：</label>
            <input type="text" class="form-control" id="age" name="uAddress" placeholder="请输入家庭住址">
        </div>


        <div class="form-group">
            <label for="qq">邮编：</label>
            <input id="qq" type="text" class="form-control" name="uPostcode" placeholder="请输入邮编"/>
        </div>

        <div class="form-group">
            <label for="email">电话：</label>
            <input id="email" type="text" class="form-control" name="uTel" placeholder="请输入电话"/>
        </div>

        <div class="form-group" style="text-align: center">
            <input class="btn btn-primary" type="submit" value="提交" />
            <input class="btn btn-default" type="reset" value="重置" />
            <input id="return" class="btn btn-default" type="button" value="返回" />
        </div>
    </form>
    <!-- 出错显示的信息框 -->
    <%--<div class="alert alert-warning alert-dismissible" role="alert">--%>
        <%--<button type="button" class="close" data-dismiss="alert" >--%>
            <%--<span>&times;</span></button>--%>
        <%--<strong>${add_msg}</strong>--%>
    <%--</div>--%>
</div>
</body>
</html>
