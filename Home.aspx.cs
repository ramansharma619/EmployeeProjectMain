using BussinessLogicLib;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeProject
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["EmployeeId"] != null)
            {
                DataTable data = EmployeeHandler.GetSingleRecordById(Convert.ToInt32(Session["EmployeeId"]));
                EmployeeDetails.DataSource = data;
                EmployeeDetails.DataBind();
            }
            else
            {
                Response.Redirect("Login");
            }


        }

        protected void LogOut_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Login");

        }

        protected void EmployeeDetails_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Write("!");
        }



        protected void OnRowDeleting(object sender, EventArgs e)
        {
            int result = EmployeeHandler.DeleteRecordById(Convert.ToInt32(Session["EmployeeId"]));
            if (result > 0)
            {
                Session["Message"] = "Record deleted succesfully!!";
                Response.Redirect("Login");
            }
        }

        protected void DeleteUser_Click(object sender, EventArgs e)
        {
            int result = EmployeeHandler.DeleteRecordById(Convert.ToInt32(Session["EmployeeId"]));
            if (result > 0)
            {
                Session["Message"] = "Record deleted succesfully!!";
                Response.Redirect("Login");
            }
        }
    }
}