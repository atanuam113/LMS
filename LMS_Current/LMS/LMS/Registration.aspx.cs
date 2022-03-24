using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace LMSSolution12
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Nabanita's connection string
            //SqlConnection con = new SqlConnection("Data Source=DESKTOP-KAEBEC0\\SQLEXPRESS;Initial Catalog=LMS Project;Integrated Security=True");
            
            //Atanu's connection string
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-539AVIS\\SQLEXPRESS;Initial Catalog=LMS;Integrated Security=True");
            con.Open();
            SqlCommand cmd1 = new SqlCommand("select * from loginDtl where email_id=@email_id and user_type=@user_type", con);
            cmd1.Parameters.AddWithValue("@email_id", textemail_id.Text);
            cmd1.Parameters.AddWithValue("@user_type", textusertype.SelectedItem.Value);
            SqlDataAdapter sda = new SqlDataAdapter(cmd1);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            int j = cmd1.ExecuteNonQuery();

            if (dt.Rows.Count > 0)
            {
                // Response.Redirect("Admin.aspx");
                Label2.ForeColor = System.Drawing.Color.Red;
                Label2.Text = "User is already exist....";
               
            }
            else
            {
                SqlCommand cmd = new SqlCommand("insert into loginDtl (email_id,password,c_password,user_type,status) values (@email_id,@password,@c_password,@user_type,@status)", con);
                
                cmd.Parameters.AddWithValue("@email_id", textemail_id.Text);
                cmd.Parameters.AddWithValue("@password", textpassword.Text);
                cmd.Parameters.AddWithValue("@c_password", textconfirm_password.Text);
                cmd.Parameters.AddWithValue("@user_type", textusertype.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@status", "Inactive");

                cmd.ExecuteNonQuery();
                
                Response.Redirect("HomePage.aspx");
                Label2.Text = "Successfully Registered...";
                Label2.ForeColor = System.Drawing.Color.Green;
                
                //else
                //{
                //    Label2.Text = "Login sucessfully is not done...";
                //    Label2.ForeColor = System.Drawing.Color.Red;
                //}
            }
                con.Close();
                textemail_id.Text = "";
                textconfirm_password.Text = "";
                textpassword.Text = "";
                textusertype.SelectedValue = "";
            
        }
    }
}