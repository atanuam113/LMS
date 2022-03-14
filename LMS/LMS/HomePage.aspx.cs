using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data;
using System.Data.SqlClient;

namespace LMSSolution12
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void login_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-KAEBEC0\\SQLEXPRESS;Initial Catalog=LMS Project;Integrated Security=True");

            con.Open();
            SqlCommand cmd = new SqlCommand("select * from adminDtl where email_id=@email and password=@password", con);
            cmd.Parameters.AddWithValue("@email", textuserid.Text);
            cmd.Parameters.AddWithValue("@password", textpassword.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            cmd.ExecuteNonQuery();

            if (dt.Rows.Count > 0)
            {
                Response.Redirect("Default.aspx");
                //Label1.Text = "Login sucessfully...";
            }
            else
            {
                Label1.Text = "Login sucessfully is not done...";
            }
           // con.Open();
              SqlCommand cmd1 = new SqlCommand("select * from loginDtl where email_id=@email and password=@password and status='Inactive'", con);
              cmd1.Parameters.AddWithValue("@email", textuserid.Text);
              cmd1.Parameters.AddWithValue("@password", textpassword.Text);
              SqlDataAdapter sda1 = new SqlDataAdapter(cmd1);
            //  DataTable dt1 = new DataTable();
              sda1.Fill(dt);
              cmd1.ExecuteNonQuery();
           // con.Close();
            if (dt.Rows.Count > 0)
              {
                  // Response.Redirect("Default.aspx");
                  Label1.Text = "user is not active yet...";
                  
              }
              else
              {
                  Label1.Text = "Login sucessfully...";
              }

            con.Close();
            textuserid.Text = "";
            textpassword.Text = "";

        }

        protected void textpassword_TextChanged(object sender, EventArgs e)
        {

        }

        protected void registration_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }
    }
}