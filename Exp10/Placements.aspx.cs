using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Exp10
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection sc = new SqlConnection();
            SqlCommand com = new SqlCommand();
            sc.ConnectionString = @"Data Source=DESKTOP-FSTBC5S;Initial Catalog=Placements;Integrated Security=True";
            sc.Open();
            com.Connection = sc;
            com.CommandText = (@"INSERT INTO placements (Company, Role, Pay) VALUES (@c,@r,@p);");

            com.Parameters.Add("@c", System.Data.SqlDbType.VarChar, 255, "Company").Value = TextBox1.Text;
            com.Parameters.Add("@r", System.Data.SqlDbType.VarChar, 255, "Role").Value = TextBox2.Text;
            com.Parameters.Add("@p", System.Data.SqlDbType.Int, 4, "Pay").Value = TextBox3.Text;
            com.ExecuteNonQuery();
            sc.Close();

            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string str = @"Data Source=DESKTOP-FSTBC5S;Initial Catalog=Placements;Integrated Security=True";
            SqlConnection conn = new SqlConnection(str);
            conn.Open();
            SqlCommand Del = new SqlCommand("Delete from placements where Company=@c", conn);
            Del.Parameters.Add("@c", System.Data.SqlDbType.VarChar, 50, "Company").Value = TextBox4.Text;
            int result = Del.ExecuteNonQuery();
            conn.Close();
            GridView1.DataBind();
            string dis = "Deletion is done";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + dis + "');", true);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string str = @"Data Source=DESKTOP-FSTBC5S;Initial Catalog=Placements;Integrated Security=True";
            SqlConnection conn = new SqlConnection(str);
            conn.Open();
            SqlCommand upd = new SqlCommand("Update placements SET Role=@r where Company=@c", conn);
            upd.Parameters.Add("@c", System.Data.SqlDbType.VarChar, 50, "Company").Value = TextBox5.Text;
            upd.Parameters.Add("@r", System.Data.SqlDbType.VarChar, 50, "Role").Value = TextBox6.Text;
            int result = upd.ExecuteNonQuery();
            conn.Close();
            GridView1.DataBind();
            string dis = "Updation is done";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + dis + "');", true);
        }
    }
}