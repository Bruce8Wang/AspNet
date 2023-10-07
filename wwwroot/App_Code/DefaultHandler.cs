using System.Web;

public class DefaultHandler : IHttpHandler
{
    public void ProcessRequest(HttpContext context)
    {
        context.Response.ContentType = "text/plain;charset=utf-8";
        context.Response.Write("Hello 中華人民共和國 !");
    }

    public bool IsReusable
    {
        get { return false; }
    }
}
