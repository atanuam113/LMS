using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace LMS.Student
{
    public partial class Student_Profile : System.Web.UI.Page
    {
        //Atanu's string
        string connectionString = @"Data Source=DESKTOP-539AVIS\SQLEXPRESS;Initial Catalog=LMS;Integrated Security=True";
        //Nabonita's string
        //string connectionString = @"Data Source=DESKTOP-KAEBEC0\\SQLEXPRESS;Initial Catalog=LMS Project;Integrated Security=True";       

        protected void Page_Load(object sender, EventArgs e)
        {
           if(!IsPostBack)
            {
                GetDataList();
            }
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

        private void GetDataList()
        {
            if (Session["USER_ID"] != null)
            {
                string userid = Session["USER_ID"].ToString();
                SqlConnection con = new SqlConnection(connectionString);
                //con.Open();
                SqlDataAdapter da = new SqlDataAdapter("select * from learnerDtl where email_id='" + userid + "'", con);
                //SqlCommand cmd = new SqlCommand("select * from learnerDtl where email_id='" + userid + "'", con);
                //cmd.ExecuteNonQuery();

                //con.Open();

                //SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                datalist1.DataSource = ds;
                datalist1.DataBind();
                con.Close();

            }
            else
            {
                std_profile.Text = "None";
            }
        }

        protected void datalist1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "Edit")
            {
                datalist1.EditItemIndex = e.Item.ItemIndex;
                GetDataList();
            }
        }
      

        protected void datalist1_UpdateCommand(object source, DataListCommandEventArgs e)
        {
            if(e.CommandName== "Update")
            {
                if (Session["USER_ID"] != null)
                {
                    string userid = Session["USER_ID"].ToString();
                    SqlConnection con = new SqlConnection(connectionString);
                    String phoneNo = ((TextBox)e.Item.FindControl("edit_phone")).Text;
                    String City = ((TextBox)e.Item.FindControl("edit_city")).Text;
                    String Country = ((TextBox)e.Item.FindControl("edit_country")).Text;
                    String Profile_Pic = ((FileUpload)e.Item.FindControl("upload_img")).FileName.ToString();
                    var imgID = (FileUpload)e.Item.FindControl("upload_img");
                    string imgpath;
                    imgID.SaveAs(Request.PhysicalApplicationPath + "/Learner_Images/" + Profile_Pic);
                    imgpath = "/Learner_Images/" + Profile_Pic;
                    con.Open();                    
                    SqlCommand cmd = new SqlCommand("UPDATE learnerDtl SET phone_no=@phone_no,city=@city,country=@country,l_pimage=@l_pimage WHERE email_id=@email_id", con);
                    cmd.Parameters.AddWithValue("@phone_no",phoneNo);
                    cmd.Parameters.AddWithValue("@city",City);
                    cmd.Parameters.AddWithValue("@country",Country);
                    cmd.Parameters.AddWithValue("@l_pimage",imgpath);
                    cmd.Parameters.AddWithValue("@email_id",userid);

                    int i = cmd.ExecuteNonQuery();
                    if(i !=0)
                    {
                        datalist1.EditItemIndex = -1;
                        Response.Redirect("Student_Dashboard.aspx");
                    }
                    


                    con.Close();

                }
            }
            
        }

        protected void datalist1_CancelCommand(object source, DataListCommandEventArgs e)
        {
            datalist1.EditItemIndex = -1;
            GetDataList();

        }

        protected void datalist1_EditCommand(object source, DataListCommandEventArgs e)
        {
            //if (e.CommandName == "EditProfile")
            //{
            //    datalist1.EditItemIndex = e.Item.ItemIndex;
            //    GetDataList();
            //}
        }
    }
}