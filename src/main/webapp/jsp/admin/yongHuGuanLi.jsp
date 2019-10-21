<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title>用户信息管理系统</title>

    <!-- 1. 导入CSS的全局样式 -->
    <link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet">
    <!-- 2. jQuery导入，建议使用1.9以上的版本 -->
    <script src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
    <!-- 3. 导入bootstrap的js文件 -->
    <script src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
    <style type="text/css">
        td, th {
            text-align: center;
        }
    </style>
    <script type="text/javascript">
        function delete1(data) {
            if (confirm("您确定要删除该用户吗？")) {
                window.location.href="${pageContext.request.contextPath}/admin/shanChu1/"+data;
            }
        }
                 function delSelected() {
                var flag = false;
                var form = document.getElementById("form");
                if (confirm("您确定要删除选中用户信息吗？")){
                    var cbs = document.getElementsByName("uid");
                    for (var i = 0; i < cbs.length; i++) {
                        if (cbs[i].checked) {
                            flag = true;
                        }
                    }
                    if (flag){
                        //表单的提交
                        form.submit();
                    }
                }

        }
        window.onload = function () {
            document.getElementById("checkAll").onclick = function () {
                var cbs = document.getElementsByName("uid");
                for (var i = 0; i < cbs.length; i++) {
                    cbs[i].checked = this.checked;
                }
            }
        }

    </script>
</head>
<body>
<div class="container">
    <h3 style="text-align: center">用户信息列表</h3>
    <div style="float: left;">
        <form class="form-inline" action="${pageContext.request.contextPath}/admin/selectByTian" method="post">
            <div class="form-group">
                <label for="exampleInputName2">昵称</label>
                <input type="text" name="uNiCheng"  class="form-control" id="exampleInputName2">
            </div>
            <div class="form-group">
                <label for="exampleInputAddress2">住址</label>
                <input type="text" name="uAddress"  class="form-control" id="exampleInputAddress2">
            </div>
            <div class="form-group">
                <label for="exampleInputEmail2">QQ</label>
                <input type="text" name="uQq"  class="form-control" id="exampleInputEmail2">
            </div>
            <button type="submit" class="btn btn-default">查询</button>
        </form>
    </div>
    <div style="float: right;margin: 5px;">
        <a class="btn btn-primary" href="../../jsp/admin/userAdd.jsp">添加联系人</a>
        <a class="btn btn-primary" href="javascript:delSelected()">删除选中</a>
    </div>
    <form id="form" action="${pageContext.request.contextPath}/admin/delete1" method="post">
        <table border="1" class="table table-bordered table-hover">
            <tr class="success">
                <td><input type="checkbox" id="checkAll"></td>
                <th>编号</th>
                <th>昵称</th>
                <th>性别</th>
                <th>QQ</th>
                <th>真实姓名</th>
                <th>邮编</th>
                <th>住址</th>
                <th>手机号</th>
                <th>操作</th>
            </tr>
            <c:if test="${sessionScope.get('you')==null}">
            <c:forEach items="${sessionScope.get('userList')}" var="user" varStatus="s">
                <tr>
                    <td><input type="checkbox" name="uid" value="${user.uId}"></td>
                    <td onclick="getXinXi(${user.uId})">${s.count}</td>
                    <td>${user.uNiCheng}</td>
                    <td>${user.uSex}</td>
                    <td>${user.uQq}</td>
                    <td>${user.uRealName}</td>
                    <td>${user.uPostcode}</td>
                    <td>${user.uAddress}</td>
                    <td>${user.uTel}</td>
                    <td>
                        <a class="btn btn-default btn-sm" href="${pageContext.request.contextPath}/admin/chakan2/${user.uId}">修改</a>&nbsp;
                        <a class="btn btn-default btn-sm" onclick="delete1(${user.uId})">删除
                            <%--<script type="text/javascript">
                                $("#ssss").click(function () {
                                    if (confirm("您确定要删除该用户吗？")) {
                                        window.location.href="${pageContext.request.contextPath}/admin/shanChu1/${user.uId}";
                                    }
                                })
                            </script>--%>
                        </a>
                    </td>
                </tr>
            </c:forEach>
            </c:if>
            <c:if test="${sessionScope.get('you')!=null}">
                <c:forEach items="${sessionScope.get('chazhi')}" var="user" varStatus="s">
                    <tr>
                        <td><input type="checkbox" name="uid" value="${user.uId}"></td>
                        <td onclick="getXinXi(${user.uId})">${s.count}</td>
                        <td>${user.uNiCheng}</td>
                        <td>${user.uSex}</td>
                        <td>${user.uQq}</td>
                        <td>${user.uRealName}</td>
                        <td>${user.uPostcode}</td>
                        <td>${user.uAddress}</td>
                        <td>${user.uTel}</td>
                        <td>
                            <a class="btn btn-default btn-sm" href="${pageContext.request.contextPath}/admin/chakan2/${user.uId}">修改</a>&nbsp;
                            <a class="btn btn-default btn-sm" onclick="delete1(${user.uId})" >删除
                                <%--<script type="text/javascript">
                                    $("#${s.count}").click(function () {
                                        console.log(${s.count});
                                        if (confirm("您确定要删除该用户吗？")) {
                                            window.location.href="${pageContext.request.contextPath}/admin/shanChu1/${user.uId}";
                                        }
                                    })
                                </script>--%>
                            </a>
                        </td>
                    </tr>
                </c:forEach>
            </c:if>
        </table>
    </form>

