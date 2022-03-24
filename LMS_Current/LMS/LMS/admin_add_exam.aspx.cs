using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace LMS
{
    public partial class admin_add_exam : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        string connectionString = @"Data Source=DESKTOP-539AVIS\SQLEXPRESS;Initial Catalog=LMS;Integrated Security=True";
        //Nabonita's string
        //string connectionString = @"Data Source=DESKTOP-KAEBEC0\\SQLEXPRESS;Initial Catalog=LMS Project;Integrated Security=True";       

        protected void submit_Click(object sender, EventArgs e)
        {            
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into examDtl (e_name,e_date,start_time,end_time,e_course,e_status,e_link) values (@e_name,@e_date,@start_time,@e_duration,@e_course,@e_status,@e_link)", con);
            cmd.Parameters.AddWithValue("@e_name", textexam_name.Text);
            cmd.Parameters.AddWithValue("@e_date", textexam_date.Text);
            cmd.Parameters.AddWithValue("@start_time", textstart_time.Text);
            cmd.Parameters.AddWithValue("@e_duration", txtendtime.Text);
            cmd.Parameters.AddWithValue("@e_link", txtexamlink.Text);            
            cmd.Parameters.AddWithValue("@e_course", DropDownListcourse.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@e_status", ddexamstatus.SelectedItem.Value);
            cmd.ExecuteNonQuery();

            /*if (i != 0)
            {
                // Response.Redirect("Admin.aspx");
                Label1.Text = "Successfully Registered...";
                Label1.ForeColor = System.Drawing.Color.Green;
            }**/
            con.Close();
            Response.Redirect("Default.aspx");
            textexam_name.Text = "";
            textexam_date.Text = "";
            textstart_time.Text = "";
            txtendtime.Text = "";
            DropDownListcourse.SelectedValue = "";           

        }

    }
}