<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>show all data in database</title>
</head>
<body>
<style type="text/css">
	.page {
	  width: 360px;
	  padding: 8% 0 0;
	  margin: auto;
	}
	p{
		font-size: 18px;
		font-family: "Roboto", sans-serif;
		text-align: center;
	}
	.show-data{
		font-size: 14px;
	}
	.form {
	  position: relative;
	  z-index: 1;
	  background: #FFFFFF;
	  max-width: 360px;
	  margin: 0 auto 100px;
	  padding: 45px;
	  text-align: center;
	  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
	}
	.list{
		border: 3px solid green;
		margin:10px 0; 
	}
	input {
	  font-family: "Roboto", sans-serif;
	  outline: 0;
	  background: #f2f2f2;
	  width: 100%;
	  border: 0;
	  margin: 0 0 15px;
	  padding: 15px;
	  box-sizing: border-box;
	  font-size: 14px;
	}
	button {
	  font-family: "Roboto", sans-serif;
	  text-transform: uppercase;
	  outline: 0;
	  background: #4CAF50;
	  width: 100%;
	  border: 0;
	  padding: 15px;
	  color: #FFFFFF;
	  font-size: 14px;
	  -webkit-transition: all 0.3 ease;
	  transition: all 0.3 ease;
	  cursor: pointer;
	}
	button:hover,
	button:active,
	button:focus {
  		background: #43A047;
	}
</style>

<div class="page">
	<form  class="form"action="/test/index" method="GET" id="back">
	    <p>For Run in JSP: ${message}</p><br>
	    <button id="botton" type="submit">返回首頁</button>
	</form>
	
	<c:forEach var="data" items="${list}">
	    <div class="list">
	        <p class="show-data">ID: ${data.id}</p>
	        <p class="show-data">NAME: ${data.name}</p>
	        <form action="/test/update/${data.id}" method="POST">
	            <button id="update" type="submit">修改</button>
	        </form>
	        <form action="/test/delete/${data.id}" method="POST">
	            <button id="delete" type="submit">刪除</button>
	        </form>
	    </div>
	</c:forEach>
	
	
</div>
</body>
</html>
