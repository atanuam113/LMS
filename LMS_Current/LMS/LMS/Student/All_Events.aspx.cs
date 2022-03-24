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
    public partial class All_Events : System.Web.UI.Page
    {
        //Atanu's string
        string connectionString = @"Data Source=DESKTOP-539AVIS\SQLEXPRESS;Initial Catalog=LMS;Integrated Security=True";
        //Nabonita's string
        //string connectionString = @"Data Source=DESKTOP-KAEBEC0\\SQLEXPRESS;Initial Catalog=LMS Project;Integrated Security=True";       

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from eventsDtl", con);
            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            datalist1.DataSource = dt;
            datalist1.DataBind();
            con.Close();

        }

        protected void datalist1_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        protected void datalist1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            //LinkButton lnkid = (LinkButton)e.Item.FindControl("id");
            //int eventid = Int16.Parse(lnkid.Text);
            //Session["eventid"] = eventid;
            if (e.CommandName == "eventdetails")
            {
                Response.Redirect("event_details.aspx?id=" + e.CommandArgument.ToString());
            }
        }
    }
}