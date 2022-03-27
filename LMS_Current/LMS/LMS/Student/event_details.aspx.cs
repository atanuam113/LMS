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
    public partial class event_details : System.Web.UI.Page
    {
        //Atanu's string
        string connectionString = @"Data Source=DESKTOP-539AVIS\SQLEXPRESS;Initial Catalog=LMS;Integrated Security=True";
        //Nabonita's string
        //string connectionString = @"Data Source=DESKTOP-KAEBEC0\\SQLEXPRESS;Initial Catalog=LMS Project;Integrated Security=True";       

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["event_detils_id"] != null)
            {
                string eventid = Session["event_detils_id"].ToString();
                //int eid = Int32.Parse(eventid);
                SqlConnection con = new SqlConnection(connectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from eventsDtl where e_id=@e_id", con);
                cmd.Parameters.AddWithValue("@e_id", eventid);
                cmd.ExecuteNonQuery();

                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                eventdetails.DataSource = dt;
                eventdetails.DataBind();
                con.Close();
            }
            else
            {
                Response.Redirect("Student_Dashboard.aspx");
            }
        }
    }
}