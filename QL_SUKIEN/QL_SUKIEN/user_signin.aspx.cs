using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace QL_SUKIEN
{
    public partial class user_signin : System.Web.UI.Page
    {
        lopketnoi kn = new lopketnoi();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {

            //string sql = "select * from account where username = '" + Login1.UserName+"' and userpass ='" + Login1.Password + "'";
            //SqlDataAdapter da = new SqlDataAdapter(sql,kn.cn);
            //DataTable dt = new DataTable();
            //da.Fill(dt);
            HttpCookie cookie = new HttpCookie("login");
            cookie["username"] = Login1.UserName;
            cookie["userpass"] = Login1.Password;
            Response.Cookies.Add(cookie);
            Response.Redirect("user_home.aspx");
        }
    }
}