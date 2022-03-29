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
    public partial class Student_Dashboard : System.Web.UI.Page
    {
        //Atanu's string
        string connectionString = @"Data Source=DESKTOP-539AVIS\SQLEXPRESS;Initial Catalog=LMS;Integrated Security=True";
        //Nabonita's string
        //string connectionString = @"Data Source=DESKTOP-KAEBEC0\\SQLEXPRESS;Initial Catalog=LMS Project;Integrated Security=True";       

        protected void Page_Load(object sender, EventArgs e)
        {
            Profiledetails();
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