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
            if (Session["event_register_id"] != null)
            {
                string eventid = Session["event_register_id"].ToString();                
                SqlConnection con = new SqlConnection(connectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from eventsDtl where e_id=@e_id", con);
                cmd.Parameters.AddWithValue("@e_id", eventid);
                cmd.ExecuteNonQuery();

                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                eventregister.DataSource = dt;
                eventregister.DataBind();
                con.Close();
                eventregisterFcn();



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
            string Learner_id = Session["USER_ID"].ToString();
            string Event_id = Session["event_register_id"].ToString();
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select COUNT(*) from event_register_details where Learner_id=@Learner_id and Event_id=@Event_id", con);
            cmd.Parameters.AddWithValue("@Learner_id", Learner_id);
            cmd.Parameters.AddWithValue("@Event_id", Event_id);
            int tmp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            con.Close();
            if(tmp == 1)
            {
                event_reg_msg.ForeColor = System.Drawing.Color.Red;
                event_reg_msg.Text = "You already registered in this event....";
            }
            else
            {
                if(Session["USER_ID"] != null && Session["event_register_id"] != null)
                {
                    string L_ID = Session["USER_ID"].ToString();
                    string E_id = Session["event_register_id"].ToString();
                    con.Open();
                    SqlCommand sqlcmd = new SqlCommand("insert into event_register_details (Learner_id,Event_id,Register_date) values (@L_ID,@E_id,@e_date)", con);
                    cmd.Parameters.AddWithValue("@L_ID", L_ID);
                    cmd.Parameters.AddWithValue("@E_id", E_id);
                    cmd.Parameters.AddWithValue("@e_date", DateTime.Now.ToString("yyyy-M-d"));
                    cmd.ExecuteNonQuery();
                    con.Close();
                    //Session["USER_ID"] = null;
                    Session["event_register_id"] = null;
                    Response.Redirect("Student_Dashboard.aspx");
                }
                
            }


        }
    }
}