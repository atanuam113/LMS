using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace LMS.Student
{
    public partial class course_details : System.Web.UI.Page
    {
        //Atanu's string
        string connectionString = @"Data Source=DESKTOP-539AVIS\SQLEXPRESS;Initial Catalog=LMS;Integrated Security=True";
        //Nabonita's string
        //string connectionString = @"Data Source=DESKTOP-KAEBEC0\\SQLEXPRESS;Initial Catalog=LMS Project;Integrated Security=True";       

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["course_id"] != null)
            {
                string courseid = Session["course_id"].ToString();
                int c_id = Int32.Parse(courseid);
                SqlConnection con = new SqlConnection(connectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from CourseDetails where Course_ID=@c_id", con);
                cmd.Parameters.AddWithValue("@c_id", c_id);
                cmd.ExecuteNonQuery();

                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                coursedetails.DataSource = dt;
                coursedetails.DataBind();
                con.Close();
                coursesyllabusfcn();
            }
        }

        private void coursesyllabusfcn()
        {
            string courseid = Session["course_id"].ToString();
            int c_id = Int32.Parse(courseid);
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select CModule_ID,CS_Week,CS_Module_Topic,CS_Desc from CourseModuleSyllabusDetails where Course_ID=@c_id", con);
            cmd.Parameters.AddWithValue("@c_id", c_id);
            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            coursesyllabus.DataSource = dt;
            coursesyllabus.DataBind();
            con.Close();
        }
    }
}