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
    public partial class admin_exam_details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindTextBoxvalues();
        }
        //Atanu's string
        string connectionString = @"Data Source=DESKTOP-539AVIS\SQLEXPRESS;Initial Catalog=LMS;Integrated Security=True";
        //Nabonita's string
        //string connectionString = @"Data Source=DESKTOP-KAEBEC0\\SQLEXPRESS;Initial Catalog=LMS Project;Integrated Security=True";       

        private void BindTextBoxvalues()
        {
            string exam = Request.QueryString["examid"];
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();            
            SqlCommand cmd1 = new SqlCommand("SELECT e_name,e_date,start_time,end_time,e_course FROM examDtl where exam_id='" + Session["EXAM_ID"] + "'", con);
            // DataSet ds = new DataSet();
            //DataTable dt = new DataTable();
            // SqlDataAdapter da = new SqlDataAdapter(cmd1);
            // da.SelectCommand = cmd1;
            SqlDataReader dr = cmd1.ExecuteReader();
            //da.Fill(dt);
            if (dr.Read())
            {
                textexam_name.Text = dr["e_name"].ToString();
                textexam_date.Text = dr["e_date"].ToString();
                textstart_time.Text = dr["start_time"].ToString();
                textduration.Text = dr["[end_time]"].ToString();
                textcourse_name.Text = dr["e_course"].ToString();
            }
            con.Close();

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-KAEBEC0\\SQLEXPRESS;Initial Catalog=LMS Project;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into examDtl (e_name,e_date,start_time,end_time,e_course) values (@e_name,@e_date,@start_time,@end_time,@e_course)", con);
            cmd.Parameters.AddWithValue("@e_name", textexam_name.Text);
            cmd.Parameters.AddWithValue("@e_date", textexam_date.Text);
            cmd.Parameters.AddWithValue("@start_time", textstart_time.Text);
            cmd.Parameters.AddWithValue("@end_time", textduration.Text);
            cmd.Parameters.AddWithValue("@e_course", DropDownListcourse.SelectedItem.Value);

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