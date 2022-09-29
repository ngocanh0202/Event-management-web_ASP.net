using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace QL_SUKIEN
{
    public class lopketnoi:System.Web.UI.Page
    {
        public SqlConnection cn;
        public string a = "";
        public lopketnoi()
        {
            a = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename="+Server.MapPath("/App_Data/QLSUKIEN.mdf") +";Integrated Security=True";
            cn = new SqlConnection(a);
        }
        public DataTable getdata(string a)
        {
            SqlDataAdapter da = new SqlDataAdapter(a,cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
        public void update(string a)
        {
            SqlCommand cm = new SqlCommand(a, cn);
            cn.Open();
            cm.ExecuteNonQuery();
            cn.Close();    
        }
    }
}
