using Microsoft.Owin.Cors;
using Microsoft.Owin.Hosting;
using Owin;
using System;

public class Program
{
	public static void Main(string[] args)
	{
		using (WebApp.Start("http://localhost:8080", app => {
			app.UseCors(CorsOptions.AllowAll);
			app.MapSignalR();
		})) {
			Console.WriteLine("Press Enter to quit.");
			Console.ReadLine();
		}
	}
}