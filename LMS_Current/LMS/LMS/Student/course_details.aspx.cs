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
            coursedetailsfcn();
            coursesyllabusfcn();
            
        }

        private void coursedetailsfcn()
        {
            if (Session["course_id"] != null)
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

            }
        }

        private void coursesyllabusfcn()
        {
            if(Session["course_id"] != null)
            {
                string courseid = Session["course_id"].ToString();
                int c_id = Int32.Parse(courseid);
                SqlConnection con = new SqlConnection(connectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand("select CModule_ID,CS_Week,CS_Module_Topic,CS_Desc from CourseModuleSyllabusDetails where Course_ID=@c_id", con);
                cmd.Parameters.AddWithValue("@c_id", c_id);
                cmd.ExecuteNonQuery();

                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                sda.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
                con.Close();
            }
            else
            {
                crs_msg.Text = "No Syllabus";
            }
            

            //DataTable dt = new DataTable();
            //SqlDataAdapter da = new SqlDataAdapter(cmd);
            //da.Fill(dt);
            //coursesyllabus.DataSource = dt;
            //coursesyllabus.DataBind();
            //con.Close();
        }

        protected void crs_register_Click(object sender, EventArgs e)
        {
            if(Session["course_id"] != null && Session["USER_ID"] != null)
            {
                string courseid = Session["course_id"].ToString();
                int c_id = Int32.Parse(courseid);
                string useremail = Session["USER_ID"].ToString();

                SqlConnection con = new SqlConnection(connectionString);
                con.Open();                

                SqlCommand usrtype = new SqlCommand("select learner_id from learnerDtl where email_id='" + useremail + "'", con);
                string result = (string)usrtype.ExecuteScalar();

                SqlCommand NoOfRecords = new SqlCommand("select COUNT(*) from course_register_details where learner_id='" + result + "' and Course_ID='" + c_id + "'", con);
                //con.Open();
                int tmp = Convert.ToInt32(NoOfRecords.ExecuteScalar().ToString());

                if(tmp == 1)
                {
                    crs_msg.Text = "You already registered for this course";
                    crs_msg.ForeColor= System.Drawing.Color.Red;
                }
                else
                {
                    SqlCommand cmd = new SqlCommand("insert into course_register_details (learner_id,Course_ID,Reg_Date) values (@learner_id,@Course_ID,@Reg_Date)", con);
                    cmd.Parameters.AddWithValue("@learner_id", result);
                    cmd.Parameters.AddWithValue("@Course_ID", c_id);
                    cmd.Parameters.AddWithValue("@Reg_Date", DateTime.Today);
                    int i = cmd.ExecuteNonQuery();

                    if (i != 0)
                    {
                        Response.Redirect("Index.aspx");
                    }
                    else
                    {
                        crs_msg.Text = "Can't register for the course.";

                    }
                }

                con.Close();
            }
        }
    }
}