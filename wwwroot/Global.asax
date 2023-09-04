<%@ Application Language="C#" %>
<script runat="server">
	// ４個 監聽器事件
	void Application_Start() { Console.WriteLine("哇塞，Application_Start！"); }
	void Session_Start() { Console.WriteLine("哇塞，Session_Start！"); }
	void Application_End() { Console.WriteLine("哇塞，Application_End！");}
	void Session_End() { Console.WriteLine("哇塞，Session_End！"); }
	
	// 25個 過濾器事件
	void Application_BeginRequest() { Context.SetSessionStateBehavior(SessionStateBehavior.Required); Console.WriteLine("哇塞，Application_BeginRequest！"); }	
	void Application_AuthenticateRequest() { Console.WriteLine("哇塞，Application_AuthenticateRequest！"); }
	void Application_PostAuthenticateRequest() { Console.WriteLine("哇塞，Application_PostAuthenticateRequest！"); }
	void Application_AuthorizeRequest() { Console.WriteLine("哇塞，Application_AuthorizeRequest！"); }
	void Application_PostAuthorizeRequest() { Console.WriteLine("哇塞，Application_PostAuthorizeRequest！"); }
	void Application_ResolveRequestCache() { Console.WriteLine("哇塞，Application_ResolveRequestCache！"); }
	void Application_PostResolveRequestCache() { Console.WriteLine("哇塞，Application_PostResolveRequestCache！"); }
	void Application_MapRequestHandler() { Console.WriteLine("哇塞，Application_MapRequestHandler！"); }
	void Application_PostMapRequestHandler() { Console.WriteLine("哇塞，Application_PostMapRequestHandler！"); }
	void Application_AcquireRequestState()
	{
		if (Request.Path != "/Login.aspx")
		{
			if (Session["loginName"] == null)
			{
				Response.StatusCode = 302;
				Response.Headers["Location"] = "/Login.aspx?redirect=" + Request.Path;
				Response.Clear();
				Response.End();
			}
			else
			{
				// 开始基于path、method、Session["loginName"] 进行鉴权
			}
		}	
		Console.WriteLine("哇塞，Application_AcquireRequestState！");
	}
	void Application_PostAcquireRequestState() { Console.WriteLine("哇塞，Application_PostAcquireRequestState！"); }
	void Application_PreRequestHandlerExecute() { Console.WriteLine("哇塞，Application_PreRequestHandlerExecute！"); }
	void Application_PostRequestHandlerExecute() { Console.WriteLine("哇塞，Application_PostRequestHandlerExecute！"); }
	void Application_ReleaseRequestState() { Console.WriteLine("哇塞，Application_ReleaseRequestState！"); }
	void Application_PostReleaseRequestState() { Console.WriteLine("哇塞，Application_PostReleaseRequestState！"); }
	void Application_UpdateRequestCache() { Console.WriteLine("哇塞，Application_UpdateRequestCache！"); }
	void Application_PostUpdateRequestCache() { Console.WriteLine("哇塞，Application_PostUpdateRequestCache！"); }
	void Application_Error() { Console.WriteLine("哇塞，Application_Error！"); }	
	void Application_LogRequest() { Console.WriteLine("哇塞，Application_LogRequest！"); }
	void Application_PostLogRequest() { Console.WriteLine("哇塞，Application_PostLogRequest！"); }
	void Application_EndRequest() { Console.WriteLine("哇塞，Application_EndRequest！"); }
	void Application_PreSendRequestContent() { Console.WriteLine("哇塞，Application_PreSendRequestContent！"); }
	void Application_PreSendRequestHeaders() { Console.WriteLine("哇塞，Application_PreSendRequestHeaders！"); }
	void Application_RequestCompleted() { Console.WriteLine("哇塞，Application_RequestCompleted！"); }
	void Application_Disposed() { Console.WriteLine("哇塞，Application_Disposed！"); }		
</script>
