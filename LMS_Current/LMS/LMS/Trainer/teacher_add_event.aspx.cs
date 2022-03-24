using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

namespace LMS
{
    public partial class teacher_add_event : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["USER_ID"] == null)
            //{
            //    Response.Redirect("HomePage.aspx");
            //}
        }
        //Atanu's string
        string connectionString = @"Data Source=DESKTOP-539AVIS\SQLEXPRESS;Initial Catalog=LMS;Integrated Security=True";
        //Nabonita's string
        //string connectionString = @"Data Source=DESKTOP-KAEBEC0\\SQLEXPRESS;Initial Catalog=LMS Project;Integrated Security=True";       

        protected void submit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connectionString);
            string imgpath;            
            FileUpload3.SaveAs(Request.PhysicalApplicationPath + "/event_image/" + FileUpload3.FileName.ToString());           
            imgpath = "/event_image/" + FileUpload3.FileName.ToString();
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into eventsDtl (e_name,e_desc,e_date,e_time,city,country,e_pimage,e_topic,e_end_time,e_status,e_link) values (@e_name,@e_desc,@e_date,@e_time,@city,@country,@e_pimage,@e_topic,@e_end_time,@e_status,@e_link)", con);
            cmd.Parameters.AddWithValue("@e_name", textevent_name.Text);
            cmd.Parameters.AddWithValue("@e_desc", textevent_description.Text);
            cmd.Parameters.AddWithValue("@e_date", textdate.Text);
            cmd.Parameters.AddWithValue("@e_time", texttime.Text);
            cmd.Parameters.AddWithValue("@city", textcity.Text);
            cmd.Parameters.AddWithValue("@country", textcountry.Text);
            cmd.Parameters.AddWithValue("@e_status", txt_event_status.Text);
            cmd.Parameters.AddWithValue("@e_topic", txtevent_topic.Text);
            cmd.Parameters.AddWithValue("@e_end_time", txtendtime.Text);
            cmd.Parameters.AddWithValue("@e_link", txteventlink.Text);
            cmd.Parameters.AddWithValue("@e_pimage",imgpath);

            int i = cmd.ExecuteNonQuery();

            if (i != 0)
            {
                // Response.Redirect("Admin.aspx");
                Label1.Text = "Successfully Registered...";
                Label1.ForeColor = System.Drawing.Color.Green;
            }

            con.Close();
            textevent_name.Text = "";
            textevent_description.Text = "";
            textdate.Text = "";
            texttime.Text = "";

            textcity.Text = "";
            textcountry.Text = "";
            
        }
    }
}