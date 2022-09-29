using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QL_SUKIEN
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        lopketnoi kn = new lopketnoi();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sql;
            string a = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=" + Server.MapPath("/App_Data/QLSUKIEN.mdf") + ";Integrated Security=True";
            SqlConnection cn = new SqlConnection(a);
            cn.Open();
            if (FileUpload1.FileName.ToString() == "")
            {
                sql = "insert into sukien(masukien,tensukien,ngaydienra,ngayketthuc,mota) values(@msk,@tsk,@ndr,@nkt,@mt)";
                
            }
            else
            {
                FileUpload1.SaveAs(Request.PhysicalApplicationPath + "/img/" + FileUpload1.FileName.ToString());
                sql = "insert into sukien(masukien,tensukien,ngaydienra,ngayketthuc,mota,hinhanh) values(@msk,@tsk,@ndr,@nkt,@mt,@ha)";
            }
            SqlCommand cm = new SqlCommand(sql, cn);
            cm.Parameters.AddWithValue("@msk", TextBox1.Text);
            cm.Parameters.AddWithValue("@tsk", TextBox2.Text);
            cm.Parameters.AddWithValue("@ndr", TextBox3.Text);
            cm.Parameters.AddWithValue("@nkt", TextBox4.Text);
            cm.Parameters.AddWithValue("@mt", TextBox5.Text);
            if(FileUpload1.FileName.ToString()!="")
                cm.Parameters.AddWithValue("@ha", FileUpload1.FileName.ToString());
            cm.ExecuteNonQuery();
            cn.Close();
            Server.Transfer("admin_QL.aspx");
        }
    }
}