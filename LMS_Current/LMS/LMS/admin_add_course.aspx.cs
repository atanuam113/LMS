using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;

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
                Initial_Exam_Row();
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
            dt2.Columns.Add(new DataColumn("CourseFile", typeof(string)));
            dt2.Columns.Add(new DataColumn("Module_content", typeof(string)));
            dt2.Columns.Add(new DataColumn("Content_Date", typeof(string)));

            dr2 = dt2.NewRow();
            dr2["CModuleTopic"] = string.Empty;
            dr2["CModuleType"] = string.Empty;
            dr2["CModule_Extension"] = string.Empty;
            dr2["CourseFile"] = string.Empty;
            dr2["Module_content"] = string.Empty;
            dr2["Content_Date"] = string.Empty;
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

        //Add new row of course syllabus
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

        // Set previous data of course syllabus
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
            string imgpath;
            courseBanner.SaveAs(Request.PhysicalApplicationPath + "/Course_Banner/" + courseBanner.FileName.ToString());
            imgpath = "/Course_Banner/" + courseBanner.FileName.ToString();

            string query = "INSERT INTO CourseDetails(Course_Name,Course_Start_Date,Course_Trainer,Course_Status,Course_Desc,CourseBanner) VALUES (@txtCourseName, @CStartDate, @ddteacher, @CourseStatus, @txtCourseDesc, @photo)";
            SqlCommand sqlquery = new SqlCommand(query, sqlCon);           
            sqlquery.Parameters.AddWithValue("@txtCourseName", txtCourseName.Text);
            sqlquery.Parameters.AddWithValue("@CStartDate", CStartDate.Text);
            sqlquery.Parameters.AddWithValue("@ddteacher", ddteacher.Text);
            sqlquery.Parameters.AddWithValue("@CourseStatus", CourseStatus.Text);
            sqlquery.Parameters.AddWithValue("@txtCourseDesc", txtCourseDesc.Text);
            sqlquery.Parameters.AddWithValue("@photo", imgpath);
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
            //SqlConnection sqlConn = new SqlConnection(connectionString);

            //Stream fs = modulecontent.PostedFile.InputStream;
            //BinaryReader br = new BinaryReader(fs); //reads the binary files  
            //Byte[] bytes = br.ReadBytes((Int32)fs.Length); //counting the file length into bytes  

            //string query_module_content = "INSERT INTO CourseModuleDetails (Course_ID,Module_Topic,Module_Type,Module_Extension,Module_Content,Module_Upload_Date) VALUES(@Course_ID,@Module_Topic,@Module_Type,@Module_Extension,@Module_Content,@Module_Upload_Date)";
            //SqlCommand sqlinsertquery = new SqlCommand(query_module_content, sqlConn);
            
            //sqlinsertquery.Parameters.AddWithValue("@Course_ID", tmp);
            //sqlinsertquery.Parameters.AddWithValue("@Module_Topic", txtmoduletopic.Text);
            //sqlinsertquery.Parameters.AddWithValue("@Module_Type", ddmoduletype.Text);
            //sqlinsertquery.Parameters.AddWithValue("@Module_Extension", DropDownList2.Text);
            //sqlinsertquery.Parameters.AddWithValue("@Module_Content", bytes);
            //sqlinsertquery.Parameters.AddWithValue("@Module_Upload_Date", moduledate.Text);

            //sqlConn.Open();
            //sqlinsertquery.ExecuteNonQuery();
            //sqlConn.Close();

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

                    con.Close();                    
                }
                RowNumber++;
            }
            
            //Insert data into Course Exam table
            //----------------------------------------------------------------------------------
            TextBox txtExamName;
            TextBox ExamDate;
            TextBox txtStartTime;
            TextBox txtEndTime;
            TextBox txtExamLink;

            int RowNumbers = 1;
            foreach (GridViewRow row2 in CourseExamTable.Rows)
            {
                txtExamName = (TextBox)row2.FindControl("txtExamName");
                ExamDate = (TextBox)row2.FindControl("ExamDate");
                txtStartTime = (TextBox)row2.FindControl("txtStartTime");
                txtEndTime = (TextBox)row2.FindControl("txtEndTime");
                txtExamLink = (TextBox)row2.FindControl("txtExamLink");

                if (txtExamName == null || ExamDate == null || txtStartTime == null || txtEndTime == null || txtExamLink == null)
                {
                    return;
                }

                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();
                    SqlCommand cmd2 = new SqlCommand("Course_Exam_Time_Table", conn);
                    cmd2.CommandType = CommandType.StoredProcedure;

                    cmd2.Parameters.AddWithValue("@e_course", tmp);
                    cmd2.Parameters.AddWithValue("@e_name", txtExamName.Text.ToString());
                    cmd2.Parameters.AddWithValue("@e_date", ExamDate.Text.ToString());
                    cmd2.Parameters.AddWithValue("@start_time", txtStartTime.Text.ToString());
                    cmd2.Parameters.AddWithValue("@end_time", txtEndTime.Text.ToString());
                    cmd2.Parameters.AddWithValue("@e_status", "Active");
                    cmd2.Parameters.AddWithValue("@e_link", txtExamLink.Text.ToString());

                    cmd2.ExecuteNonQuery();
                    conn.Close();
                }
                RowNumbers++;
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

                        TextBox box1 = (TextBox)GridModuleContent.Rows[rowIndex].Cells[0].FindControl("CModuleTopic");
                        DropDownList box2 = (DropDownList)GridModuleContent.Rows[rowIndex].Cells[1].FindControl("CModuleType");
                        DropDownList box3 = (DropDownList)GridModuleContent.Rows[rowIndex].Cells[2].FindControl("CModule_Extension");
                        TextBox box4 = (TextBox)GridModuleContent.Rows[rowIndex].Cells[3].FindControl("Module_content");
                        TextBox box5 = (TextBox)GridModuleContent.Rows[rowIndex].Cells[4].FindControl("Content_Date");                        

                        drCurrentRow = dtCurrentTable.NewRow();

                        //drCurrentRow["SlNo"] = i + 1;
                        dtCurrentTable.Rows[i - 1]["CModuleTopic"] = box1.Text;
                        dtCurrentTable.Rows[i - 1]["CModuleType"] = box2.Text;
                        dtCurrentTable.Rows[i - 1]["CModule_Extension"] = box3.Text;
                        dtCurrentTable.Rows[i - 1]["Module_content"] = box4.Text;
                        dtCurrentTable.Rows[i - 1]["Content_Date"] = box5.Text;
                        

                        rowIndex++;

                    }

                    dtCurrentTable.Rows.Add(drCurrentRow);

                    ViewState["CurrentTable2"] = dtCurrentTable;
                    GridModuleContent.DataSource = dtCurrentTable;
                    GridModuleContent.DataBind();

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
                        TextBox box1 = (TextBox)GridModuleContent.Rows[rowIndex].Cells[0].FindControl("CModuleTopic");
                        DropDownList box2 = (DropDownList)GridModuleContent.Rows[rowIndex].Cells[1].FindControl("CModuleType");
                        DropDownList box3 = (DropDownList)GridModuleContent.Rows[rowIndex].Cells[2].FindControl("CModule_Extension");
                        TextBox box4 = (TextBox)GridModuleContent.Rows[rowIndex].Cells[3].FindControl("Module_content");
                        TextBox box5 = (TextBox)GridModuleContent.Rows[rowIndex].Cells[4].FindControl("Content_Date");
                        
                        box1.Text = dt.Rows[i - 1]["CModuleTopic"].ToString();
                        box2.Text = dt.Rows[i - 1]["CModuleType"].ToString();
                        box3.Text = dt.Rows[i - 1]["CModule_Extension"].ToString();
                        box4.Text = dt.Rows[i - 1]["Module_content"].ToString();
                        box5.Text = dt.Rows[i - 1]["Content_Date"].ToString();
                        
                        rowIndex++;

                    }

                }

            }
        }

        //Add Exam new row
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            AddExam_Row();
        }

        //new Exam add function
        private void AddExam_Row()
        {
            int rowIndex = 0;
            if (ViewState["CurrentTable3"] != null)
            {
                DataTable dtCurrentTable = (DataTable)ViewState["CurrentTable3"];
                DataRow drCurrentRow = null;
                if (dtCurrentTable.Rows.Count > 0)
                {
                    for (int i = 1; i <= dtCurrentTable.Rows.Count; i++)
                    {
                        //extract the TextBox values

                        TextBox box1 = (TextBox)CourseExamTable.Rows[rowIndex].Cells[0].FindControl("txtExamName");
                        TextBox box2 = (TextBox)CourseExamTable.Rows[rowIndex].Cells[1].FindControl("ExamDate");
                        TextBox box3 = (TextBox)CourseExamTable.Rows[rowIndex].Cells[2].FindControl("txtStartTime");
                        TextBox box4 = (TextBox)CourseExamTable.Rows[rowIndex].Cells[3].FindControl("txtEndTime");
                        TextBox box5 = (TextBox)CourseExamTable.Rows[rowIndex].Cells[4].FindControl("txtExamLink");
                        

                        drCurrentRow = dtCurrentTable.NewRow();

                        //drCurrentRow["SlNo"] = i + 1;
                        dtCurrentTable.Rows[i - 1]["txtExamName"] = box1.Text;
                        dtCurrentTable.Rows[i - 1]["ExamDate"] = box2.Text;
                        dtCurrentTable.Rows[i - 1]["txtStartTime"] = box3.Text;
                        dtCurrentTable.Rows[i - 1]["txtEndTime"] = box4.Text;
                        dtCurrentTable.Rows[i - 1]["txtExamLink"] = box5.Text;
                        
                        rowIndex++;
                    }
                    dtCurrentTable.Rows.Add(drCurrentRow);
                    ViewState["CurrentTable3"] = dtCurrentTable;
                    CourseExamTable.DataSource = dtCurrentTable;
                    CourseExamTable.DataBind();
                }
            }
            else
            {
                Response.Write("ViewState is null");
            }
            //Set Previous Data on Postbacks

            SetPreviousExamData();
        }
        //Set Previous Exam data
        private void SetPreviousExamData()
        {
            int rowIndex = 0;
            if (ViewState["CurrentTable3"] != null)
            {
                DataTable dt = (DataTable)ViewState["CurrentTable3"];
                if (dt.Rows.Count > 0)
                {
                    for (int i = 1; i <= dt.Rows.Count; i++)
                    {
                        TextBox box1 = (TextBox)CourseExamTable.Rows[rowIndex].Cells[0].FindControl("txtExamName");
                        TextBox box2 = (TextBox)CourseExamTable.Rows[rowIndex].Cells[1].FindControl("ExamDate");
                        TextBox box3 = (TextBox)CourseExamTable.Rows[rowIndex].Cells[2].FindControl("txtStartTime");
                        TextBox box4 = (TextBox)CourseExamTable.Rows[rowIndex].Cells[3].FindControl("txtEndTime");
                        TextBox box5 = (TextBox)CourseExamTable.Rows[rowIndex].Cells[4].FindControl("txtExamLink");                        

                        box1.Text = dt.Rows[i - 1]["txtExamName"].ToString();
                        box2.Text = dt.Rows[i - 1]["ExamDate"].ToString();
                        box3.Text = dt.Rows[i - 1]["txtStartTime"].ToString();
                        box4.Text = dt.Rows[i - 1]["txtEndTime"].ToString();
                        box5.Text = dt.Rows[i - 1]["txtExamLink"].ToString();                        

                        rowIndex++;

                    }

                }

            }
        }
        //Initial Exam row
        private void Initial_Exam_Row()
        {
            DataTable dt1 = new DataTable();
            DataRow dr1 = null;
            dt1.Columns.Add(new DataColumn("txtExamName", typeof(string)));
            dt1.Columns.Add(new DataColumn("ExamDate", typeof(string)));
            dt1.Columns.Add(new DataColumn("txtStartTime", typeof(string)));
            dt1.Columns.Add(new DataColumn("txtEndTime", typeof(string)));            
            dt1.Columns.Add(new DataColumn("txtExamLink", typeof(string)));

            dr1 = dt1.NewRow();
            dr1["txtExamName"] = string.Empty;
            dr1["ExamDate"] = string.Empty;
            dr1["txtStartTime"] = string.Empty;
            dr1["txtEndTime"] = string.Empty;            
            dr1["txtExamLink"] = string.Empty;
            dt1.Rows.Add(dr1);

            ViewState["CurrentTable3"] = dt1;
            CourseExamTable.DataSource = dt1;
            CourseExamTable.DataBind();
        }
    }
    
}