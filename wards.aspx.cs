using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace TembisaHospitalSystem
{
    public partial class Patient : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                DateTime myDate = new DateTime(DateTime.Today.Year, DateTime.Today.Month, DateTime.Today.Day);
                dateLbl.Text = myDate.ToLongDateString();
            }
        }

        protected void backBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("StaffHomePage.aspx");
        }
    }
}