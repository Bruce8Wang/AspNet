using System;
using System.Web.Http;
using System.Web.Http.SelfHost;

public class Program
{
    public static void Main(string[] args)
    {
        var config = new HttpSelfHostConfiguration("http://localhost:8080");
        config.Routes.MapHttpRoute("DefaultApi", "api/{controller}/{id}", new { id = RouteParameter.Optional });
        using (var server = new HttpSelfHostServer(config))
        {
            server.OpenAsync().Wait();
            Console.WriteLine("Press Enter to quit.");
            Console.ReadLine();
        }
    }
}
