<%@ WebHandler Language="C#" Class="MyWebHandler" %>

using System.Collections;
using System.Collections.Generic;
using System.Web;
using System.Web.Script.Serialization;

public class MyWebHandler : IHttpHandler
{
    public void ProcessRequest(HttpContext context)
    {
        string result = new JavaScriptSerializer { MaxJsonLength = int.MaxValue }.Serialize(GetUser(context.Request.QueryString["name"]));
        context.Response.ContentType = "application/json";
        context.Response.Write(result);
    }
    public bool IsReusable
    {
        get
        {
            return false;
        }
    }
    private List<User> GetUser(string name)
    {
        return new List<User> { new User { Id = 1, Name = name }, new User { Id = 2, Name = "中華民國" } };
    }	
}
            
public class User
{
    public int Id { get; set; }
    public string Name { get; set; }
}
