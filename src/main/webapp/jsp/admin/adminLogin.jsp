<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员登录</title>
    <link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet">
    <link href="//at.alicdn.com/t/font_934673_bmwpjs3nh3h.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
    <script src="${pageContext.request.contextPath}/js/rain.js" type="text/javascript"></script>
    <link href="${pageContext.request.contextPath}/css/login.css" rel="stylesheet">
</head>
<body>
<div class="bgk">
    <div style="background: linear-gradient(45deg,#4595EC,#87979C); width: 500px;" class="container login">
        <h3 align="center" style="margin-top: 75px;">管理员登录</h3>
        <form class="form-horizontal login_form" id="login_form"  method="post" action="${pageContext.request.contextPath}/adminLogin">
            <div class="form-group" align="center">
                <label class="font">
                    <span class="iconfont icon-yonghu2"></span>
                </label>
                <input class="txt" type="text" name="dName" id="nn"><span id="mm"></span>
            </div>
            <div class="form-group" align="center">
                <label class="font">
                    <span class="iconfont icon-suo"></span>
                </label>
                <input class="txt" type="password" name="dPassword">
            </div>
            <div class="form-group" style="text-align: center;">
                <div>
                    <input class="btn btn-primary regist_btn" id="login_btn" type="submit" value="登录">
                    <span style="position: absolute; color: red;" id="login_span">${cuowu}</span>
                    <%--<c:if test="${sessionScope.get('name')!=null}">--%>
                        <%--<span style="position: absolute; color: red;" id="login_span">用户名或者密码错误！</span>--%>
                    <%--</c:if>--%>
                    <%--<c:if test="${sessionScope.get('name')==null}">--%>
                        <%--<span style="position: absolute; color: red;" id="login_span">${sessionScope.get('xinxi')}</span>--%>
                    <%--</c:if>--%>
                    <p style="position: absolute; right: 25px; bottom: 25px;"><a href="${pageContext.request.contextPath}/jsp/userLoginAndRegist/login.jsp">返回</a></p>
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>
<script type="text/javascript">
    $(function () {
        $("#nn").blur(function () {
            var dname=$("#nn").val();
            console.log(dname);
            // var json={"dname":dname};
            $.ajax({
                url:"${pageContext.request.contextPath}/adminSelect",
                type:"POST",
                data:{"dname":dname},
                scriptCharset:"UTF-8",
                dataType:"json",
                // contentType:"application/json;charset=utf-8",//必须是Json对象才能加上这句话
                success:function (m) {
                      if (m==1){
                          $("#mm").html("<font color='green' size='2'>管理员名字正确！</font>");
                          $("#login_btn").removeAttr("disabled");
                          $("#login_btn").attr("disabled", false);
                      }else {
                          $("#mm").html("<font color='red' size='2'>管理员名字不正确！</font>");
                          $("#login_btn").attr("disabled", true);
                      }
                }
            })
        })
    })
</script>
