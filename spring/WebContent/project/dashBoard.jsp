<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>usernameusernameusernameusername
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
@charset "utf-8";
/* CSS Document */

body {
	font: 0.8em "Lucida Sans Unicode", "Lucida Grande", Arial, Helvetica, sans-serif;
	color: #343434;
	background: #121212;
	margin: 0;
	padding: 0;
}
#wrapper {
	width: 710px;
	margin: 30px auto;	
	padding: 55px 25px 25px 25px;
	border: 12px solid #2e2e2e;
	position:relative;
}
h1 {
	text-transform: uppercase;
	text-align: center;
	margin: 0;
	padding: 0.3em 0;
	text-indent:-99999px;
}
#nav {
	list-style: none;
	padding: 0;
	margin: 10px 0 20px 0;	
	display: block;
	overflow: hidden;
	font-size: 0.9em;
	height:33px;
	text-transform:capitalize;
}
#nav li {
	display: inline;
}
#nav li a {
	display: block;
	float: left;
	padding: 10px 20px;
	color: white;
	text-decoration: none;
}
#nav li a:hover {
	background: #1b1b1b url(../images/nav_bar_o.jpg) repeat-x;
}
#load {
	display: none;
	position: absolute;
	right: 10px;
	top: 10px;	
	width: 43px;
	height: 11px;
	text-indent: -9999em;
}

#content {
}
h2 {
	margin: 0;
	padding: 0.5em 0;
	color:#568945;
	font-family:Helvetica, Arial, Sans-serif;
}
p {
	margin: 0;
	padding: 0.4em 0;
	color:#686868;
	line-height:1.4em;
}
#content img.right {
	float: right;
	margin: 0 0 8px 8px;

}
#foot {
	padding: 15px;
	color: white;
	text-align: center;
	margin: 30px 0 0 0;
	border-top:1px solid #222222;
}


</style>
<title>DashBorad-${user.username}</title>
</head>
<body>
    <div id="wrapper">    
    <ul id="nav">
        <li><a href="">welcome</a></li>
        <li><a href="">User</a></li>
        <li><a href="">portfolio</a></li>
        <li><a href="">contact</a></li>
        
    </ul>    
    <div id="content">    	
        <h2>Welcome!</h2>
        <p>Hi, welcome to the demonstration for the Spring tutorial"</p>        
    </div>
    <div id="foot">Designed by Ganesan</div>
</div>
</body>
</html>