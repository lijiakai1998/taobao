<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加商品</title>
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <link href="${pageContext.request.contextPath}/css/addgoods.css" rel="stylesheet">
    <link href="//at.alicdn.com/t/font_934673_bmwpjs3nh3h.css" rel="stylesheet">
    <script>
        $(function () {
            $("#img").click(function () {
                $("#file").click();
            });
            $("#file").change(function () {
                var objUrl = getUrl(this.files[0]);
                if (objUrl) {
                    $("#img").attr("src", objUrl);
                }
            });
        });
        //获取文件的URL
        function getUrl(file) {
            var url = null;
            if (window.createObjectURL != undefined) { // basic
                url = window.createObjectURL(file);
            } else if (window.URL != undefined) { // mozilla(firefox)
                url = window.URL.createObjectURL(file);
            } else if (window.webkitURL != undefined) { // webkit or chrome
                url = window.webkitURL.createObjectURL(file);
            }
            return url;
        }
    </script>
</head>
<body>
<form class="form-horizontal addgoods_form" action="${pageContext.request.contextPath}/admin/updateGood?gId=${good.gId}" method="post" enctype="multipart/form-data">
    <h2 align="center" style="margin-bottom: 50px;">商品详情修改</h2>
    <div class="form-group" align="center">
        <label class="goods_key">商品名称：</label>
        <input class="txt" type="text" value="${good.gName}" name="gName">
    </div>
    <div class="form-group" align="center">
        <label class="goods_key">商品价格：</label>
        <input class="txt" type="text" value="${good.gPrice}" name="gPrice">
    </div>
    <div class="form-group" align="center">
        <label class="goods_key">提供商家：</label>
        <input class="txt" type="text" value="${good.gStore}" name="gStore">
    </div>
    <div class="form-group" align="center">
        <label class="goods_key">商品图片：</label>
        <img style="display: inline-block;" class="img" id="img" src="${good.gImage}">
        <input id="file" type="file" name="gImage" value="${good.gImage}" >
    </div>
    <div class="form-group" align="center">
        <input class="btn-primary btn" type="submit" value="提交">
    </div>
</form>
</body>
</html>
