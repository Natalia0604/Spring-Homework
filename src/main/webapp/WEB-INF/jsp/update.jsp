<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form id='add' action="/test/renew" method="POST">
    For Run in JSP: ${message}<br>
    ID:<input type="text" name="id" value="${id}" required><br>
    NAME:<input type="text" name="name" value="${name}" required><br>
    <button type="submit" value="確認">確認</button>
</form>

</body>
</html>
