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
    public partial class Teacher_Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                getdata();
            }
        }
        //Atanu's connection string
        string connectionstring = @"Data Source=DESKTOP-539AVIS\SQLEXPRESS;Initial Catalog=LMS;Integrated Security=True";
        //Nabonita's connection string
        //string connectionstring = @"Data Source=DESKTOP-KAEBEC0\\SQLEXPRESS;Initial Catalog=LMS Project;Integrated Security=True";
        public void getdata()
        {
            SqlConnection con = new SqlConnection(connectionstring);
            con.Open();
            SqlCommand cmd = new SqlCommand("select l_pimage,learner_id,f_name,l_name,email_id,phone_no,city,country from learnerDtl", con);
            //SqlCommand cmd1 = new SqlCommand("select t_pimage,t_id,f_name,l_name,email_id,password,phone_no,city,country from trainerDtl", con);
            SqlCommand cmd2 = new SqlCommand("select exam_id,e_name,e_date,start_time,end_time,e_course from examDtl", con);
            cmd.ExecuteNonQuery();
          //  cmd1.ExecuteNonQuery();
            cmd2.ExecuteNonQuery();

            //con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();

          /**  SqlDataAdapter sda1 = new SqlDataAdapter(cmd1);
            DataSet ds1 = new DataSet();
            sda1.Fill(ds1);
            GridView2.DataSource = ds1;
            GridView2.DataBind();**/

            SqlDataAdapter sda2 = new SqlDataAdapter(cmd2);
            DataSet ds2 = new DataSet();
            sda2.Fill(ds2);
            GridView3.DataSource = ds2;
            GridView3.DataBind();
            con.Close();

        }
    }
}