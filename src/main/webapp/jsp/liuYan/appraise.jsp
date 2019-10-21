<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- 指定字符集 -->
<meta charset="utf-8">
<!-- 使用Edge最新的浏览器的渲染方式 -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- viewport视口：网页可以根据设置的宽度自动进行适配，在浏览器的内部虚拟一个容器，容器的宽度与设备的宽度相同。
width: 默认宽度与设备的宽度相同
initial-scale: 初始的缩放比，为1:1 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<html>
<head>
    <link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet">
   <script src="${pageContext.request.contextPath}/jQuery/jquery-1.12.3.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
    <title>用户留言管理页面</title>
    <style>
        tr{
        text-align: center;

        }
        th{
            text-align: center;
        }
        td{
            text-align: center;
             :center;
        }
        #fen{
            list-style: none;
        }
    </style>
    <%--删除提示--%>
    <script type="text/javascript">
        function del(data) {
            if(confirm("您确定要删除此条评价！"))
            {
                window.location.href="${pageContext.request.contextPath}/admin/delBuysById?id="+data;
            }
        }

        //选张删除操作
        function delSelected() {
            var flag=false;
            var form=document.getElementById("form");
            if(confirm("确定要删除选中的部分吗？"))
            {
                var cbs=document.getElementsByName("id");
                for(var i=0;i<cbs.length;i++)
                {
                    if(cbs[i].checked)
                    {
                        flag=true;
                    }

                }
                if(flag)
                {
                    form.submit();
                }
            }
        }
        //全选操作
        window.onload=function () {
            document.getElementById("selectAll").onclick=function () {
                var cbs=document.getElementsByName("id");
                for(var i=0;i<cbs.length;i++)
                {
                    cbs[i].checked=this.checked;
                }
            }
        };

        $("td,th,tr").addClass("text-center");
    </script>
</head>
<body>
<center>
    <div class="container">
<h1>用户留言管理</h1>

<br>
        <%--模糊查询--%>

        <form method="post" action="${pageContext.request.contextPath}/admin/search">

                <label for="findByuNiCheng">昵称:</label>
                <input type="text" name="uNiCheng" id="findByuNiCheng"/>


                <label for="findBygName">商品:</label>
                <input type="text" name="gName" id="findBygName"/>


                <input type="submit" value="查询" />

        </form>
    <form action="${pageContext.request.contextPath}/admin/delBuysById" method="post" id="form">
       <div style="float: right;margin-top: -35px;">
            <a href="javascript:delSelected()" class="btn btn-primary" >删除选中</a>
       </div>
<table border="1"  style="margin-top: 55px;" class="table table-bordered table-hover">
<tr>
    <th><input type="checkbox" id="selectAll"/></th>
    <th>用户昵称</th>
    <th>商品名称</th>
    <th>交易价格</th>
    <th>实物展示</th>
    <th>用户评价</th>
    <th>评价时间</th>
    <th>操作</th>
</tr>

    <c:forEach var="buys" items="${pageInfo.list}">
    <tr>
    <td>
        <input type="checkbox"  value="${buys.aId}" name="id"/>
    </td>
    <td>${buys.uNiCheng}</td>
    <td>${buys.gName}</td>
    <td>${buys.gPrice}</td>
    <td><img src="${buys.gImage}" style="width:  160px;height: 98px;"></td>
    <td>${buys.aAppraise}</td>
    <td>${buys.aTime}</td>
    <td><a href="#" class="btn btn-default btn-sm" style="text-decoration: none" onclick="del(${buys.aId})">删除</a></td>
</tr>
</c:forEach>


       </table>
    </form>
     <%--<ul id="fen">--%>
     <%--<li>--%>
        <%--每页${pageInfo.pageSize}条&nbsp;--%>
        <%--当前页${pageInfo.size}条&nbsp;--%>
        <%--${pageInfo.pageNum}/${pageInfo.pages}页&nbsp;--%>
        <%--总条数:${pageInfo.total}条--%>
    <%--</li>--%>
    <%--<br>--%>
    <%--<li>--%>
      <%--<c:if test="${pageInfo.isFirstPage==false}">--%>
       <%--<a href="${pageContext.request.contextPath}/admin/showAllBuys?page=${pageInfo.firstPage}" style="text-decoration: none">首页</a>--%>
      <%--</c:if>--%>

        <%--<c:if test="${pageInfo.hasPreviousPage==true}">--%>
            <%--<a href="${pageContext.request.contextPath}/admin/showAllBuys?page=${pageInfo.prePage}" style="text-decoration: none">上一页</a>--%>
        <%--</c:if>--%>
        <%--&nbsp;--%>
        <%--<c:if test="${pageInfo.hasNextPage==true}">--%>
            <%--<a href="${pageContext.request.contextPath}/admin/showAllBuys?page=${pageInfo.nextPage}" style="text-decoration: none">下一页</a>--%>
        <%--</c:if>--%>
        <%--&nbsp;--%>
        <%--<c:if test="${pageInfo.isLastPage==false}">--%>
            <%--<a href="${pageContext.request.contextPath}/admin/showAllBuys?page=${pageInfo.lastPage}" style="text-decoration: none">尾页</a>--%>
        <%--</c:if>--%>
    <%--</li>--%>
<%--</ul>--%>


    </div>
</center>
<div align="center">
    <nav aria-label="Page navigation">
        <ul class="pagination">
            <c:if test="${pageInfo.pageNum>1}">
                <li>
                    <a href="${pageContext.request.contextPath}/admin/showAllBuys?page=${pageInfo.pageNum-1}" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>
            </c:if>
            <c:forEach begin="1" end="${pageInfo.pages}" var="i">
                <li> <a href="${pageContext.request.contextPath}/admin/showAllBuys?page=${i}">${i}</a></li>
            </c:forEach>
            <c:if test="${pageInfo.pageNum<pageInfo.pages}">
                <li>
                    <a href="${pageContext.request.contextPath}/admin/showAllBuys?page=${pageInfo.pageNum+1}" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
            </c:if>
        </ul>
    </nav>
</div>
<%--<div align="center">--%>
    <%--<a href="../../jsp/admin/guanLiYuanShouYe.jsp">返回首页</a>--%>
<%--</div>--%>
</body>
</html>
