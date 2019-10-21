<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:if test="${name=='xiugai'}">
    <script type="text/javascript">
        alert("修改成功！");
        window.location.href="${pageContext.request.contextPath}/admin/userList";
    </script>
</c:if>
<c:if test="${name=='shanchu'}">
    <script type="text/javascript">
        alert("删除成功！");
        window.location.href="${pageContext.request.contextPath}/admin/userList";
    </script>
</c:if>
<c:if test="${name=='add'}">
    <script type="text/javascript">
        alert("添加成功！");
        window.location.href="${pageContext.request.contextPath}/admin/userList";
    </script>
</c:if>
<c:if test="${name=='piliangshanchu'}">
    <script type="text/javascript">
        alert("批量删除成功！");
        window.location.href="${pageContext.request.contextPath}/admin/userList";
    </script>
</c:if>
<c:if test="${name1=='tianjia2'}">
    <script type="text/javascript">
        alert("添加成功！");
        window.location.href="${pageContext.request.contextPath}/jsp/admin/shangPinGuanLi.jsp";
    </script>
</c:if>
</body>
</html>
