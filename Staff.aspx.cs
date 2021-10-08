using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace TembisaHospitalSystem
{
    public partial class Staff : System.Web.UI.Page
    {
        string constring = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\TT\Downloads\FirmusGroup-main\FirmusGroup-main\TembisaHospitalSystem\App_Data\patient.mdf;Integrated Security=True";
        SqlConnection conn;
        SqlCommand comm;
        DataSet ds;
        SqlDataAdapter adap;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                DateTime myDate = new DateTime(DateTime.Today.Year, DateTime.Today.Month, DateTime.Today.Day);
                dateLbl.Text = myDate.ToLongDateString();
                usernameTxtBx.Focus();
            }
            
        }

        private bool IsPasswordMatch(string FirstPassword, string SecondPassword)
        {
            if (FirstPassword == SecondPassword)
            {
                return true;
            }
            else
                return false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string sql, output;
                conn = new SqlConnection(constring);
                SqlDataReader reader;
                conn.Open();
                sql = $"SELECT * FROM staffDetails";
                comm = new SqlCommand(sql, conn);

                reader = comm.ExecuteReader(); //Read lines sequentially

                while (reader.Read())
                {
                    if (reader.GetValue(1).ToString() == usernameTxtBx.Text && reader.GetValue(2).ToString() == passwordTxtBx.Text) //Check if login details are valid before proceeding
                    {
                        HttpCookie userSession = new HttpCookie("IsLoggedIn"); // Set sessions to keep the user logged in

                        userSession.Value = "True";
                        userSession.Expires = DateTime.Now.AddHours(1);
                        Response.Cookies.Add(userSession);

                        //Create session to store the user name
                        Session["Name"] = reader.GetValue(1).ToString();

                        //Log in the user
                        Response.Redirect("StaffHomePage.aspx");
                    }
                    else
                    {
                        Response.Write($"<script>alert('Invalid username/password')</script>");
                    }
                }

                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write($"<script>alert('{ex.Message}')</script>");
            }

            //Session["new"] = usernameTxtBx.Text;
            //Response.Redirect("staffHomePage.aspx");
        }

        protected void usernameTxtBx_TextChanged(object sender, EventArgs e)
        {
            
        }
    }
}