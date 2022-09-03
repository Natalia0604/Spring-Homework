<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form  action="/test/index" method="GET" id="back">
    For Run in JSP: ${message}<br>
    <button id="botton" type="submit">返回首頁</button>
</form>

<c:forEach var="data" items="${list}">
    <div>
        ID: ${data.id}<br>
        NAME: ${data.name}<br>
        <form action="/test/update/${data.id}" method="POST">
            <button id="update" type="submit">修改</button>
        </form>
        <form action="/test/delete/${data.id}" method="POST">
            <button id="delete" type="submit">刪除</button>
        </form>
    </div>
</c:forEach>
</body>
</html>
