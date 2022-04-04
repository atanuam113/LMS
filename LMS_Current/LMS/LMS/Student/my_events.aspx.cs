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
    public partial class my_events : System.Web.UI.Page
    {
        //Atanu's string
        string connectionString = @"Data Source=DESKTOP-539AVIS\SQLEXPRESS;Initial Catalog=LMS;Integrated Security=True";
        //Nabonita's string
        //string connectionString = @"Data Source=DESKTOP-KAEBEC0\\SQLEXPRESS;Initial Catalog=LMS Project;Integrated Security=True";       

        protected void Page_Load(object sender, EventArgs e)
        {
            MyEventsFcn();
        }

        private void MyEventsFcn()
        {
           if(Session["USER_ID"] != null)
            {
                SqlConnection con = new SqlConnection(connectionString);
                con.Open();

                string useremail = Session["USER_ID"].ToString();
                SqlCommand learner_id = new SqlCommand("select learner_id from learnerDtl where email_id='" + useremail + "'", con);
                string result = (string)learner_id.ExecuteScalar();

                SqlCommand event_id_list = new SqlCommand("select Event_id from event_register_details where learner_id='" + result + "'", con);
                int e_id_array = (int)event_id_list.ExecuteScalar();

                SqlCommand cmd = new SqlCommand("select * from eventsDtl where id = '" + e_id_array + "'", con);
                cmd.ExecuteNonQuery();

                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                datalist1.DataSource = dt;
                datalist1.DataBind();
                con.Close();
            }
        }      

        protected void txtread_more_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            string eventid = btn.CommandArgument;
            Session["event_detils_id"] = eventid;
            Response.Redirect("event_details.aspx");
        }
    }
}