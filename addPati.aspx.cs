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
    public partial class addPati : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\TT\Downloads\FirmusGroup-main\FirmusGroup-main\TembisaHospitalSystem\App_Data\patient.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GenderDropDownList.Items.Add("male");
                GenderDropDownList.Items.Add("female");
                wardDropDownList.Items.Add("ICU");
                wardDropDownList.Items.Add("DiseaseControl");
                wardDropDownList.Items.Add("Covid");

                DateTime myDate = new DateTime(DateTime.Today.Year, DateTime.Today.Month, DateTime.Today.Day);
                dateLbl.Text = myDate.ToLongDateString();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataAdapter adapter = new SqlDataAdapter();
            SqlDataReader reader;
            SqlCommand command;

            double weight = double.Parse(weightTxtBx.Text);
            double height = double.Parse(heightTxtBx.Text);

            double BMI = BMICalculator(height, weight);
            
            con.Open();

            string sql = $"INSERT INTO patientTbl(Patient_ID, Name, Surname, gender, email, height, weight, BMI, Condition) VALUES('{patientIDTxtBx.Text}' , '{nameTxtBx.Text}', '{surnameTxtBx.Text}', '{GenderDropDownList.SelectedValue}', '{emailTxtBx.Text}', '{height}', '{weight}', '{BMI}', '{conditionTxtBx.Text}')";

            command = new SqlCommand(sql, con);

            adapter.InsertCommand = command;
            adapter.InsertCommand.ExecuteNonQuery();

            con.Close();

            Response.Write("<script>alert('Patient has been succesfully added!!')</script>");
        }

        public double BMICalculator(double height, double weight)
        {
            double BMI;

            BMI = (weight * 703) / (height * height);

            return BMI;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("StaffHomePage.aspx");
        }
    }
}