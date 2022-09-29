using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QL_SUKIEN
{
    public partial class user_chitietsk : System.Web.UI.Page
    {
        lopketnoi kn = new lopketnoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            HttpCookie cookie;
            HttpCookie cookie1 = Request.Cookies["login"];
            string sql;
            if (Request.Cookies["sk"] == null)
            {
                sql = "";
            }
               
            else
            {
                cookie = Request.Cookies["sk"];
                sql = "update nhanvien set masukien='" + cookie["msk"] + "' where tendangnhap='" + cookie1["username"] + "'";
                SqlCommand cm = new SqlCommand(sql, kn.cn);
                kn.cn.Open();
                cm.ExecuteNonQuery();
                kn.cn.Close();
                string sql2 = "select * from sukien,nhanvien where sukien.masukien =" + cookie["msk"]+" and nhanvien.tendangnhap='"+cookie1["username"]+"'";
                DataList1.DataSource = kn.getdata(sql2);
                DataList1.DataBind();
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["sk"];
            cookie.Value = null;
            string a = ((Button)sender).CommandArgument;
            string sql = "update nhanvien set masukien = NULL where manhanvien ='"+a+"'";
            SqlCommand cm = new SqlCommand(sql, kn.cn);
            kn.cn.Open();
            cm.ExecuteNonQuery();
            kn.cn.Close();
            Server.Transfer("user_danhsachsk.aspx");
        }
    }
}