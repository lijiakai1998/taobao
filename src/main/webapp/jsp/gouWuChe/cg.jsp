<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style type="text/css">
        #top{
            height:150px;
            width:100%;
            background-color: #FFFFFF;
        }
        #topbar{
            height:150px;
            width:70%;
            margin:auto;
            background-color:#FFFFFF;
        }
        .logo01{
            width:200px;
            height:136px;
            position:relative;
            float:left;
        }
        .logo02{
            width:160px;
            height:90px;
            position:relative;
            float:left;
            top:50px;
        }

        .find input{
            width:250px;
            height:30px;
            position:relative;
            top:50px;
            float:right;
            border-style:solid;
            border-color: darkorange;
            border-width:3px;
        }
        .sousuo input{
            width:60px;
            height:37px;
            position:relative;
            top:50px;
            float:right;
            background-color: darkorange;
            border-width:3px;
            border-color: darkorange;
            font-size: medium;
            font-family: Arabic Typesetting ;
        }
        #nav{
            height:35px;
            width:70%;
            background-color:#FFFFFF;
            margin:5px auto;
            border-bottom: 2px double #666666;
        }
        .nav table{
            width:70%;
            height:35px;
            margin:0 auto;
            border-bottom: 2px solid #666666;
            position:relative;
            float:left;
        }
        .nav td{
            width:100px;
            height:35px;
            font-weight:bolder;
            text-align: center;
            position:relative;
            float:left;
        }
        .nav table td:hover :visited{
            border-bottom: 2px solid darkorange;
        }
        .button {
            background-color: #ff740a;
            width:60px;
            height:25px;
            border: none;
            color: white;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
        }
        #content{
            width:70%;
            height:100%;

            margin:5px auto;
        }
        .one{
            width:120px;
            height:70px;

        }
        .two{
            width:250px;
            height:70px;

        }
        .three{
            width:180px;
            height:70px;

        }
        .four{
            width:170px;
            height:70px;

        }
        .five{
            width:230px;
            height:70px;

        }
        .view table{
            border:3px solid #999999;
            width:100%;
            height:100px ;
        }
        .item-content .text-amount {
            width: 20px;
            height: 15px;
            line-height: 15px;
            border: 1px solid #aaa;
            color: #343434;
            text-align: center;
            padding: 4px 0;
            background-color: #fff;
            background-position: -75px -375px;
            position: absolute;
            z-index: 2;
            left: 18px;
            top: 0;
        }
        .item-content .item-amount a {
            display: block;
            height: 23px;
            width: 10px;
            border: 1px solid #e5e5e5;
            background: #f0f0f0;
            text-align: center;
            line-height: 23px;
            color: #444;
            position: absolute;
            top: 0;
        }
        .item-content .item-amount a, .item-content .text-amount {
            float: left;
        }
        .item-content .item-amount {
            height: 25px;
            overflow: hidden;
            position: relative;
            z-index: 1;
        }
        .item-content .item-amount {
            width: 19px;}

        .item-content .item-amount .no-minus {
            color: #e5e5e5;
        }
        cart-min.css:5
        .item-amount .no-minus {
            border-right-color: transparent;
            left: 0;
        }
        .item-amount .plus, .item-content .item-amount .no-plus {
            border-left-color: transparent;
            right: 0;
        }
    </style>
</head>
<body>
<script type="text/javascript">
    alert("登录成功！");
    <%--window.location.href="${pageContext.request.contextPath}/weitao";--%>

</script>

<div id="top"><div id="topbar">
    <div class="logo01"><img src="../../img/01.png"> </div>
    <div class="logo02"><img src="../../img/02.png"></div>

    <form action="#" method="post">
        <div class="sousuo"><input type="submit" value="搜索" /></div>
        <div class="find"><input type="text"/>

        </div>
    </form>
</div>
</div>
<div id="nav">
    <table class="nav">
        <tr style="position: absolute;">
            <td class="nav">
                <span style="color:#ff740a;font-weight:bold;font-family: 宋体; font-size: x-large" >全部商品</span>
            </td>
            <td class="nav"></td>
            <td class="nav"></td>
            <td class="nav"></td>
            <td class="nav"></td>
            <td class="nav "></td>
            <td class="nav"></td>
            <td class="nav"></td>
            <td class="nav"></td>
            <td class="nav">已选商品</td>
            <td>0.00</td>
            <td><input type="submit" class="button"value="结算"/></td>
        </tr>
    </table>
</div>
<!--<hr color="#666666" width="70%" size="2px" align="center"/>-->
<div id="content">
    <table>
        <tr>
            <td class="one">
                <input type="checkbox"/>全选
            </td>
            <td class="two">
                商品信息
            </td>
            <td class="three"></td>
            <td class="four">单价</td>
            <td class="five">数量</td>
            <td class="four">金额</td>
            <td class="four">操作</td>
        </tr>
    </table>
    <table border="1"rules="none"width="100%"height="120px" align="center" border-color="#cccccc">
        <tr>
            <td class="one">
                <input type="checkbox"/><img src="../../img/bg03.jpg">
            </td>
            <td class="two">
                <a href="#"> <span style="font-size: small;color: #666666" >韩国网红束发带洗脸敷面膜洗漱化妆简约可爱森女头饰发套头箍发箍</span></a>
            </td>
            <td class="three">
                <span style="font-size: small;color: #666666">颜色分类：薄荷绿+兔耳朵粉色</span>
            </td>
            <td class="four">
                ￥13.9
            </td>
            <td class="five">
                <div class="amount-wrapper">
                    <div class="item-amount ">
                        <a href="#" class="J_Minus no-minus" data-spm-anchor-id="a1z0d.6639537.1997196601.7">-</a>
                        <input type="text" value="1" style="width: 25px;" data-max="2669" data-now="1" autocomplete="off"/>
                        <a href="#" class="J_Plus plus" data-spm-anchor-id="a1z0d.6639537.1997196601.8">+</a>
                    </div>
                </div>

            </td>
            <td class="four">

            </td>
            <td class="four">

            </td>
        </tr>
    </table>
</div>

</body>
</html>
