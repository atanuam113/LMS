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

        protected void submit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-KAEBEC0\\SQLEXPRESS;Initial Catalog=LMS Project;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into examDtl (e_name,e_date,start_time,e_duration,e_course) values (@e_name,@e_date,@start_time,@e_duration,@e_course)", con);
            cmd.Parameters.AddWithValue("@e_name", textexam_name.Text);
            cmd.Parameters.AddWithValue("@e_date", textexam_date.Text);
            cmd.Parameters.AddWithValue("@start_time", textstart_time.Text);
            cmd.Parameters.AddWithValue("@e_duration", textduration.Text);
            cmd.Parameters.AddWithValue("@e_course",DropDownListcourse.SelectedItem.Value );

            cmd.ExecuteNonQuery();

            /*if (i != 0)
            {
                // Response.Redirect("Admin.aspx");
                Label1.Text = "Successfully Registered...";
                Label1.ForeColor = System.Drawing.Color.Green;
            }**/
            con.Close();
            textexam_name.Text = "";
            textexam_date.Text = "";
            textstart_time.Text = "";
            textduration.Text = "";
            DropDownListcourse.SelectedValue = "";
          
        }
    }
}