<%@ Page Language="C#" %>
<%
    String result = "";
    if (Request.HttpMethod == "POST" && Request.Form["submit"] == "logon")
    {
        if (Request.Form["name"] == "admin" && Request.Form["password"] == "123")
        {
            Session["loginName"] = "admin";
            Response.StatusCode = 302;
            Response.Headers["Location"] = Request.QueryString["redirect"];
            Response.Clear();
            Response.End();
        }
        else
        {
            result = "账号或密码错误!";
        }
    }
%>
<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<script src="https://cdn.staticfile.org/jquery/3.7.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/jquery-validate/1.19.5/jquery.validate.min.js"></script>
	<script src="https://cdn.staticfile.org/jquery-validation-unobtrusive/4.0.0/jquery.validate.unobtrusive.min.js"></script>
	<script src="https://cdn.staticfile.org/bootstrap/5.3.1/js/bootstrap.bundle.min.js"></script>
	<link href="https://cdn.staticfile.org/bootstrap/5.3.1/css/bootstrap.min.css" rel="stylesheet">	
</head>
<body>
<form method="post">
  <label>姓名:
    <input type="text" name="name" value="<%=Request.Form["name"]==null?"admin":Request.Form["name"]%>" />
  </label>
  <br>
  <label>密码:
    <input type="password" name="password" value="<%=Request.Form["password"]==null?"123":Request.Form["password"]%>" />
  </label>
  <br>
  <button type="submit" name="submit" value="logon">登录</button>
  <br>
  <span style="color: red"><%=result%></span>
</form>
</body>
</html>
