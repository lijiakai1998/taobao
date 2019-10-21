<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商品详情</title>
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <link href="${pageContext.request.contextPath}/css/goods.css" rel="stylesheet">
    <script>
        $(function () {
            var good_sum = $("#good_sum");
            var price = $("#price");
            var good_price = parseFloat(price.html());
            $("#add_btn").click(function () {
                var sum = good_sum.val();
                good_sum.val(parseInt(sum) + 1);
                price.html(good_price * parseFloat(good_sum.val()));
            });
            $("#sub_btn").click(function () {
                var sum = good_sum.val();
                if (sum > 1){
                    good_sum.val(parseInt(sum) - 1);
                    price.html(good_price * parseFloat(good_sum.val()));
                }
            });
            $("#good_sum").bind('input propertychange',function () {
                var sum = good_sum.val();
                if ("" === sum){
                    good_sum.val(1);
                    price.html(good_price * parseFloat(good_sum.val()));
                }else {
                    price.html(good_price * parseFloat(good_sum.val()));
                }
            });
            $("#buy").click(function () {
                var gId = $("#good_id").val();
                var gSum = $("#good_sum").val();
                var arr = [gId];
                var count = [gSum];
                console.log(JSON.stringify(arr));  //存储所选商品id的数组
                console.log(JSON.stringify(count));  //存储所选每个商品的数量
                console.log($("#price").html());
                console.log(gSum);
                $.ajax({
                    type: 'GET',
                    dataType: 'json',
                    url: '${pageContext.request.contextPath}/shoppingCart/jieSuanByGoodsId',
                    data: {
                        'json': JSON.stringify(arr),
                        'count': JSON.stringify(count),
                        'total': $("#price").html(),
                        'selectTotal': gSum
                    },
                    async: false,//先执行AJAx再执行下面的代码
                    /*
                    当async设置为true时，点击按钮后，先执行下面的代码,最后执行success函数操作
                    * */
                    contentType: "application/json; charset=utf-8",
                    success: function (data) {
                        if (data.msg == "true") {
                            location.href = '${pageContext.request.contextPath}/shoppingCart/dingDan'
                        }
                    },
                    fail: function () {
                        alert("操作异常！！！");
                    }
                });
            });
            $('#addCart').click(function () {
                var gSum=document.getElementById("good_sum");
                console.log(gSum);
                window.location.href="${pageContext.request.contextPath}/shoppingCart/addShoppingCart?gId=${good.gId}&gSum="+gSum.value;

            });
        });
    </script>
</head>
<body>
<div>
    <div class="goods">
        <div class="col-sm-5 good-left">
            <input id="good_id" hidden value="${good.gId}">
            <img class="good-left-img" src="${good.gImage}">
        </div>
        <div class="col-sm-7 good-right">
            <div style="height: 315px; margin-top: 80px;">
                <div class="right-top">
                    <p style="font-size: 20px;">${good.gName}</p>
                    <div style="overflow: hidden; background: #E5E4E4;">
                        <dl style="overflow: hidden; margin: 0;">
                            <dt style="float: left;"><p>价格</p></dt>
                            <dd style="float: left;">
                                <em style="color: red;">￥</em>
                                <span id="price" style="color: red; font-size: 30px;">${good.gPrice}</span>
                            </dd>
                        </dl>
                    </div>
                </div>
                <div class="right-bottom">
                    <ul>
                        <li style="border-right: 1px dotted #c9c9c9">
                            <span>浏览量</span>
                            <span style="color: red;">${good.gPageView}</span>
                        </li>
                        <li>
                            <span>累计评价</span>
                            <span style="color: red;">12365</span>
                        </li>
                    </ul>
                    <dl style="overflow: hidden; margin: 10px 0 0 0;">
                        <dt style="float: left; line-height: 30px; margin: 0 50px 0 10px;">数量</dt>
                        <dd style="float: left;">
                            <button id="sub_btn">-</button>
                            <input id="good_sum" name="gSum" style="height: 30px; width: 40px; text-align: center;" type="text" value="1">
                            <button id="add_btn">+</button>
                            <span>件</span>

                        </dd>
                    </dl>
                    <div style="overflow:hidden; margin-top: 20px;">
                        <div class="buy">
                            <a href="#" id="buy">立即购买</a>
                        </div>
                        <div class="addshopping">
                            <a href="#" id="addCart">加入购物车</a>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
</body>
</html>
