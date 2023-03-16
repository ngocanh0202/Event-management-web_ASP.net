using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QL_SUKIEN
{
    public partial class user_masterpage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void thongtintaikhoan_Click(object sender, EventArgs e)
        {
            Server.Transfer("user_home.aspx");
        }

        protected void danhsachsukien_Click(object sender, EventArgs e)
        {
            Server.Transfer("user_danhsachsk.aspx");
        }

        protected void sukiendangky_Click(object sender, EventArgs e)
        {
            Server.Transfer("user_chitietsk.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Server.Transfer("user_chittietsk_new.aspx");
        }
        protected void dx(object sender, EventArgs e)
        {
            Server.Transfer("index.aspx");
        }
    }
}