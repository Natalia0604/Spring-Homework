<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<html>
<head>
    <title>index page</title>
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
	<form class="login-form" action="/test/add" method="POST">
	    <p>For Run in JSP: ${message}</p>
	    <!-- hidden 傳遞資料用的 -->
	    <input type='hidden' name='num'>
	    <input type='hidden' id='act' name='act' value='add'>
	    <hr/>
	    <input type='text' id='id' name='id' placeholder="Id" required>
	    <input type='text' name='name' placeholder="Name" required>
	    <button type="submit" value="送出">送出</button>
	</form>
	<form class="checkout-form" action="/test/all" method="POST">
	    <button  type="submit" value="提交">查看</button>
	</form>
</div>
</body>
</html>
