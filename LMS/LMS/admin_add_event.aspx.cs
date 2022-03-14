using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace LMS
{
    public partial class admin_add_event : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-KAEBEC0\\SQLEXPRESS;Initial Catalog=LMS Project;Integrated Security=True");

            string link1 = "";
            if (FileUpload3 != null)
            {
                if (FileUpload3.HasFile)
                {
                    link1 = Path.GetFileName(FileUpload3.PostedFile.FileName);
                }
            }
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into eventsDtl (e_name,e_desc,e_date,e_time,city,country,e_pimage) values (@e_name,@e_desc,@e_date,@e_time,@city,@country,@e_pimage)", con);
            cmd.Parameters.AddWithValue("@e_name", textevent_name.Text);
            cmd.Parameters.AddWithValue("@e_desc", textevent_description.Text);
            cmd.Parameters.AddWithValue("@e_date", textdate.Text);
            cmd.Parameters.AddWithValue("@e_time", texttime.Text);
            cmd.Parameters.AddWithValue("@city", textcity.Text);
            cmd.Parameters.AddWithValue("@country", textcountry.Text);
            cmd.Parameters.AddWithValue("@e_pimage", link1);

            int i = cmd.ExecuteNonQuery();

            if (i != 0)
            {
                // Response.Redirect("Admin.aspx");
                Label1.Text = "Successfully Registered...";
                Label1.ForeColor = System.Drawing.Color.Green;
            }
            con.Close();
            textevent_name.Text = "";
            textevent_description.Text = "";
            textdate.Text = "";
            texttime.Text = "";

            textcity.Text = "";
            textcountry.Text = "";
            //texttrainer_id.Text = "";
            link1 = "";
        }
    }
}