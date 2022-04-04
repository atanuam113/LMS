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
    public partial class Site1 : System.Web.UI.MasterPage
    {
        //Atanu's string
        string connectionString = @"Data Source=DESKTOP-539AVIS\SQLEXPRESS;Initial Catalog=LMS;Integrated Security=True";
        //Nabonita's string
        //string connectionString = @"Data Source=DESKTOP-KAEBEC0\\SQLEXPRESS;Initial Catalog=LMS Project;Integrated Security=True";       

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["USER_ID"] == null)
            {
                Response.Redirect("../HomePage.aspx");
            }
           else
            {
                SqlConnection con = new SqlConnection(connectionString);
                lblsession.Text = Session["USER_ID"].ToString();
                con.Open();
                SqlCommand cmd = new SqlCommand("Select l_pimage from learnerDtl where email_id='" + Session["USER_ID"].ToString() + "' ", con);
                cmd.ExecuteNonQuery();
                SqlDataReader dr = cmd.ExecuteReader();



                if (dr.Read())
                {
                    t_pimage.ImageUrl = dr[0].ToString();

                }
                con.Close();
            }
        }

        
    }
}