using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QL_SUKIEN
{
    public partial class admin_QL : System.Web.UI.Page
    {
        lopketnoi kn = new lopketnoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            string sql = "select * from sukien";
            GridView1.DataSource = kn.getdata(sql);
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "")
                Server.Transfer("admin_QL.aspx");
            else
                Context.Items["msk"] = TextBox1.Text;
            Server.Transfer("admin_chittiet.aspx");
        }
    }
}