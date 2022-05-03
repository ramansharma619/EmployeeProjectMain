using BussinessLogicLib;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeProject
{
    public partial class Forget : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            alertBox.Visible = false;
            NewPassword.Attributes["type"] = "password";
            ConfirmPassword.Attributes["type"] = "password";
        }

        protected void Reset_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string email = Email.Text;
                string newPassword = NewPassword.Text; 
                bool isChanged = EmployeeHandler.SearchRecordByEmailIdAndUpdatePassword(email, newPassword);
                if (isChanged)
                {
                    Session["Message"] = "Password Changed succesfully!";
                    Response.Redirect("Login");
                }
                else
                {
                    alertBox.Visible = true;
                    AlertMsg.Text = "Please enter a valid email";

                }

            }

        }
    }
}