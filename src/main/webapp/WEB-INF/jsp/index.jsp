<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form id='index' action="/test/add" method="POST">
    For Run in JSP: ${message}<br>
    <input type='hidden' name='num'>
    <input type='hidden' id='act' name='act' value='add'>
    ID:<input type='text' id='id' name='id' required><br>
    NAME:<input type='text' name='name' required><br>
    <button type="submit" value="送出">送出</button>
</form>
<form action="/test/all" method="POST">
    <button  type="submit" value="提交">查看</button>
</form>

</body>
</html>
