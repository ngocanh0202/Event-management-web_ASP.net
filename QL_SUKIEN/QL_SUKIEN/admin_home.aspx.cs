using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QL_SUKIEN
{
    
    public partial class admin_home1 : System.Web.UI.Page
    {
        lopketnoi kn = new lopketnoi();
        public DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            string sqlDT = "select * from sukien";
            dt = kn.getdata(sqlDT);
            HttpCookie cookie = Request.Cookies["login"];
            string datasqladmin = "select * from accadmin where tendangnhap = '"+ cookie["username"].ToString() +"'";
            SqlConnection conn = new SqlConnection(kn.a);
            SqlCommand cmd = new SqlCommand(datasqladmin, conn);
            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                Label1.Text = reader["tendangnhap"].ToString();
            }
            reader.Close();
            conn.Close();
            if(Label1.Text == "")
            {
                Server.Transfer("admin_signin.aspx");

            }
        }
    }
}