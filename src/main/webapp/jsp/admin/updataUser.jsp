<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!-- 网页使用的语言 -->
<html lang="zh-CN">
<head>
    <!-- 指定字符集 -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>修改用户</title>

    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

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
<div class="container" style="width: 400px;">
    <h3 style="text-align: center;">修改联系人</h3>
    <form action="${pageContext.request.contextPath}/admin/xiugai1/${chakan2.uId}" method="post">
        <div class="form-group">
            <label for="name">真实姓名：</label>
            <input type="text" class="form-control" id="name" name="uRealName"  readonly="readonly" placeholder="${chakan2.uRealName}" />
        </div>

        <div class="form-group">
            <label for="qq">昵称：</label>
            <input type="text" class="form-control" id="ff" name="uNiCheng" placeholder="${chakan2.uNiCheng}"/>
        </div>

        <%--<div class="form-group">--%>
            <%--<label>性别：</label>--%>
            <%--<input type="radio" name="gender" value="男"  />男--%>
            <%--<input type="radio" name="gender" value="女"  />女--%>
        <%--</div>--%>

        <%--<div class="form-group">--%>
            <%--<label for="age">年龄：</label>--%>
            <%--<input type="text" class="form-control" id="age"  name="age" placeholder="请输入年龄" />--%>
        <%--</div>--%>

        <%--<div class="form-group">--%>
            <%--<label for="address">籍贯：</label>--%>
            <%--<select name="address" class="form-control" id="address" >--%>
                <%--<option value="广东">广东</option>--%>
                <%--<option value="广西">广西</option>--%>
                <%--<option value="湖南">湖南</option>--%>
            <%--</select>--%>
        <%--</div>--%>

        <div class="form-group">
            <label for="qq">QQ：</label>
            <input type="text" class="form-control" id="qq" name="uQq" placeholder="${chakan2.uQq}"/>
        </div>

        <div class="form-group">
            <label for="email">邮编：</label>
            <input type="text" class="form-control" id="email" name="uPostcode" placeholder="${chakan2.uPostcode}"/>
        </div>

        <div class="form-group">
            <label for="email">住址：</label>
            <input type="text" class="form-control" id="uAddress" name="uAddress" placeholder="${chakan2.uAddress}"/>
        </div>

        <div class="form-group">
            <label for="email">手机号：</label>
            <input type="text" class="form-control" id="uTel" name="uTel" placeholder="${chakan2.uTel}"/>
        </div>

        <div class="form-group" style="text-align: center">
            <input class="btn btn-primary" type="submit" value="提交" />
            <input class="btn btn-default" type="reset" value="重置" />
            <input id="return" class="btn btn-default" type="button" value="返回"/>
        </div>
    </form>
    <!-- 出错显示的信息框 -->
    <%--<div class="alert alert-warning alert-dismissible" role="alert">--%>
        <%--<button type="button" class="close" data-dismiss="alert" >--%>
            <%--<span>&times;</span></button>--%>
        <%--<strong>${update_msg}</strong>--%>
    <%--</div>--%>
</div>
</body>
</html>