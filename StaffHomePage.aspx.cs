using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace TembisaHospitalSystem
{
    public partial class StaffHomePage : System.Web.UI.Page
    {
        public SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\TT\Downloads\FirmusGroup-main\FirmusGroup-main\TembisaHospitalSystem\App_Data\patient.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                SqlDataAdapter adapter;
                SqlDataReader reader;
                SqlCommand command;

                con.Open();

                string sql = "SELECT Patient_ID, Name, Surname, gender, email, BMI, Condition from patientTbl";
                command = new SqlCommand(sql, con);
                reader = command.ExecuteReader();

                GridView1.DataSource = reader;
                GridView1.DataBind();
                

                con.Close();
                con.Open();

                string sqlQUERY = "SELECT Patient_ID, Name, Surname, gender, email, BMI, Condition from patientTbl";
                command = new SqlCommand(sqlQUERY, con);
                reader = command.ExecuteReader();

                while (reader.Read())
                {
                    patientsDropDownList.Items.Add(reader.GetValue(0).ToString());
                }

                con.Close();

                userLbl.Text = Session["Name"].ToString() + " is currently logged in.";
                DateTime myDate = new DateTime(DateTime.Today.Year, DateTime.Today.Month, DateTime.Today.Day);
                dateLbl.Text = myDate.ToLongDateString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("");
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlDataAdapter adapter;
            SqlDataReader reader;
            SqlCommand command;

            con.Open();

            string sql = "SELECT Patient_ID, Name, Surname, gender, email, BMI, Condition from patientTbl Where Name LIKE '%" + searchTxtBx.Text + "%'";

            command = new SqlCommand(sql, con);
            reader = command.ExecuteReader();

            GridView1.DataSource = reader;
            GridView1.DataBind();

            con.Close();
            con.Open();

            string sqlQUERY = "SELECT Patient_ID, Name, Surname, gender, email, BMI, Condition from patientTbl Where Name LIKE '%" + searchTxtBx.Text + "%'";
            command = new SqlCommand(sqlQUERY, con);
            reader = command.ExecuteReader();

            while (reader.Read())
            {
                patientsDropDownList.Items.Add(reader.GetValue(0).ToString());
            }

            con.Close();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlDataAdapter adapter;
            SqlDataReader reader;
            SqlCommand command;

            con.Open();

            string sql = "SELECT Patient_ID, Name, Surname, gender, email, BMI, Condition from patientTbl Where Name LIKE '%" + searchTxtBx.Text + "%'";

            command = new SqlCommand(sql, con);
            reader = command.ExecuteReader();

            while (reader.Read())
            {
                patientsDropDownList.Items.Add(reader.GetValue(0).ToString());
            }

            Session["currentPatient"] = patientsDropDownList.SelectedValue;

            GridView1.DataSource = reader;
            GridView1.DataBind();

            //Session["currentPatient"] = searchTxtBx.Text;

            con.Close();

            Response.Redirect("PatientDetailsStaffView.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Cookies.Clear();
            Response.Redirect("Staff.aspx");
        }

        protected void searchTxtBx_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("addPati.aspx");
        }

        protected void wardsBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("wards.aspx");
        }
    }
}