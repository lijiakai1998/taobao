<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 2019/9/29
  Time: 9:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>订单详情页面</title>
    <link rel="stylesheet" type="text/css" href="../../css/order.css" />
    <link href="../../css/layui.css" rel="stylesheet" type="text/css" />
    <script src="../../jQuery/jquery-1.12.3.js" type="text/javascript" charset="utf-8"></script>
    <script type="text/javascript" src="../../js/cart.js"></script>
    <script type="text/javascript" src="../../js/order.js"></script>
    <link rel="stylesheet" type="text/css" href="../../css/iconfont.css">
    <style>
        a{
            color: #0000FF;
        }
        a:hover{
            color: #FF4400;
        }
    </style>
</head>
<body bgcolor="#faebd7">
<center>
    <div style="margin-top: 10px;">
    <h1 style="font-size: 18px;font-weight: bolder">确认订单</h1>
    </div>
    <div style="margin-top: 30px;border-color: #5bc0de;width: 600px;margin-right:250px;" >
        <div class="fill" style="margin-left: 200px">
            <span style="color: red">*</span>
            <span class="fill-title">收货信息</span>
            <button class="fill-bu">
                <i class="iconfont icon-edit" style="font-size: 30px; color: #ff6637"></i>
                <span id="modify">填写信息</span>
            </button>

            <div class="message" style="margin-left:-120px;">
                <ul>
                    <li>收货人：<span class="span-1"></span></li>
                    <li>联系电话：<span class="span-2"></span></li>
                    <li>收货地址：<span class="span-3"></span></li>
                </ul>
            </div>

            <!--填写信息-->
            <div class="cover"></div>
            <!--弹出窗口-->
            <div class="layer">
                <p class="lay-title">填写收货信息</p>
                <p class="close">X</p>
                <form id="form-id">
                    <ul>
                        <li>
                            <label for="name"><i class="iconfont icon-user" style="font-size: 25px;"></i><span style="margin-left: -170px">收货人</span></label>
                            <input  id="name" name="name" type="text" placeholder="" class="kuang" />
                        </li>

                        <li>
                            <label for="phone"><i class="iconfont icon-phone" style="font-size: 25px;"></i><span style="margin-left: -180px">联系电话</span></label>
                            <input  id="phone" name="phone" type="text" placeholder="" class="kuang" />
                        </li>

                        <li>
                            <label for="address"><i class="iconfont icon-home" style="font-size: 25px;"></i><span style="margin-left: -180px">收货地址</span></label>
                            <textarea id="address" name="address"  placeholder="" class=" kuang kuang2" ></textarea>
                        </li>
                    </ul>

                </form>
                <span class="tip"></span>

                <input id="submit" class="sub" type="submit" value="确&nbsp;&nbsp;&nbsp;定" />

            </div>
        </div>
        <div style="margin-top: 15px">
            <table bgcolor="white" style="" border="0" width="530px">
                <c:forEach items="${goodsList}" var="goods" >
                    <tr>
                        <td  style="margin-right: 50px;font-weight: bolder;font-size: 18px;color: #FF4400;font-family: 'Agency FB'">${goods.gStore}</td>
                    </tr>
                    <tr>
                        <td rowspan="2" style="width: 240px"><img src="${goods.gImage}" style="width:160px;height: 98px;"></td>
                        <td rowspan="2" >${goods.gName}</td>
                        <td style="font-size: 16px;width: 305px;">￥${goods.gPrice}</td>
                    </tr>
                    <tr>
                        <td style="color: #9d9d9d">x${map.get(goods.gId)}</td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
    <div style="margin-top:3px;margin-left:680px;">
        <span style="color: black; font-size: 12px;">共${selectTotal}件,</span> &nbsp;
        <span style="color: black;font-size: 16px;">合计:<span style="color: red;font-size: 18px;">￥${total}</span></span>&nbsp;
        <a href="#" style="text-decoration: none; font-size:25px;"onclick="buy()" >提交订单</a>
    </div>
</center>
</body>
<script type="text/javascript">
    function buy() {
        // alert(allid);
        window.location.href="${pageContext.request.contextPath}/admin/buy";
    }
</script>

</html>
