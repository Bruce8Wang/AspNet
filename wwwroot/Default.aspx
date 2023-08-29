<%@ Page Language="C#" %>
<!--#include file="include.aspx" -->
<%
	if (Request.HttpMethod == "POST" && Request.Form["submit"] == "logout" ) 
	{
		Session.Abandon();
		Response.StatusCode = 302;
		Response.Headers["Location"] = "/Login.aspx?redirect=" + Request.Path;
		Response.Clear();
		Response.End();		
	}
%>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>Home Page</title>
	<link href="https://cdn.staticfile.org/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
	<link href="https://cdn.staticfile.org/bootstrap-treeview/1.2.0/bootstrap-treeview.min.css" rel="stylesheet">
	<script src="https://cdn.staticfile.org/jquery/3.7.0/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/jquery-validate/1.19.5/jquery.validate.min.js"></script>
	<script src="https://cdn.staticfile.org/jquery-validation-unobtrusive/4.0.0/jquery.validate.unobtrusive.min.js"></script>
	<script src="https://cdn.staticfile.org/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
	<script src="https://cdn.staticfile.org/bootstrap-treeview/1.2.0/bootstrap-treeview.min.js"></script>
</head>
<body>
<fieldset>
  <legend>用户状态</legend>
  <form method="post">
    当前用户已登录，登录名：<%= Session["loginName"] %>
    <button type="submit" name="submit" value="logout">退出</button>
  </form>
</fieldset>
<%=msg%>
</body>
</html>