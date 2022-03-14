using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Text;
using System.Data.SqlClient;

namespace LMS
{
    public partial class admin_add_course : System.Web.UI.Page
    {
        string connectionString = @"Data Source=DESKTOP-539AVIS\SQLEXPRESS;Initial Catalog=LMS;Integrated Security=True";        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {             
                InitialRow();
                InitialTimetable();
                InitialModuleRow();
            }
        }

        private void InitialModuleRow()
        {
            DataTable dt2 = new DataTable();
            DataRow dr2 = null;
            dt2.Columns.Add(new DataColumn("CModuleTopic", typeof(string)));
            dt2.Columns.Add(new DataColumn("CModuleType", typeof(string)));
            dt2.Columns.Add(new DataColumn("CModule_Extension", typeof(string)));
            dt2.Columns.Add(new DataColumn("CModule_Content", typeof(string)));
            dt2.Columns.Add(new DataColumn("CModule_Banner", typeof(string)));
            dt2.Columns.Add(new DataColumn("CModule_Upload_Date", typeof(string)));

            dr2 = dt2.NewRow();
            dr2["CModuleTopic"] = string.Empty;
            dr2["CModuleType"] = string.Empty;
            dr2["CModule_Extension"] = string.Empty;
            dr2["CModule_Content"] = string.Empty;
            dr2["CModule_Banner"] = string.Empty;
            dr2["CModule_Upload_Date"] = string.Empty;
            dt2.Rows.Add(dr2);

            ViewState["CurrentTable2"] = dt2;
            GridModuleContent.DataSource = dt2;
            GridModuleContent.DataBind();
        }

        private void InitialTimetable()
        {
            DataTable dt1 = new DataTable();
            DataRow dr1 = null;
            dt1.Columns.Add(new DataColumn("txtday", typeof(string)));
            dt1.Columns.Add(new DataColumn("txtdate", typeof(string)));
            dt1.Columns.Add(new DataColumn("txtStartT", typeof(string)));
            dt1.Columns.Add(new DataColumn("txtEndT", typeof(string)));
            dt1.Columns.Add(new DataColumn("txtclassTopic", typeof(string)));
            dt1.Columns.Add(new DataColumn("txtclasslink", typeof(string)));

            dr1 = dt1.NewRow();
            dr1["txtday"] = string.Empty;
            dr1["txtdate"] = string.Empty;
            dr1["txtStartT"] = string.Empty;
            dr1["txtEndT"] = string.Empty;
            dr1["txtclassTopic"] = string.Empty;
            dr1["txtclasslink"] = string.Empty;
            dt1.Rows.Add(dr1);

            ViewState["CurrentTable1"] = dt1;
            CourseTimeTable.DataSource = dt1;
            CourseTimeTable.DataBind();
        }

        private void InitialRow()
        {
            DataTable dt = new DataTable();
            DataRow dr = null;
            dt.Columns.Add(new DataColumn("txtmodule", typeof(string)));
            dt.Columns.Add(new DataColumn("txtweek", typeof(string)));
            dt.Columns.Add(new DataColumn("txtTopic", typeof(string)));
            dt.Columns.Add(new DataColumn("txtdesc", typeof(string)));

            dr = dt.NewRow();
            dr["txtmodule"] = string.Empty;
            dr["txtweek"] = string.Empty;
            dr["txtTopic"] = string.Empty;
            dr["txtdesc"] = string.Empty;
            dt.Rows.Add(dr);

            ViewState["CurrentTable"] = dt;
            CourseSyllabus.DataSource = dt;
            CourseSyllabus.DataBind();
         
        }

        protected void gvContacts_SelectedIndexChanged(object sender, EventArgs e)
        {
            AddNewRow_Click();
        }

        private void AddNewRow_Click()
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

                        TextBox box1 = (TextBox)CourseSyllabus.Rows[rowIndex].Cells[0].FindControl("txtmodule");
                        TextBox box2 = (TextBox)CourseSyllabus.Rows[rowIndex].Cells[1].FindControl("txtweek");                        
                        TextBox box3 = (TextBox)CourseSyllabus.Rows[rowIndex].Cells[2].FindControl("txtTopic");
                        TextBox box4 = (TextBox)CourseSyllabus.Rows[rowIndex].Cells[2].FindControl("txtdesc");

