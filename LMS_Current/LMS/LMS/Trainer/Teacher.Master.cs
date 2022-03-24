using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace LMS
{
    public partial class Teacher : System.Web.UI.MasterPage
    {
        //Atanu's string
        string connectionString = @"Data Source=DESKTOP-539AVIS\SQLEXPRESS;Initial Catalog=LMS;Integrated Security=True";
        //Nabonita's string
        //string connectionString = @"Data Source=DESKTOP-KAEBEC0\\SQLEXPRESS;Initial Catalog=LMS Project;Integrated Security=True";       

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["USER_ID"] != null)
            {
                //lblsession.Text = Session["USER_ID"].ToString();
                string loggeduser = Session["USER_ID"].ToString();

                SqlConnection con = new SqlConnection(connectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from trainerDtl where email_id=@email_id", con);
                cmd.Parameters.AddWithValue("@email_id", loggeduser);
                cmd.ExecuteNonQuery();

                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                dl_trainer_master.DataSource = dt;
                dl_trainer_master.DataBind();
                con.Close();

            }
        }
    }
}