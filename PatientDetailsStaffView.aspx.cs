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
    public partial class PatientDetailsStaffView : System.Web.UI.Page
    {
        public SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\TT\Downloads\FirmusGroup-main\FirmusGroup-main\TembisaHospitalSystem\App_Data\patient.mdf;Integrated Security=True");
        public SqlDataAdapter adapter = new SqlDataAdapter();
        public SqlDataReader reader;
        public SqlCommand command;


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            { 
                con.Open();

                string sql = $"SELECT Patient_ID, Name, Surname, gender, email, height, weight, Condition from patientTbl Where Patient_ID = '{Session["currentPatient"]}'";

                command = new SqlCommand(sql, con);
                reader = command.ExecuteReader();

                GridView1.DataSource = reader;
                GridView1.DataBind();
                con.Close();

                con.Open();

                string sqlQuery = $"SELECT Patient_ID, Name, Surname, gender, email, height, weight, Condition from patientTbl Where Patient_ID = '{Session["currentPatient"]}'";

                command = new SqlCommand(sqlQuery, con);
                reader = command.ExecuteReader();

                while (reader.Read())
                {
                    nameTxtBx.Text = reader.GetValue(1).ToString();
                    surnameTxtBx.Text = reader.GetValue(2).ToString();
                    GenderDropDownList.Items.Add(reader.GetValue(3).ToString());
                    emailTxtBx.Text = reader.GetValue(4).ToString();
                    heightTxtBx.Text = reader.GetValue(5).ToString();
                    weightTxtBx.Text = reader.GetValue(6).ToString();
                    conditionTxtBx.Text = reader.GetValue(7).ToString();
                }

                con.Close();

                patientIdLbL.Text = "Patient: " + Session["currentPatient"];

                DateTime myDate = new DateTime(DateTime.Today.Year, DateTime.Today.Month, DateTime.Today.Day);
                dateLbl.Text = myDate.ToLongDateString();
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

        }

        protected void Button6_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            con.Close();

            Response.Write("<script>alert('Update successful.')</script>");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("StaffHomePage.aspx");
        }

        protected void deleteBtn_Click(object sender, EventArgs e)
        {
            

            con.Open();

            string sqlQuery = $"DELETE FROM patientTbl WHERE Patient_ID = '{Session["currentPatient"]}' ";

            command = new SqlCommand(sqlQuery, con);

            adapter.InsertCommand = command;
            adapter.InsertCommand.ExecuteNonQuery();

            con.Close();

            Response.Write("<script>alert('Deletion successful.')</script>");
            Response.Redirect("StaffHomePage.aspx");
        }
    }
}