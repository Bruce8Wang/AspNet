<%@ Page Language="C#" %>
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
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<link href="https://cdn.staticfile.org/bootstrap/5.3.2/css/bootstrap.min.css" rel="stylesheet">	
	<script src="https://cdn.staticfile.org/bootstrap/5.3.2/js/bootstrap.bundle.min.js"></script>	
</head>
<body>
<fieldset>
  <legend>用户状态</legend>
  <form method="post">
    当前用户已登录，登录名：<%= Session["loginName"] %>
    <button type="submit" name="submit" value="logout">退出</button>
  </form>
</fieldset>
</body>
</html>
