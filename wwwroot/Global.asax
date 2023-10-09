<%@ Application Language="C#" %>
<script runat="server">
	// 4个监听器事件	
	void Application_Start() {}
	void Session_Start() {}
	void Application_End() {}
	void Session_End() {}
	// 24个过滤器事件
	void Application_BeginRequest() { Context.SetSessionStateBehavior(SessionStateBehavior.Required);}	
	void Application_AuthenticateRequest() {}
	void Application_PostAuthenticateRequest() {}
	void Application_AuthorizeRequest() {}
	void Application_PostAuthorizeRequest() {}
	void Application_ResolveRequestCache() {}
	void Application_PostResolveRequestCache() {}
	void Application_MapRequestHandler() {}
	void Application_PostMapRequestHandler() {}
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
	}	
	void Application_PostAcquireRequestState() {}
	void Application_PreRequestHandlerExecute() {}
	void Application_PostRequestHandlerExecute(){}	
	void Application_ReleaseRequestState() {}
	void Application_PostReleaseRequestState() {}
	void Application_UpdateRequestCache() {}
	void Application_PostUpdateRequestCache() {}
	void Application_Error() {}	
	void Application_LogRequest() {}
	void Application_PostLogRequest() {}
	void Application_EndRequest() {}
	void Application_PreSendRequestContent() {}
	void Application_PreSendRequestHeaders() {}
	void Application_RequestCompleted() {}
</script>
