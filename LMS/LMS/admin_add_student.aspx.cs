using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace LMS
{
    public partial class admin_add_student : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-KAEBEC0\\SQLEXPRESS;Initial Catalog=LMS Project;Integrated Security=True");

            string link = Path.GetFileName(FileUpload2.PostedFile.FileName);
            FileUpload2.SaveAs(Server.MapPath("~/Learner Images/" + link));

            con.Open();
            SqlCommand cmd = new SqlCommand("insert into learnerDtl (f_name,l_name,email_id,phone_no,password,c_password,city,country,l_pimage) values (@f_name,@l_name,@email_id,@phone_no,@password,@c_password,@city,@country,@l_pimage)", con);
            cmd.Parameters.AddWithValue("@f_name", textfirst_name.Text);
            cmd.Parameters.AddWithValue("@l_name", textlast_name.Text);
            cmd.Parameters.AddWithValue("@email_id", textemail_id.Text);
            cmd.Parameters.AddWithValue("@password", textpassword.Text);
            cmd.Parameters.AddWithValue("@c_password", textconfirm_password.Text);
            cmd.Parameters.AddWithValue("@phone_no", textphone_number.Text);
            cmd.Parameters.AddWithValue("@city", textcity.Text);
            cmd.Parameters.AddWithValue("@country", textcountry.Text);
            // cmd.Parameters.AddWithValue("@t_id", texttrainer_id.Text);
            cmd.Parameters.AddWithValue("@l_pimage", "Images/"+ link);

            int i = cmd.ExecuteNonQuery();

            if (i != 0)
            {
                // Response.Redirect("Admin.aspx");
                Label1.Text = "Successfully Registered...";
                Label1.ForeColor = System.Drawing.Color.Green;
            }
            con.Close();
            textfirst_name.Text = "";
            textlast_name.Text = "";
            textemail_id.Text = "";
            textpassword.Text = "";
            textconfirm_password.Text = "";
            textphone_number.Text = "";
            textcity.Text = "";
            textcountry.Text = "";
            //texttrainer_id.Text = "";
            link = "";

        }
    }
}