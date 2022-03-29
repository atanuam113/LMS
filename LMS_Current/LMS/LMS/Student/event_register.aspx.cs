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
    public partial class event_register : System.Web.UI.Page
    {
        //Atanu's string
        string connectionString = @"Data Source=DESKTOP-539AVIS\SQLEXPRESS;Initial Catalog=LMS;Integrated Security=True";
        //Nabonita's string
        //string connectionString = @"Data Source=DESKTOP-KAEBEC0\\SQLEXPRESS;Initial Catalog=LMS Project;Integrated Security=True";       

        protected void Page_Load(object sender, EventArgs e)
        {
            EventDetails_page();
            eventregisterFcn();
        }

        private void EventDetails_page()
        {
            if (Session["event_register_id"] != null)
            {
                string eventid = Session["event_register_id"].ToString();
                int e_id = Int32.Parse(eventid);
                SqlConnection con = new SqlConnection(connectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from eventsDtl where id=@e_id", con);
                cmd.Parameters.AddWithValue("@e_id", e_id);
                cmd.ExecuteNonQuery();

                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                eventregister.DataSource = dt;
                eventregister.DataBind();
                con.Close();                
            }
            else
            {
                Response.Redirect("Student_Dashboard.aspx");
            }
        }

        private void eventregisterFcn()
        {
            if(Session["USER_ID"] != null )
            {
                string USERID = Session["USER_ID"].ToString();
                SqlConnection con = new SqlConnection(connectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from learnerDtl where email_id=@email_id", con);
                cmd.Parameters.AddWithValue("@email_id", USERID);
                cmd.ExecuteNonQuery();

                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                userdetail.DataSource = dt;
                userdetail.DataBind();
                con.Close();
            }
        }

        protected void event_register_Click(object sender, EventArgs e)
        {
            if (Session["event_register_id"] != null && Session["USER_ID"] != null)
            {
                string eventid = Session["event_register_id"].ToString();
                int e_id = Int32.Parse(eventid);
                string useremail = Session["USER_ID"].ToString();

                SqlConnection con = new SqlConnection(connectionString);
                con.Open();

                SqlCommand learner_id = new SqlCommand("select learner_id from learnerDtl where email_id='" + useremail + "'", con);
                string result = (string)learner_id.ExecuteScalar();

                SqlCommand NoOfRecords = new SqlCommand("select COUNT(*) from event_register_details where learner_id='" + result + "' and Event_id='" + e_id + "'", con);               
                int tmp = Convert.ToInt32(NoOfRecords.ExecuteScalar().ToString());

                if (tmp == 1)
                {
                    event_reg_msg.Text = "You already registered for this course";
                    event_reg_msg.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                    SqlCommand cmd = new SqlCommand("insert into event_register_details (learner_id,Event_id,Reg_Date) values (@learner_id,@Event_id,@Reg_Date)", con);
                    cmd.Parameters.AddWithValue("@learner_id", result);
                    cmd.Parameters.AddWithValue("@Event_id", e_id);
                    cmd.Parameters.AddWithValue("@Reg_Date", DateTime.Today);
                    int i = cmd.ExecuteNonQuery();

                    if (i != 0)
                    {
                        Response.Redirect("Index.aspx");
                    }
                    else
                    {
                        event_reg_msg.Text = "Can't register for the course.";
                    }
                }

                con.Close();
                Session["event_register_id"] = null;
                Response.Redirect("Student_Dashboard.aspx");
            }
            
        }        
    
    }
}