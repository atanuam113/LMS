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
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!this.IsPostBack)
            //{
            //    getdata();
            //}
        }
        //public void getdata()
        //{
        //    SqlConnection con = new SqlConnection("Data Source=DESKTOP-KAEBEC0\\SQLEXPRESS;Initial Catalog=LMS Project;Integrated Security=True");
        //    con.Open();
        //    SqlCommand cmd = new SqlCommand("select l_pimage,l_id,f_name,l_name,email_id,password,phone_no,city,country from learnerDtl", con);
        //    SqlCommand cmd1 = new SqlCommand("select t_pimage,t_id,f_name,l_name,email_id,password,phone_no,city,country from trainerDtl", con);
        //    cmd.ExecuteNonQuery();

        //    //con.Open();
        //    SqlDataAdapter sda = new SqlDataAdapter(cmd);
        //    DataSet ds = new DataSet();
        //    sda.Fill(ds);
        //    GridView1.DataSource = ds;
        //    GridView1.DataBind();

        //    SqlDataAdapter sda1 = new SqlDataAdapter(cmd1);
        //    DataSet ds1 = new DataSet();
        //    sda1.Fill(ds1);
        //    GridView2.DataSource = ds1;
        //    GridView2.DataBind();
        //    con.Close();
        //}
    }
}