                        drCurrentRow = dtCurrentTable.NewRow();

                        //drCurrentRow["SlNo"] = i + 1;
                        dtCurrentTable.Rows[i - 1]["txtmodule"] = box1.Text;
                        dtCurrentTable.Rows[i - 1]["txtweek"] = box2.Text;
                        dtCurrentTable.Rows[i - 1]["txtTopic"] = box3.Text;
                        dtCurrentTable.Rows[i - 1]["txtdesc"] = box4.Text;
                        rowIndex++;

                    }

                    dtCurrentTable.Rows.Add(drCurrentRow);

                    ViewState["CurrentTable"] = dtCurrentTable;



                    CourseSyllabus.DataSource = dtCurrentTable;

                    CourseSyllabus.DataBind();

                }

            }

            else

            {

                Response.Write("ViewState is null");

            }
            //Set Previous Data on Postbacks

            SetPreviousData();
        }

        private void SetPreviousData()
        {
            int rowIndex = 0;
            if (ViewState["CurrentTable"] != null)
            {
                DataTable dt = (DataTable)ViewState["CurrentTable"];
                if (dt.Rows.Count > 0)
                {
                    for (int i = 1; i <= dt.Rows.Count; i++)
                    {
                        TextBox box1 = (TextBox)CourseSyllabus.Rows[rowIndex].Cells[0].FindControl("txtmodule");
                        TextBox box2 = (TextBox)CourseSyllabus.Rows[rowIndex].Cells[1].FindControl("txtweek");
                        TextBox box3 = (TextBox)CourseSyllabus.Rows[rowIndex].Cells[2].FindControl("txtTopic");
                        TextBox box4 = (TextBox)CourseSyllabus.Rows[rowIndex].Cells[2].FindControl("txtdesc");
                        
                        box1.Text = dt.Rows[i - 1]["txtmodule"].ToString();
                        box2.Text = dt.Rows[i - 1]["txtweek"].ToString();
                        box3.Text = dt.Rows[i - 1]["txtTopic"].ToString();
                        box4.Text = dt.Rows[i - 1]["txtdesc"].ToString();

                        rowIndex++;

                    }

                }

            }
        }
        
        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            AddNewClass_Click();
        }

        private void AddNewClass_Click()
        {
            int rowIndex = 0;
            if (ViewState["CurrentTable1"] != null)

            {
                DataTable dtCurrentTable = (DataTable)ViewState["CurrentTable1"];
                DataRow drCurrentRow = null;
                if (dtCurrentTable.Rows.Count > 0)
                {
                    for (int i = 1; i <= dtCurrentTable.Rows.Count; i++)
                    {
                        //extract the TextBox values

                        TextBox box1 = (TextBox)CourseTimeTable.Rows[rowIndex].Cells[0].FindControl("txtday");
                        TextBox box2 = (TextBox)CourseTimeTable.Rows[rowIndex].Cells[1].FindControl("txtdate");
                        TextBox box3 = (TextBox)CourseTimeTable.Rows[rowIndex].Cells[2].FindControl("txtStartT");
                        TextBox box4 = (TextBox)CourseTimeTable.Rows[rowIndex].Cells[3].FindControl("txtEndT");
                        TextBox box5 = (TextBox)CourseTimeTable.Rows[rowIndex].Cells[4].FindControl("txtclassTopic");
                        TextBox box6 = (TextBox)CourseTimeTable.Rows[rowIndex].Cells[5].FindControl("txtclasslink");

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

                    ViewState["CurrentTable1"] = dtCurrentTable;
                    CourseTimeTable.DataSource = dtCurrentTable;
                    CourseTimeTable.DataBind();

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
            if (ViewState["CurrentTable1"] != null)
            {
                DataTable dt = (DataTable)ViewState["CurrentTable1"];
                if (dt.Rows.Count > 0)
                {
                    for (int i = 1; i <= dt.Rows.Count; i++)
                    {
                        TextBox box1 = (TextBox)CourseTimeTable.Rows[rowIndex].Cells[0].FindControl("txtday");
                        TextBox box2 = (TextBox)CourseTimeTable.Rows[rowIndex].Cells[1].FindControl("txtdate");
                        TextBox box3 = (TextBox)CourseTimeTable.Rows[rowIndex].Cells[2].FindControl("txtStartT");
                        TextBox box4 = (TextBox)CourseTimeTable.Rows[rowIndex].Cells[3].FindControl("txtEndT");
                        TextBox box5 = (TextBox)CourseTimeTable.Rows[rowIndex].Cells[4].FindControl("txtclassTopic");
                        TextBox box6 = (TextBox)CourseTimeTable.Rows[rowIndex].Cells[5].FindControl("txtclasslink");

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

        protected void btnSave_Click1(object sender, EventArgs e)
        {
            SqlConnection sqlCon = new SqlConnection(connectionString);

            //Insert data for Course Information
//----------------------------------------------------------------------------------
            int length = courseBanner.PostedFile.ContentLength;
            byte[] pic = new byte[length];
            courseBanner.PostedFile.InputStream.Read(pic, 0, length);
            string query = "INSERT INTO CourseDetails(Course_Name,Course_Start_Date,Course_Trainer,Course_Status,Course_Desc,CourseBanner) VALUES (@txtCourseName, @CStartDate, @ddteacher, @CourseStatus, @txtCourseDesc, @photo)";
            SqlCommand sqlquery = new SqlCommand(query, sqlCon);           
            sqlquery.Parameters.AddWithValue("@txtCourseName", txtCourseName.Text);
            sqlquery.Parameters.AddWithValue("@CStartDate", CStartDate.Text);
            sqlquery.Parameters.AddWithValue("@ddteacher", ddteacher.Text);
            sqlquery.Parameters.AddWithValue("@CourseStatus", CourseStatus.Text);
            sqlquery.Parameters.AddWithValue("@txtCourseDesc", txtCourseDesc.Text);
            sqlquery.Parameters.AddWithValue("@photo", pic);
            sqlCon.Open();
            sqlquery.ExecuteNonQuery();
            sqlCon.Close();            

            //Get the Course ID from the above query            
            SqlCommand sqlcmd = new SqlCommand("SELECT Course_ID FROM CourseDetails WHERE Course_Name= '" + txtCourseName.Text + "'", sqlCon);           
            sqlCon.Open();            
            int tmp = Convert.ToInt32(sqlcmd.ExecuteScalar().ToString());
            sqlCon.Close();

            //Insert data for Course Syllabus
//----------------------------------------------------------------------------------
            TextBox txtmodule;
            TextBox txtweek;
            TextBox txtTopic;
            TextBox txtdesc;
           
            int NoOfRows = 1;
            foreach (GridViewRow row in CourseSyllabus.Rows)
            {
                txtmodule = (TextBox)row.FindControl("txtmodule");
                txtweek = (TextBox)row.FindControl("txtweek");
                txtTopic = (TextBox)row.FindControl("txtTopic");
                txtdesc = (TextBox)row.FindControl("txtdesc");

                if (txtmodule == null || txtweek == null || txtTopic == null || txtdesc == null)
                {
                    return;
                }
                
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Course_Module_Syllabus_Proc", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@CModule_ID", Int16.Parse(txtmodule.Text));
                    cmd.Parameters.AddWithValue("@Course_ID", tmp);
                    cmd.Parameters.AddWithValue("@CS_Week", txtweek.Text.ToString());
                    cmd.Parameters.AddWithValue("@CS_Module_Topic", txtTopic.Text.ToString());
                    cmd.Parameters.AddWithValue("@CS_Desc", txtdesc.Text.ToString());

                    cmd.ExecuteNonQuery();
                    SetToEmptyGridView();
                    InitialRow();
                    con.Close();
                }
                NoOfRows++;
            }

            //Insert data into Course Module content
            //----------------------------------------------------------------------------------




            //Insert data into Course Class time table
            //----------------------------------------------------------------------------------
            TextBox txtday;
            TextBox txtdate;
            TextBox txtStartT;
            TextBox txtEndT;
            TextBox txtclassTopic;
            TextBox txtclasslink;

            int RowNumber = 1;
            foreach (GridViewRow row1 in CourseTimeTable.Rows)
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

                    cmd1.Parameters.AddWithValue("@Course_ID", tmp);
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



            //Clear DataTable from Gridview
            private void SetToEmptyGridView()
            {
                DataTable dt = (DataTable)ViewState["CurrentTable"];
                ViewState["CurrentTable"] = null;
                CourseSyllabus.DataSource = null;
                CourseSyllabus.DataBind();
            }

        protected void GridModuleContent_SelectedIndexChanged(object sender, EventArgs e)
        {
            AddNewModule_Row();
        }

        private void AddNewModule_Row()
        {
            int rowIndex = 0;
            if (ViewState["CurrentTable2"] != null)

            {
                DataTable dtCurrentTable = (DataTable)ViewState["CurrentTable2"];
                DataRow drCurrentRow = null;
                if (dtCurrentTable.Rows.Count > 0)
                {
                    for (int i = 1; i <= dtCurrentTable.Rows.Count; i++)
                    {
                        //extract the TextBox values

                        TextBox box1 = (TextBox)CourseTimeTable.Rows[rowIndex].Cells[0].FindControl("CModuleTopic");
                        TextBox box2 = (TextBox)CourseTimeTable.Rows[rowIndex].Cells[1].FindControl("CModuleType");
                        TextBox box3 = (TextBox)CourseTimeTable.Rows[rowIndex].Cells[2].FindControl("CModule_Extension");
                        TextBox box4 = (TextBox)CourseTimeTable.Rows[rowIndex].Cells[3].FindControl("CModule_Content");
                        TextBox box5 = (TextBox)CourseTimeTable.Rows[rowIndex].Cells[4].FindControl("CModule_Upload_Date");
                        

                        drCurrentRow = dtCurrentTable.NewRow();

                        //drCurrentRow["SlNo"] = i + 1;
                        dtCurrentTable.Rows[i - 1]["CModuleTopic"] = box1.Text;
                        dtCurrentTable.Rows[i - 1]["CModuleType"] = box2.Text;
                        dtCurrentTable.Rows[i - 1]["CModule_Extension"] = box3.Text;
                        dtCurrentTable.Rows[i - 1]["CModule_Content"] = box4.Text;
                        dtCurrentTable.Rows[i - 1]["CModule_Upload_Date"] = box5.Text;
                        
                        rowIndex++;

                    }

                    dtCurrentTable.Rows.Add(drCurrentRow);

                    ViewState["CurrentTable2"] = dtCurrentTable;
                    CourseTimeTable.DataSource = dtCurrentTable;
                    CourseTimeTable.DataBind();

                }

            }

            else

            {

                Response.Write("ViewState is null");

            }
            //Set Previous Data on Postbacks
            SetModuleContentData();

        }

        private void SetModuleContentData()
        {
            int rowIndex = 0;
            if (ViewState["CurrentTable2"] != null)
            {
                DataTable dt = (DataTable)ViewState["CurrentTable2"];
                if (dt.Rows.Count > 0)
                {
                    for (int i = 1; i <= dt.Rows.Count; i++)
                    {
                        TextBox box1 = (TextBox)CourseTimeTable.Rows[rowIndex].Cells[0].FindControl("CModuleTopic");
                        TextBox box2 = (TextBox)CourseTimeTable.Rows[rowIndex].Cells[1].FindControl("CModuleType");
                        TextBox box3 = (TextBox)CourseTimeTable.Rows[rowIndex].Cells[2].FindControl("CModule_Extension");
                        TextBox box4 = (TextBox)CourseTimeTable.Rows[rowIndex].Cells[3].FindControl("CModule_Content");
                        TextBox box5 = (TextBox)CourseTimeTable.Rows[rowIndex].Cells[4].FindControl("CModule_Upload_Date");
                        
                        box1.Text = dt.Rows[i - 1]["CModuleTopic"].ToString();
                        box2.Text = dt.Rows[i - 1]["CModuleType"].ToString();
                        box3.Text = dt.Rows[i - 1]["CModule_Extension"].ToString();
                        box4.Text = dt.Rows[i - 1]["CModule_Content"].ToString();
                        box5.Text = dt.Rows[i - 1]["CModule_Upload_Date"].ToString();
                        
                        rowIndex++;

                    }

                }

            }
        }
    }
    
}