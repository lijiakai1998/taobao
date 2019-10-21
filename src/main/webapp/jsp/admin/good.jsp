<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商品详情</title>
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <link href="${pageContext.request.contextPath}/css/good.css" rel="stylesheet">
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
        });
    </script>
</head>
<body>
<div>
    <div class="goods">
        <div class="col-sm-5 good-left">
            <img src="${good.gImage}">
        </div>
        <div class="col-sm-7 good-right">
            <div style="height: 315px; margin-top: 80px;">
                <div class="right-top">
                    <p style="font-size: 20px;">${good.gName}</p>
                    <div style="overflow: hidden; background: #E5E4E4;">
                        <dl style="overflow: hidden; margin: 0;">
                            <dt style="float: left;"><p>单价</p></dt>
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
                            <span>月销量</span>
                            <span style="color: red;">21</span>
                        </li>
                        <li>
                            <span>累计评价</span>
                            <span style="color: red;">12365</span>
                        </li>
                    </ul>
                    <div style="overflow:hidden; margin-top: 20px;">
                        <div class="buy">
                            <a href="${pageContext.request.contextPath}/admin/findGood?gId=${good.gId}">修改</a>
                        </div>
                        <button class="addshopping">
                            <a href="${pageContext.request.contextPath}/admin/deleteGoods?gId=${good.gId}">删除</a>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
