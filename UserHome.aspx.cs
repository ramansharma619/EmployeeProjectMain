using BussinessLogicLib;
using BussinessLogicLib.Entities;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeProject
{
    public partial class UserHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.BindGrid();
            }

        }

        private void BindGrid()
        {
            DataTable data = EmployeeHandler.GetSingleRecordById(1);
            GridView1.DataSource = data;
            GridView1.DataBind();
        }

        protected void OnRowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            this.BindGrid();
        }

        protected void OnRowCancelingEdit(object sender, EventArgs e)
        {
            GridView1.EditIndex = -1;
            this.BindGrid();
        }

        protected Employee PopulateEmployee(GridViewRow row)
        {

            Employee emp = new Employee();

            emp.City = "test";
            emp.Country = "tesssst";
            emp.EmpState = "test";
            emp.Department = "test";

            emp.FirstName = (row.FindControl("FirstName") as TextBox).Text;
            emp.LastName = (row.FindControl("LastName") as TextBox).Text;
            emp.Password = (row.FindControl("Password") as TextBox).Text;
            //emp.LastName = (row.FindControl("LastName") as TextBox).Text;
            //emp.City = (row.FindControl("City") as TextBox).Text;
            //emp.Country = (row.FindControl("Country") as TextBox).Text;
            //emp.EmpState = (row.FindControl("EmpState") as TextBox).Text;
            //emp.Gender = (row.FindControl("Gender") as TextBox).Text;
            //emp.Department = (row.FindControl("Department") as TextBox).Text; 
            //emp.Password = (row.FindControl("Password") as TextBox).Text;
            //emp.EmployeeId = Convert.ToInt32((row.FindControl("EmployeeId") as TextBox).Text);
            return emp;
        }


        protected void OnRowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int EmployeeId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            GridViewRow row = GridView1.Rows[e.RowIndex];
            Employee employee = PopulateEmployee(row);
            EmployeeHandler.UpdateRecord(EmployeeId, employee);
            GridView1.EditIndex = -1;
            this.BindGrid();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}