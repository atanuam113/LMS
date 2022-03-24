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
    public partial class admin_add_teacher : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //Atanu's string
        string connectionString = @"Data Source=DESKTOP-539AVIS\SQLEXPRESS;Initial Catalog=LMS;Integrated Security=True";
        //Nabonita's string
        //string connectionString = @"Data Source=DESKTOP-KAEBEC0\\SQLEXPRESS;Initial Catalog=LMS Project;Integrated Security=True";       
        protected void submit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connectionString);

            //string link = Path.GetFileName(FileUpload1.PostedFile.FileName);
            //FileUpload1.SaveAs(Server.MapPath("~/Trainer Images/" + link));
            string imgpath;
            FileUpload1.SaveAs(Request.PhysicalApplicationPath + "/Trainer_Images/" + FileUpload1.FileName.ToString());
            imgpath = "/Trainer_Images/" + FileUpload1.FileName.ToString();

            con.Open();
            SqlCommand cmd = new SqlCommand("insert into trainerDtl (f_name,l_name,email_id,phone_no,password,city,country,t_pimage,t_status,t_gender,date) values (@f_name,@l_name,@email_id,@phone_no,@password,@city,@country,@t_pimage,@t_status,@t_gender,@date)", con);
            cmd.Parameters.AddWithValue("@f_name", textfirst_name.Text);
            cmd.Parameters.AddWithValue("@l_name", textlast_name.Text);
            cmd.Parameters.AddWithValue("@email_id", textemail_id.Text);
            cmd.Parameters.AddWithValue("@phone_no", textphone_number.Text);
            cmd.Parameters.AddWithValue("@password", textpassword.Text);            
            cmd.Parameters.AddWithValue("@city", textcity.Text);
            cmd.Parameters.AddWithValue("@country", textcountry.Text);           
            cmd.Parameters.AddWithValue("@t_pimage",imgpath);
            cmd.Parameters.AddWithValue("@t_status", "Active");
            cmd.Parameters.AddWithValue("@t_gender", txtgender.Text);
            cmd.Parameters.AddWithValue("@date", txtdob.Text);

            int i = cmd.ExecuteNonQuery();

            if (i != 0)
            {
                // Response.Redirect("Admin.aspx");
                Label1.Text = "Successfully Registered...";
                Label1.ForeColor = System.Drawing.Color.Green;
            }
            con.Close();
            add_loginDtl();
            Response.Redirect("Default.aspx");

        }

        private void add_loginDtl()
        {
            SqlConnection con = new SqlConnection(connectionString);

            con.Open();
            SqlCommand cmd1 = new SqlCommand("insert into loginDtl (email_id,password,c_password,user_type,status) values (@email_id,@password,@c_password,@user_type,@status)", con);

            cmd1.Parameters.AddWithValue("@email_id", textemail_id.Text);
            cmd1.Parameters.AddWithValue("@user_type", "Trainer");
            cmd1.Parameters.AddWithValue("@password", textpassword.Text);
            cmd1.Parameters.AddWithValue("@c_password", textconfirm_password.Text);
            cmd1.Parameters.AddWithValue("@status", "Active");
            cmd1.ExecuteNonQuery();
            con.Close();
        }
    }
}