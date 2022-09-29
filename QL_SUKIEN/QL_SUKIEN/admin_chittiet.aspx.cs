using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace QL_SUKIEN
{
    public partial class admin_chittiet : System.Web.UI.Page
    {
        lopketnoi kn = new lopketnoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            string sql;
            if(Context.Items["msk"]==null)
                sql = "select * from sukien";
            else
                sql = "select * from sukien where masukien =" + Context.Items["msk"];
            DataList1.DataSource = kn.getdata(sql);
            DataList1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string a = ((Button)sender).CommandArgument;
            string sql = "delete from sukien where masukien ="+a;
            SqlCommand cm = new SqlCommand(sql,kn.cn);
            kn.cn.Open();
            cm.ExecuteNonQuery();
            kn.cn.Close();
            Server.Transfer("admin_QL.aspx");
        }
    }
}