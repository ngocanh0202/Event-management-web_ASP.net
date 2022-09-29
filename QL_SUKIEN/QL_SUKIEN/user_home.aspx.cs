using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QL_SUKIEN
{
    public partial class user_home : System.Web.UI.Page
    {
        lopketnoi kn = new lopketnoi();
        public DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            HttpCookie cookie = Request.Cookies["login"];
            if (cookie == null)
                return;
            string a = "select * from nhanvien where tendangnhap='" + cookie["username"]+"' and matkhau ='"+cookie["userpass"]+"'";
            DataList1.DataSource = kn.getdata(a);
            DataList1.DataBind();
            string sqlDT = "select * from sukien";
            dt = kn.getdata(sqlDT);
        }
    }
}