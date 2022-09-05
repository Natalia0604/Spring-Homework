<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form id='form' action="/test/result" method="POST">
    For Run in JSP: ${message}<br>
    <input type="hidden" name="id" value="${id}">
    <input type="hidden" name="name" value="${name}">
    ID: ${id} <br>
    NAME: ${name} <br>
    <button type="submit" value="確認">確認</button>
</form>

</body>
</html>

