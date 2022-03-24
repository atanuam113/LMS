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
    public partial class admin_all_students : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                getdata();
            }
        }
        //Atanu's string
        string connectionString = @"Data Source=DESKTOP-539AVIS\SQLEXPRESS;Initial Catalog=LMS;Integrated Security=True";
        //Nabonita's string
        //string connectionString = @"Data Source=DESKTOP-KAEBEC0\\SQLEXPRESS;Initial Catalog=LMS Project;Integrated Security=True";       

        public void getdata()
        {
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select l_pimage,learner_id,f_name,l_name,email_id,password,l_gender,phone_no,city,country from learnerDtl", con);
            cmd.ExecuteNonQuery();

            //con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gr = GridView1.SelectedRow;

            Response.Redirect("admin_exam_details.aspx?e_name=" + gr.Cells[1].Text + "&e_date=" + gr.Cells[2].Text + "&start_time=" + gr.Cells[3].Text + "&e_duration=" + gr.Cells[4].Text + "&e_course=" + gr.Cells[5].Text);
        }
    }
}