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
    public partial class admin_all_exam : System.Web.UI.Page
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
            //Get data from learners table
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select exam_id,e_name,e_date,start_time,end_time,e_course from examDtl", con);
            cmd.ExecuteNonQuery();

            //con.Open();


            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();


        }

        /**  protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
          {
              string examid = GridView1.SelectedRow.Cells[0].Text;
              Session["EXAM_ID"] = examid;
              Response.Redirect("admin_exam_details.aspx");
          }
        **/


        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            GridViewRow row = GridView1.Rows[0];
            string examid = row.Cells[0].Text;
            Session["EXAM_ID"] = examid;
            Response.Redirect("admin_exam_details.aspx");
        }

    }
}