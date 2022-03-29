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
    public partial class Student_Course : System.Web.UI.Page
    {
        //Atanu's string
        string connectionString = @"Data Source=DESKTOP-539AVIS\SQLEXPRESS;Initial Catalog=LMS;Integrated Security=True";
        //Nabonita's string
        //string connectionString = @"Data Source=DESKTOP-KAEBEC0\\SQLEXPRESS;Initial Catalog=LMS Project;Integrated Security=True";       

        protected void Page_Load(object sender, EventArgs e)
        {
            Profiledetails();
            Registered_Course();
        }

        private void Registered_Course()
        {
            if (Session["USER_ID"] != null)
            {
                //string eventid = Session["event_register_id"].ToString();
                //int e_id = Int32.Parse(eventid);
                string useremail = Session["USER_ID"].ToString();

                SqlConnection con = new SqlConnection(connectionString);
                con.Open();

                SqlCommand learner_id = new SqlCommand("select learner_id from learnerDtl where email_id='" + useremail + "'", con);
                string result = (string)learner_id.ExecuteScalar();


                SqlCommand course_id_list = new SqlCommand("select Course_ID from course_register_details where learner_id='" + result + "'", con);
                int c_id_array = (int)course_id_list.ExecuteScalar();

                SqlCommand coursedetails = new SqlCommand("select * from CourseDetails where Course_ID IN(@c_id_array)",con);
                coursedetails.Parameters.AddWithValue("@c_id_array", c_id_array);
                coursedetails.ExecuteNonQuery();

                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(coursedetails);
                da.Fill(dt);
                std_course.DataSource = dt;
                std_course.DataBind();
                con.Close();


            }
        }

        private void Profiledetails()
        {
            if (Session["USER_ID"] != null)
            {
                string userid = Session["USER_ID"].ToString();
                SqlConnection con = new SqlConnection(connectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from learnerDtl where email_id='" + userid + "'", con);
                cmd.ExecuteNonQuery();

                //con.Open();

                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                sda.Fill(ds);
                profile_details.DataSource = ds;
                profile_details.DataBind();
                con.Close();

            }
        }

    }
}