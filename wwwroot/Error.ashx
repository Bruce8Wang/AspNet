<%@ WebHandler Language="C#" Class="MyError" %>

using System;
using System.Web;

public class MyError : IHttpHandler
{
    public void ProcessRequest(HttpContext context)
    {
		throw new Exception("Fuck you !");
    }
    public bool IsReusable
    {
        get
        {
            return false;
        }
    }
}