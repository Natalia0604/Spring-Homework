<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<html>
<head>
    <title>add new data page</title>
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
	<form class='form' action="/test/result" method="POST">
	    <p>For Run in JSP: ${message}</p>
	    <input type="hidden" name="id" value="${id}">
	    <input type="hidden" name="name" value="${name}">
	    <hr/>
	    <p class="show-data">ID: ${id}</p> 
	    <p class="show-data">NAME: ${name}</p> 
	    <button type="submit" value="確認">確認</button>
	</form>
</div>
</body>
</html>

