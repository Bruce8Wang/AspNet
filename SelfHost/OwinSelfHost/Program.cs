using Microsoft.Owin.Hosting;
using Owin;
using System;
using System.Web.Http;

public class Program
{
    public static void Main(string[] args)
    {
        using (WebApp.Start("http://localhost:8080/", app =>
        {
            var config = new HttpConfiguration();
            config.Routes.MapHttpRoute("DefaultApi", "api/{controller}/{id}", new { id = RouteParameter.Optional });
            app.UseWebApi(config);
        }))
        {
            Console.WriteLine("Press Enter to quit.");
            Console.ReadLine();
        }
    }
}
