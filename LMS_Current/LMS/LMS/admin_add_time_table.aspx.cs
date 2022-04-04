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
    public partial class admin_add_time_table : System.Web.UI.Page
    {
        //Atanu's string
        string connectionString = @"Data Source=DESKTOP-539AVIS\SQLEXPRESS;Initial Catalog=LMS;Integrated Security=True";
        //Nabonita's string
        //string connectionString = @"Data Source=DESKTOP-KAEBEC0\\SQLEXPRESS;Initial Catalog=LMS Project;Integrated Security=True";       

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {                
                InitialTimetable();
                
            }
            
        }
        private void InitialTimetable()
        {
            DataTable dt = new DataTable();
            DataRow dr = null;
            dt.Columns.Add(new DataColumn("txtday", typeof(string)));
            dt.Columns.Add(new DataColumn("txtdate", typeof(string)));
            dt.Columns.Add(new DataColumn("txtStartT", typeof(string)));
            dt.Columns.Add(new DataColumn("txtEndT", typeof(string)));
            dt.Columns.Add(new DataColumn("txtclassTopic", typeof(string)));
            dt.Columns.Add(new DataColumn("txtclasslink", typeof(string)));

            dr = dt.NewRow();
            dr["txtday"] = string.Empty;
            dr["txtdate"] = string.Empty;
            dr["txtStartT"] = string.Empty;
            dr["txtEndT"] = string.Empty;
            dr["txtclassTopic"] = string.Empty;
            dr["txtclasslink"] = string.Empty;
            dt.Rows.Add(dr);

            ViewState["CurrentTable"] = dt;
            newtimetable.DataSource = dt;
            newtimetable.DataBind();
        }             

        protected void newtimetable_SelectedIndexChanged(object sender, EventArgs e)
        {
            AddNewClass_Click();
        }
        private void AddNewClass_Click()
        {
            int rowIndex = 0;
            if (ViewState["CurrentTable"] != null)
            {
                DataTable dtCurrentTable = (DataTable)ViewState["CurrentTable"];
                DataRow drCurrentRow = null;
                if (dtCurrentTable.Rows.Count > 0)
                {
                    for (int i = 1; i <= dtCurrentTable.Rows.Count; i++)
                    {
                        //extract the TextBox values

                        TextBox box1 = (TextBox)newtimetable.Rows[rowIndex].Cells[0].FindControl("txtday");
                        TextBox box2 = (TextBox)newtimetable.Rows[rowIndex].Cells[1].FindControl("txtdate");
                        TextBox box3 = (TextBox)newtimetable.Rows[rowIndex].Cells[2].FindControl("txtStartT");
                        TextBox box4 = (TextBox)newtimetable.Rows[rowIndex].Cells[3].FindControl("txtEndT");
                        TextBox box5 = (TextBox)newtimetable.Rows[rowIndex].Cells[4].FindControl("txtclassTopic");
                        TextBox box6 = (TextBox)newtimetable.Rows[rowIndex].Cells[5].FindControl("txtclasslink");

                        drCurrentRow = dtCurrentTable.NewRow();

                        //drCurrentRow["SlNo"] = i + 1;
                        dtCurrentTable.Rows[i - 1]["txtday"] = box1.Text;
                        dtCurrentTable.Rows[i - 1]["txtdate"] = box2.Text;
                        dtCurrentTable.Rows[i - 1]["txtStartT"] = box3.Text;
                        dtCurrentTable.Rows[i - 1]["txtEndT"] = box4.Text;
                        dtCurrentTable.Rows[i - 1]["txtclassTopic"] = box5.Text;
                        dtCurrentTable.Rows[i - 1]["txtclasslink"] = box6.Text;
                        rowIndex++;

                    }

                    dtCurrentTable.Rows.Add(drCurrentRow);

                    ViewState["CurrentTable"] = dtCurrentTable;
                    newtimetable.DataSource = dtCurrentTable;
                    newtimetable.DataBind();

                }

            }

            else

            {

                Response.Write("ViewState is null");

            }
            //Set Previous Data on Postbacks

            SetPreviousClassData();
        }

        private void SetPreviousClassData()
        {
            int rowIndex = 0;
            if (ViewState["CurrentTable"] != null)
            {
                DataTable dt = (DataTable)ViewState["CurrentTable"];
                if (dt.Rows.Count > 0)
                {
                    for (int i = 1; i <= dt.Rows.Count; i++)
                    {
                        TextBox box1 = (TextBox)newtimetable.Rows[rowIndex].Cells[0].FindControl("txtday");
                        TextBox box2 = (TextBox)newtimetable.Rows[rowIndex].Cells[1].FindControl("txtdate");
                        TextBox box3 = (TextBox)newtimetable.Rows[rowIndex].Cells[2].FindControl("txtStartT");
                        TextBox box4 = (TextBox)newtimetable.Rows[rowIndex].Cells[3].FindControl("txtEndT");
                        TextBox box5 = (TextBox)newtimetable.Rows[rowIndex].Cells[4].FindControl("txtclassTopic");
                        TextBox box6 = (TextBox)newtimetable.Rows[rowIndex].Cells[5].FindControl("txtclasslink");

                        box1.Text = dt.Rows[i - 1]["txtday"].ToString();
                        box2.Text = dt.Rows[i - 1]["txtdate"].ToString();
                        box3.Text = dt.Rows[i - 1]["txtStartT"].ToString();
                        box4.Text = dt.Rows[i - 1]["txtEndT"].ToString();
                        box5.Text = dt.Rows[i - 1]["txtclassTopic"].ToString();
                        box6.Text = dt.Rows[i - 1]["txtclasslink"].ToString();

                        rowIndex++;

                    }

                }

            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            SqlConnection sqlCon = new SqlConnection(connectionString);
            //Insert data into Course Class time table
            //----------------------------------------------------------------------------------
            TextBox txtday;
            TextBox txtdate;
            TextBox txtStartT;
            TextBox txtEndT;
            TextBox txtclassTopic;
            TextBox txtclasslink;

            int RowNumber = 1;
            foreach (GridViewRow row1 in newtimetable.Rows)
            {
                txtday = (TextBox)row1.FindControl("txtday");
                txtdate = (TextBox)row1.FindControl("txtdate");
                txtStartT = (TextBox)row1.FindControl("txtStartT");
                txtEndT = (TextBox)row1.FindControl("txtEndT");
                txtclassTopic = (TextBox)row1.FindControl("txtclassTopic");
                txtclasslink = (TextBox)row1.FindControl("txtclasslink");

                if (txtday == null || txtdate == null || txtStartT == null || txtEndT == null || txtclassTopic == null || txtclasslink == null)
                {
                    return;
                }

                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    con.Open();
                    SqlCommand cmd1 = new SqlCommand("Course_Class_Routine", con);
                    cmd1.CommandType = CommandType.StoredProcedure;

                    cmd1.Parameters.AddWithValue("@Course_ID", "1012");
                    cmd1.Parameters.AddWithValue("@CR_Day", txtday.Text.ToString());
                    cmd1.Parameters.AddWithValue("@CR_Date", txtdate.Text.ToString());
                    cmd1.Parameters.AddWithValue("@CR_Start_Time", txtStartT.Text.ToString());
                    cmd1.Parameters.AddWithValue("@CR_End_Time", txtEndT.Text.ToString());
                    cmd1.Parameters.AddWithValue("@CR_Topic", txtclassTopic.Text.ToString());
                    cmd1.Parameters.AddWithValue("@CR_ClassLink", txtclasslink.Text.ToString());

                    cmd1.ExecuteNonQuery();

                    //SetToEmptyGridView();
                    //InitialRow();

                    con.Close();
                }
                RowNumber++;
            }

            Response.Redirect("Default.aspx");
        }

    }
}