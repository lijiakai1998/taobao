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
            $("#add_span").click(function () {
                $("#file").click();
            });
            $("#img").click(function () {
                $("#file").click();
            });
            $("#file").change(function(){
                var objUrl = getUrl(this.files[0]) ;
                if (objUrl) {
                    $("#img").attr("src", objUrl) ;
                    $("#img").css("display","inline-block");
                    $("#add_span").css("display","none");
                }
            });
            $("#g_attr").change(function () {
                var g_cate = $("#g_cate");
                var g_attr = $("#g_attr").val();
                if ("男装" === g_attr) {
                    var node = "<option>上衣</option>" +
                        "<option>裤子</option>" +
                        "<option>鞋子</option>" +
                        "<option>内衣</option>" +
                        "<option>帽子</option>" +
                        "<option>外套</option>" +
                        "<option>衬衫</option>";
                    g_cate.empty();
                    g_cate.append(node);
                }
                if ("女装" === g_attr) {
                    var node = "<option>卫衣</option>" +
                        "<option>裙子</option>" +
                        "<option>衬衫</option>" +
                        "<option>内衣</option>" +
                        "<option>T恤</option>" +
                        "<option>外套</option>";
                    g_cate.empty();
                    g_cate.append(node);
                }
                if ("美食" === g_attr) {
                    var node = "<option>牛奶</option>" +
                        "<option>火腿</option>" +
                        "<option>香肠</option>" +
                        "<option>矿泉水</option>" +
                        "<option>矿泉水</option>" +
                        "<option>红茶</option>" +
                        "<option>蜂蜜</option>";
                    g_cate.empty();
                    g_cate.append(node);
                }
                if ("数码" === g_attr) {
                    var node = "<option>手机</option>" +
                        "<option>电脑</option>" +
                        "<option>相机</option>" +
                        "<option>手机配件</option>";
                    g_cate.empty();
                    g_cate.append(node);
                }
                if ("家具" === g_attr) {
                    var node = "<option>沙发</option>" +
                        "<option>床</option>" +
                        "<option>书桌</option>" +
                        "<option>书架</option>" +
                        "<option>衣柜</option>" +
                        "<option>鞋柜</option>" +
                        "<option>椅子</option>";
                    g_cate.empty();
                    g_cate.append(node);
                }
                if ("母婴" === g_attr) {
                    var node = "<option>婴儿床</option>" +
                        "<option>湿巾</option>" +
                        "<option>婴儿推车</option>" +
                        "<option>奶粉</option>";
                    g_cate.empty();
                    g_cate.append(node);
                }
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
<form class="form-horizontal addgoods_form" action="${pageContext.request.contextPath}/admin/addGoods" method="post" enctype="multipart/form-data">
    <h2 align="center" style="margin-bottom: 50px;">商品添加详情</h2>
    <div class="form-group" align="center">
        <label class="goods_key">商品名称：</label>
        <input class="txt" type="text" name="gName">
    </div>
    <div class="form-group" align="center">
        <label class="goods_key">商品属性：</label>
        <select id="g_attr" class="txt" name="gAttribute">
            <option></option>
            <option>男装</option>
            <option>女装</option>
            <option>美食</option>
            <option>数码</option>
            <option>家具</option>
            <option>母婴</option>
        </select>
    </div>
    <div class="form-group" align="center">
        <label class="goods_key">商品类别：</label>
        <select id="g_cate" class="txt" name="gCategory">
        </select>
    </div>
    <div class="form-group" align="center">
        <label class="goods_key">商品价格：</label>
        <input class="txt" type="text" name="gPrice">
    </div>
    <div class="form-group" align="center">
        <label class="goods_key">提供商家：</label>
        <input class="txt" type="text" name="gStore">
    </div>
    <div class="form-group" align="center">
        <label class="goods_key" style="position: relative; bottom: 145px;">商品图片：</label>
        <span class="add_img" id="add_span"><i id="icon" class="iconfont icon-hao"></i></span>
        <img class="img" id="img" src="">
        <input id="file" type="file" name="gImage">
    </div>
    <div class="form-group" align="center">
        <input class="btn-primary btn" type="submit" value="提交">
    </div>
</form>
</body>
</html>
