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
    public partial class my_courses : System.Web.UI.Page
    {
        //Atanu's string
        string connectionString = @"Data Source=DESKTOP-539AVIS\SQLEXPRESS;Initial Catalog=LMS;Integrated Security=True";
        //Nabonita's string
        //string connectionString = @"Data Source=DESKTOP-KAEBEC0\\SQLEXPRESS;Initial Catalog=LMS Project;Integrated Security=True";       

        protected void Page_Load(object sender, EventArgs e)
        {
            Registered_Course();
        }
        private void Registered_Course()
        {
            if (Session["USER_ID"] != null)
            {
                string useremail = Session["USER_ID"].ToString();

                SqlConnection con = new SqlConnection(connectionString);
                con.Open();

                SqlCommand learner_id = new SqlCommand("select learner_id from learnerDtl where email_id='" + useremail + "'", con);
                string result = (string)learner_id.ExecuteScalar();


                //SqlCommand course_id_list = new SqlCommand("select Course_ID from course_register_details where learner_id='" + result + "'", con);
                //int c_id_array = (int)course_id_list.ExecuteScalar();

                SqlCommand course_id_list = new SqlCommand("declare @tmp varchar(250) SET @tmp = '' select @tmp = @tmp + cast(Course_ID as Varchar) + ',' from course_register_details where learner_id='" + result + "' select SUBSTRING(@tmp, 0, LEN(@tmp))", con);
                String c_id_array = (String)course_id_list.ExecuteScalar();

                SqlCommand coursedetails = new SqlCommand("select * from CourseDetails where Course_ID IN(" + c_id_array + ")", con);
                coursedetails.ExecuteNonQuery();

                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(coursedetails);
                da.Fill(dt);
                mycourse.DataSource = dt;
                mycourse.DataBind();
                con.Close();
            }

        }

        protected void txtallcrs_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            string courseid = btn.CommandArgument;
            Session["course_id"] = courseid;
            Response.Redirect("course_details.aspx");
        }
    }
}