<%@ Application Language="C#" %>
<%@ Import Namespace="Lab4" %>
<%@ Import Namespace="System.Web.Optimization" %>
<%@ Import Namespace="System.Web.Routing" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e)
    {
        RouteConfig.RegisterRoutes(RouteTable.Routes);
        BundleConfig.RegisterBundles(BundleTable.Bundles);

        Application["UserCount"] = 0;
    }
    void Session_Start(object sender, EventArgs e)
    {
        // Code that runs when a new session is started
        Application["UserCount"] = Convert.ToUInt32(Application["UserCount"]) + 1;

    }
    void Session_End(object sender, EventArgs e)
    {
        // Code that runs when a session ends.
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer
        // or SQLServer, the event is not raised.
        Application["UserCount"] = Convert.ToUInt32(Application["UserCount"]) - 1;
    }
</script>
