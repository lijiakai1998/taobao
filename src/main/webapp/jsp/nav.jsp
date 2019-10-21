<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../css/main.css"/>
    <link rel="stylesheet" href="../layui/css/layui.css" media="all">
    <link href="../css/zzsc.css" rel="stylesheet" type="text/css"/>
    <link href="../iconfont/iconfont.css" rel="stylesheet" type="text/css"/>
    <script src="../jQuery/jquery-1.12.3.js" type="text/javascript" charset="utf-8"></script>
    <script src="../js/myjs.js" type="text/javascript" charset="utf-8"></script>
</head>
<body>
<div class="login">
    <ul class="layui-nav">
        <li class="layui-nav-item"><a href="${pageContext.request.contextPath}/main"  target="main" >欢迎来到购物商城</a></li>
        <li class="layui-nav-item">
            <a href="" target="mainFrame-shouye">
                <span class="iconfont icon-ren"></span>
            </a>
        </li>

        <li class="layui-nav-item layui-this">
            <a href="javascript:;">我的淘宝</a>
            <dl class="layui-nav-child">
                <dd><a href="" target="mainFrame-shouye">已卖出的宝贝</a></dd>
                <dd><a href="" target="mainFrame-shouye">已买到的宝贝</a></dd>
            </dl>
        </li>
        <li class="layui-nav-item">
            <a href="javascript:;">收藏</a>
            <dl class="layui-nav-child">
                <dd><a href="" target="mainFrame-shouye">收藏的宝贝</a></dd>
                <dd><a href="" target="mainFrame-shouye">收藏的店铺</a></dd>
            </dl>
        </li>
        <li class="layui-nav-item">
            <a href="${pageContext.request.contextPath}/shoppingCart/showAllShoppingGoods" target="main">我的购物车</a>
        </li>
    </ul>
    <script src="../layui/layui.js" charset="utf-8"></script>
    <script>
        layui.use('element', function(){
            var element = layui.element; //导航的hover效果、二级菜单等功能，需要依赖element模块

            //监听导航点击
            element.on('nav(demo)', function(elem){
                //console.log(elem)
                layer.msg(elem.text());
            });
        });
    </script>
</div>
<div class="search">
    <img src="../img/logo.jpg" alt="shopping"/>
    <div class="searchbox">
        <ul class="border1">
            <li><a href="#" class="style1">宝贝</a></li>

        </ul>
        <div class="bodys">
            <form method="post" action="${pageContext.request.contextPath}/goods/searchGoods" target="main">
                <input type="text"  id="" class="one" placeholder="输入宝贝"  name="gCategory"/>
                <input type="submit" value="搜索" style="width:80px;font-size:18px;background-color: #FF4400"/>
            </form>


        </div>
    </div>

</div>
</body>
</html>
