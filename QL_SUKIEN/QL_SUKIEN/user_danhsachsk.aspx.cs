using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QL_SUKIEN
{
    public partial class user_danhsachsk : System.Web.UI.Page
    {
        lopketnoi kn = new lopketnoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            string sql;
            if(Context.Items["msk2"]==null)
                sql = "select * from sukien";
            else
                sql = "select * from sukien where masukien ="+Context.Items["msk2"]+"";
            DataList1.DataSource = kn.getdata(sql);
            DataList1.DataBind();
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Context.Items["msk2"] = TextBox1.Text;
            Server.Transfer("user_danhsachsk.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string a = ((Button)sender).CommandArgument;
            HttpCookie cookie = new HttpCookie("sk");
            cookie["msk"] = a;
            Response.Cookies.Add(cookie);
            Response.Redirect("user_chitietsk.aspx");
        }
    }
}