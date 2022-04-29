using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Linq;
using BussinessLogicLib;
using BussinessLogicLib.Entities;

namespace EmployeeProject
{
    public partial class Register : System.Web.UI.Page
    {
        private void BindDataAndFields(DropDownList dropDownList, DataSet dataSet, string dataTextField, string dataTextValue)
        {
            dropDownList.DataSource = dataSet;
            dropDownList.DataTextField = dataTextField;
            dropDownList.DataValueField = dataTextValue;
            dropDownList.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["EmployeeId"] != null)
                {
                    Response.Redirect("Home");
                }

                PasswordField1.Attributes["type"] = "password";
                PopulateGenderRadioButtonList();
                PopulateDepartmentDropdownList();
                PopulateStatesDropdownList();
                PopulateCountryDropdownList();
                PopulateCitiesDropdownList();
            }
        }

        private void PopulateGenderRadioButtonList()
        {
            string filePath = Server.MapPath("Genders.xml");
            DataSet data = new DataSet();
            data.ReadXml(filePath);
            Gender.DataSource = data;
            Gender.DataTextField = "GenderText";
            Gender.DataValueField = "GenderValue";
            Gender.DataBind();

        }

        private void PopulateDepartmentDropdownList()
        {
            DataSet departments = DeparmentHandler.GetAllDepartments();
            BindDataAndFields(DepartmentField, departments, "DepartmentName", "DepartmentId");
            ListItem item = new ListItem("Select Department", "0");
            DepartmentField.Items.Insert(0, item);
        }

        private void PopulateStatesDropdownList()
        {
            DataSet states = AddressHandler.GetAllStatesList();
            BindDataAndFields(State, states, "StatesName", "StateId");
            ListItem item = new ListItem("Select State", "-1");
            State.Items.Insert(0, item);
        }

        private void PopulateCountryDropdownList()
        {
            Country.Items.Add(new ListItem("India", "India"));
            Country.Enabled = false;
            Country.SelectedIndex = 0;
        }

        private void PopulateCitiesDropdownList()
        {
            City.Enabled = false;
            ListItem item = new ListItem("Select City", "-1");
            City.Items.Insert(0, item);
        }


        protected void FirstName_TextChanged(object sender, EventArgs e)
        {

        }

        private Employee PopulateEmployee()
        {
            Employee emp = new Employee();
            emp.FirstName = FirstName.Text;
            emp.LastName = LastName.Text;
            emp.City = City.SelectedItem.Text;
            emp.Country = Country.SelectedItem.Text;
            emp.EmpState = State.SelectedItem.Text;
            emp.Gender = Gender.SelectedValue;
            emp.Department = DepartmentField.SelectedItem.Text;
            emp.Email = Email.Text;
            emp.Password =  PasswordField1.Text;
            return emp;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Employee employee = PopulateEmployee();


            IDictionary<int, string> result = EmployeeHandler.SaveNewRecord(employee);

            if (result.ContainsKey(1))
            {
                Session["Message"] = "Welcome " + "<b>" + employee.FirstName.ToUpper() + " " + employee.LastName.ToUpper() + "</b>" + " please login to continue!";
                Response.Redirect("Login");
            }

            else
            {
                string value = result[-1];
                string message;
                if (value.Contains("duplicate key"))
                {
                    message = "Email " + employee.Email + " already exists";
                }
                else
                {
                    message = "Some other error occured please try again!";
                }
                MessageLabel.Text = message;
                MessageLabel.CssClass = "text-danger";
            }        
        }

        protected void State_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (State.SelectedIndex == 0)
            {
                City.Enabled = false;
                City.SelectedIndex = 0;
            }
            else
            {
                City.Enabled = true;
                int stateId = Int32.Parse(State.SelectedValue);
                DataSet cities = AddressHandler.GetAllCitiesListByStateId(stateId);
                BindDataAndFields(City, cities, "CityName", "CityId");
                ListItem item = new ListItem("Select City", "-1");
                City.Items.Insert(0, item);
            }
        }
    }
}