using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace asp.net1
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {

        }
        protected void Application_BeginRequest(object sender,EventArgs e)
        {
          //  HttpContext.Current.Response.Write("hello- begin request");
        }
        protected void Application_EndRequest(object sender, EventArgs e)
        {
           // HttpContext.Current.Response.Write("hello- end request");
        }
    }
}