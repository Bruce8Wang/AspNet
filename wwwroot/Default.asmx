<%@ WebService Language="C#" Class="MyWebService" %>

using System.Collections.Generic;
using System.Web.Services;

[WebService]
public class MyWebService : WebService
{
    [WebMethod]
    public List<User> GetUser(string name)
    {
        return new List<User> { new User { Id = 1, Name = name }, new User { Id = 2, Name = "中华民国" } };
    }
}

public class User
{
    public int Id { get; set; }
    public string Name { get; set; }
}
