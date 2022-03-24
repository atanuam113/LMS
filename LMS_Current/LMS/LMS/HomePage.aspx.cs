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

        //Atanu's string
        string connectionString = @"Data Source=DESKTOP-539AVIS\SQLEXPRESS;Initial Catalog=LMS;Integrated Security=True";
        //Nabonita's string
        //string connectionString = @"Data Source=DESKTOP-KAEBEC0\\SQLEXPRESS;Initial Catalog=LMS Project;Integrated Security=True";       

        protected void login_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connectionString);
            string loginuser = textuserid.Text.Trim();
            
            SqlCommand cmd = new SqlCommand("select COUNT(*) from loginDtl where email_id='" + textuserid.Text + "' and password='" + textpassword.Text + "'", con);
            con.Open();
            int tmp = Convert.ToInt32(cmd.ExecuteScalar().ToString());            
            
            SqlCommand usrtype = new SqlCommand("select user_type from loginDtl where email_id='" + textuserid.Text + "'",con);            
            string result = (string)usrtype.ExecuteScalar();
            if (tmp == 1 && result == "Trainer")
            {
                Session["USER_ID"] = loginuser;
                Response.Redirect("Trainer/Teacher_Default.aspx");
            }
            else if (tmp == 1 && result == "Admin")
            {
                Session["USER_ID"] = loginuser;
                Response.Redirect("Default.aspx");
            }
            else if(tmp == 1 && result == "Learner")
            {
                Session["USER_ID"] = loginuser;
                Response.Redirect("Student/Index.aspx");
            }
            else
            {
                Label1.Text = "Userid or password is wrong !";
                textuserid.Text = "";
                textpassword.Text = "";
            }
            con.Close();
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