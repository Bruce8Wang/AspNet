using System.Web;
using System.Web.SessionState;

public class DefaultModule : IHttpModule
{
    public void Init(HttpApplication app)
    {
        app.BeginRequest += (sender, e) =>
        {
            HttpContext context = HttpContext.Current;
            context.SetSessionStateBehavior(SessionStateBehavior.Required);
        };
    }

    public void Dispose()
    {}
}
