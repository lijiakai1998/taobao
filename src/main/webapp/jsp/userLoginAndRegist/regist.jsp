<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>账户注册</title>
    <link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet">
    <link href="//at.alicdn.com/t/font_934673_bmwpjs3nh3h.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
    <script src="${pageContext.request.contextPath}/js/rain.js" type="text/javascript"></script>
    <link href="${pageContext.request.contextPath}/css/regist.css" rel="stylesheet">
    <script>
        $(function () {
            //上传头像
            $("#image").click(function () {
                $("#file").click();
            });
            $("#file").change(function(){
                var objUrl = getUrl(this.files[0]) ;
                console.log("objUrl = "+objUrl) ;
                if (objUrl) {
                    $("#image").attr("src", objUrl) ;
                }
            });
            //验证用户名是否重复
            $("#u_name").blur(function () {
                var u_name = $(this).val();
                console.log("ajax");
                //ajax验证
                $.ajax({
                    url: "${pageContext.request.contextPath}/checkUsernameAjax",
                    type: "POST",
                    data: {u_name:u_name},
                    success: function (data) {
                        var span = $("#u_span");
                        var btn = $("#regist_btn");
                        if (data.usernameEmpty){
                            span.css("color", "red");
                            span.html(data.msg);
                            btn.attr("disabled", true);
                        }else {
                            if (data.userExist) {
                                span.css("color", "red");
                                span.html(data.msg);
                                btn.attr("disabled", true);
                            }else {
                                span.css("color", "green");
                                span.html(data.msg);
                                btn.removeAttr("disabled");
                                btn.attr("disabled", false);
                            }
                        }
                    },
                    dataType: "json"
                });
            });
            //验证QQ是否已经注册
            $("#u_qq").blur(function () {
                var u_qq = $("#u_qq").val();
                $.ajax({
                    url: "${pageContext.request.contextPath}/qqCheckAjax",
                    type: "POST",
                    data: {u_qq:u_qq},
                    success: function (result) {
                        var qq_span = $("#qq_span");
                        var btn = $("#regist_btn");
                        if (result.qqExist){
                            qq_span.css("color", "red");
                            qq_span.html(result.msg);
                            btn.attr("disabled", true);
                        }else {
                            btn.removeAttr("disabled");
                            btn.attr("disabled", false);
                        }
                    },
                    dataType: "json"
                });
            });
            //发送验证码
            $("#checkCode_btn").click(function () {
                var u_qq = $("#u_qq").val();
                $.ajax({
                    url: "${pageContext.request.contextPath}/sendCheckCodeAjax",
                    type: "POST",
                    data: {u_qq:u_qq}
                });
            });
            //确认验证码是否正确
            $("#checkCode").blur(function () {
                var checkCode = $("#checkCode").val();
                console.log("aaa");
                $.ajax({
                    url: "${pageContext.request.contextPath}/checkedAjax",
                    type: "POST",
                    data: {checkCode:checkCode},
                    success: function (result) {
                        console.log(result);
                        var check_span = $("#check_span");
                        var btn = $("#regist_btn");
                        if (!result.isCheckCode){
                            console.log(result.msg);
                            check_span.css("color", "red");
                            check_span.html(result.msg);
                            btn.attr("disabled", true);
                        }else {
                            console.log(result.msg);
                            check_span.css("color", "green");
                            check_span.html(result.msg);
                            btn.removeAttr("disabled");
                            btn.attr("disabled", false);
                        }
                    },
                    dataType: "json"
                });
            });
        });
        //获取文件的URL
        function getUrl(file) {
            var url = null ;
            if (window.createObjectURL != undefined) { // basic
                url = window.createObjectURL(file) ;
            } else if (window.URL != undefined) { // mozilla(firefox)
                url = window.URL.createObjectURL(file) ;
            } else if (window.webkitURL != undefined) { // webkit or chrome
                url = window.webkitURL.createObjectURL(file) ;
            }
            return url ;
        }
    </script>
</head>
<body>
<canvas class="rain" id="rain"></canvas>
<div class="container regist">
        <h3 align="center" style="margin-bottom: 20px;">用户注册</h3>
        <form class="form-horizontal regist_form" action="${pageContext.request.contextPath}/userRegistServlet" method="post">
            <div class="form-group" align="center">
                <div class="image">
                    <img src="${pageContext.request.contextPath}/fonts/default_img.jpg" class="img-circle" id="image">
                    <input style="display: none" type="file" id="file" name="uImage">
                </div>
            </div>
            <div class="form-group" align="center">
                <label class="font">
                    <span class="iconfont icon-yonghu2"></span>
                </label>
                <input class="txt" type="text" name="uNiCheng" id="u_name">
                <span style="position: absolute;" id="u_span"></span>
            </div>
            <div class="form-group" align="center">
                <label class="font">
                    <span class="iconfont icon-suo"></span>
                </label>
                <input class="txt" type="password" name="uPassword">
            </div>
            <div class="form-group" align="center">
                <div class="radio">
                    <label style="margin: 0 25px;">
                        <input class="txt" type="radio" name="uSex" value="男">男
                    </label>
                    <label style="margin: 0 25px;">
                        <input class="txt" type="radio" name="uSex" value="女">女
                    </label>
                </div>
            </div>
            <div class="form-group" align="center">
                <label class="font">
                    <span class="iconfont icon-tubiao209"></span>
                </label>
                <input class="txt" id="u_qq" type="text" name="uQq">
                <span style="position:absolute;" id="qq_span"></span>
            </div>
            <div class="form-group" align="center">
                <label class="font">
                    <span class="iconfont icon-yanzhengma1"></span>
                </label>
                <input class="txt checked" id="checkCode" type="text" name="checkCode">
                <input class="btn btn-primary" id="checkCode_btn" type="button" value="发送验证码">
                <span style="position: absolute;" id="check_span"></span>
            </div>
            <div class="form-group" style="text-align: center;">
                <div>
                    <input id="regist_btn" class="btn btn-primary regist_btn" type="submit" value="注册">
                    <span style="position: absolute; color: red;">${regist_msg}</span>
                    <p style="margin-top: 10px;">已有账户，前往<a href="${pageContext.request.contextPath}/jsp/userLoginAndRegist/login.jsp">登录</a></p>
                </div>
            </div>
        </form>
    </div>
</body>
</html>
