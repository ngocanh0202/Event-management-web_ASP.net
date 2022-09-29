using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QL_SUKIEN
{
    public partial class admin_signin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            HttpCookie cookie = new HttpCookie("login");
            cookie["username"] = Login1.UserName;
            cookie["userpass"] = Login1.Password;
            Response.Cookies.Add(cookie);
            Response.Redirect("admin_home.aspx");
        }
    }
}