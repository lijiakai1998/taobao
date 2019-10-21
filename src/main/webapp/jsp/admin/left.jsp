<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="${pageContext.request.contextPath}/js/jquery-3.3.1.js"></script>
    <style>
        *{
            margin: 0;
            padding: 0;
            list-style: none;
            text-decoration: none;
        }
        .left{
            height: 1000px;
        }
        .left li{
            max-height: 180px;
            width: 100%;
            border-bottom: 1px solid #E1E1E1;
            text-align: center;
            line-height: 36px;
        }
        .left a{
            color: #000;
            cursor: pointer;
        }
    </style>
    <script>
        $(function () {
            var menus=$(".left > ul > li > a ");
            for(var i = 0;i < menus.length; i++){
                menus.eq(i).click(function () {
                    if($(this).next("ul").is(':hidden')){
                        $(this).next("ul").slideToggle(300);
                    }else{
                        $(this).next("ul").slideToggle(500);
                    }
                });
            }
        });
    </script>
</head>
<body>
    <div class="left">
        <ul>
            <li><a href="${pageContext.request.contextPath}/admin/userList" target="main">管理客户</a></li>
            <li><a>管理商品</a>
                <ul style="display: none; background: #F1F3F4;">
                    <li><a href="../../jsp/admin/shangPinGuanLi.jsp" target="main">添加商品</a></li>
                    <li><a href="${pageContext.request.contextPath}/admin/showAllGoods" target="main">所有商品</a></li>
                </ul>
            </li>
            <li><a>管理评论</a>
                <ul style="display: none; background: #F1F3F4;">
                    <li><a href="${pageContext.request.contextPath}/admin/showAllBuys" target="main">用户评价管理</a></li>
                </ul>
            </li>
        </ul>
    </div>
</body>
</html>
<script>
    //1.定义基本格式
    var person={"name":"zhangsan","age":20,"gender":true};
    //2.嵌套格式（{}--->[]）
    var persons1={
        "persons":[
            {"name":"张三","age":20,"gender":true},
            {"name":"李四","age":21,"gender":false},
            {"name":"王五","age":22,"gender":true}
        ]
    };
    //2.嵌套格式（[]--->{}）
    var ps=[{"name":"张三","age":20,"gender":true},
        {"name":"李四","age":21,"gender":false},
        {"name":"王五","age":22,"gender":true}];
</script>
