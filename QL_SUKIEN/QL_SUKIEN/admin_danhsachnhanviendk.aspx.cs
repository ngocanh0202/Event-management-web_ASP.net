using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QL_SUKIEN
{
    public partial class admin_danhsachnhanviendk : System.Web.UI.Page
    {
        lopketnoi kn = new lopketnoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            string sql = "select *  from nhanvien, sukien where nhanvien.masukien = sukien.masukien";
            GridView1.DataSource = kn.getdata(sql);
            GridView1.DataBind();
        }
    }
}