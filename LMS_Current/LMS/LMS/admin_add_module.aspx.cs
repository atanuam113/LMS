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

namespace LMS
{
    public partial class admin_add_module : System.Web.UI.Page
    {
        //Atanu's string
        string connectionString = @"Data Source=DESKTOP-539AVIS\SQLEXPRESS;Initial Catalog=LMS;Integrated Security=True";
        //Nabonita's string
        //string connectionString = @"Data Source=DESKTOP-KAEBEC0\\SQLEXPRESS;Initial Catalog=LMS Project;Integrated Security=True";       

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            //Insert data into Course Module content
            //----------------------------------------------------------------------------------
            SqlConnection sqlConn = new SqlConnection(connectionString);

            Stream fs = modulecontent.PostedFile.InputStream;
            BinaryReader br = new BinaryReader(fs); //reads the binary files  
            Byte[] bytes = br.ReadBytes((Int32)fs.Length); //counting the file length into bytes  

            string query_module_content = "INSERT INTO CourseModuleDetails (Course_ID,Module_Topic,Module_Type,Module_Extension,Module_Content,Module_Upload_Date) VALUES(@Course_ID,@Module_Topic,@Module_Type,@Module_Extension,@Module_Content,@Module_Upload_Date)";
            SqlCommand sqlinsertquery = new SqlCommand(query_module_content, sqlConn);

            sqlinsertquery.Parameters.AddWithValue("@Course_ID", 1012);
            sqlinsertquery.Parameters.AddWithValue("@Module_Topic", txtmoduletopic.Text);
            sqlinsertquery.Parameters.AddWithValue("@Module_Type", ddmoduletype.Text);
            sqlinsertquery.Parameters.AddWithValue("@Module_Extension", DropDownList2.Text);
            sqlinsertquery.Parameters.AddWithValue("@Module_Content", bytes);
            sqlinsertquery.Parameters.AddWithValue("@Module_Upload_Date", moduledate.Text);

            sqlConn.Open();
            sqlinsertquery.ExecuteNonQuery();
            sqlConn.Close();

        }

    }
}