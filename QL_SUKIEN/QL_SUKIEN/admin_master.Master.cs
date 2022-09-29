using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QL_SUKIEN
{
    public partial class admin_home : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void danhsachsukien_Click(object sender, EventArgs e)
        {
            Server.Transfer("admin_QL.aspx");
        }

        protected void danhsachnguoidangky_Click(object sender, EventArgs e)
        {
            Server.Transfer("admin_danhsachnhanviendk.aspx");
        }

        protected void themsukien_Click(object sender, EventArgs e)
        {
            Server.Transfer("admin_themsk.aspx");
        }

        protected void dx(object sender, EventArgs e)
        {
            Server.Transfer("select.aspx");
        }
    }
}