<c:if test="${sessionScope.get('you')==null}">
    <div align="center">
        <nav aria-label="Page navigation">
            <ul class="pagination">
                <c:if test="${list.pageNum>1}">
                    <li>
                        <a href="${pageContext.request.contextPath}/admin/userList?page=${list.pageNum-1}" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                        </a>
                    </li>
                </c:if>
                <c:forEach begin="1" end="${list.pages}" var="i">
                    <li> <a href="${pageContext.request.contextPath}/admin/userList?page=${i}">${i}</a></li>
                </c:forEach>
                <c:if test="${list.pageNum<list.pages}">
                    <li>
                        <a href="${pageContext.request.contextPath}/admin/userList?page=${list.pageNum+1}" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                </c:if>
            </ul>
        </nav>
    </div>
</c:if>
    <c:if test="${sessionScope.get('you')!=null}">
        <div align="center">
            <nav aria-label="Page navigation">
                <ul class="pagination">
                    <c:if test="${list.pageNum>1}">
                        <li>
                            <a href="${pageContext.request.contextPath}/admin/selectByTian?page=${list.pageNum-1}" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                    </c:if>
                    <c:forEach begin="1" end="${list.pages}" var="i">
                        <li> <a href="${pageContext.request.contextPath}/admin/selectByTian?page=${i}">${i}</a></li>
                    </c:forEach>
                    <c:if test="${list.pageNum<list.pages}">
                        <li>
                            <a href="${pageContext.request.contextPath}/admin/selectByTian?page=${list.pageNum+1}" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                    </c:if>
                </ul>
            </nav>
        </div>
    </c:if>
        <%--<table border="1" class="table table-bordered table-hover">--%>
            <%--<tr class="success"><td>在线用户列表</td></tr>--%>
            <%--<c:forEach items="${onlines}" var="user">--%>
                <%--<tr><td>${user.name}</td></tr>--%>
            <%--</c:forEach>--%>
        <%--</table>--%>
    <%--</div>--%>
</div>
<%--<div align="center">--%>
    <%--<a href="../../jsp/admin/guanLiYuanShouYe.jsp">返回首页</a>--%>
<%--</div>--%>

</body>
</html>
<%--<script type="text/javascript">--%>
    <%--&lt;%&ndash;$(function () {&ndash;%&gt;--%>
        <%--&lt;%&ndash;$.ajax({&ndash;%&gt;--%>
             <%--&lt;%&ndash;url:"${pageContext.request.contextPath}/userList",&ndash;%&gt;--%>
             <%--&lt;%&ndash;type:"POST",&ndash;%&gt;--%>
             <%--&lt;%&ndash;success:function (mm) {&ndash;%&gt;--%>
                 <%--&lt;%&ndash;&ndash;%&gt;--%>
             <%--&lt;%&ndash;}&ndash;%&gt;--%>
        <%--&lt;%&ndash;})&ndash;%&gt;--%>
    <%--&lt;%&ndash;})&ndash;%&gt;--%>
    <%--window.location.href="${pageContext.request.contextPath}/admin/userList";--%>
<%--</script>--%>
<script type="text/javascript">
    function getXinXi(data) {
        console.log(data);
    }
</script>

