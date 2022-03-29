using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LMS.Student
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["USER_ID"] == null)
            {
                Response.Redirect("../HomePage.aspx");
            }
            //else
            //{
            //    Response.Redirect("Index.aspx");
            //}
        }

        protected void logout_Click(object sender, EventArgs e)
        {

        }
    }
}