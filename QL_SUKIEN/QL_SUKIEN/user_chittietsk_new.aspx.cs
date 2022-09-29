using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace QL_SUKIEN
{
    public partial class user_chittietsk_new : System.Web.UI.Page
    {
        lopketnoi kn = new lopketnoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            HttpCookie cookie = Request.Cookies["login"];
            string sql = "select * from nhanvien,sukien where nhanvien.masukien = sukien.masukien and tendangnhap ='"+cookie["username"]+"'";
            DataList1.DataSource = kn.getdata(sql);
            DataList1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string a = ((Button)sender).CommandArgument;
            string sql = "update nhanvien set masukien = NULL where manhanvien ='" + a+"'";
            SqlCommand cm = new SqlCommand(sql,kn.cn);
            kn.cn.Open();
            cm.ExecuteNonQuery();
            kn.cn.Close();
            Server.Transfer("user_danhsachsk.aspx");
        }
    }
}