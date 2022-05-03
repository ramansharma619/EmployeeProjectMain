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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if(Session["EmployeeId"] != null)
                {
                    Response.Redirect("Home");
                }

                //PasswordField.Attributes["type"] = "password";
                if (Session["Message"] != null)
                {
                    MessageLabel.Text = Session["Message"].ToString();
                    MessageLabel.CssClass = "text-success";
                }
            }
        }

        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            
            var id = EmployeeHandler.CheckRecordInDataBase(Email.Text, PasswordField1.Value);
            if (id is null)
            {
                MessageLabel.Text = "Invalid email or password";
                MessageLabel.CssClass = "text-danger";

            }
            else
            {
                Session["EmployeeId"] = id;
                Response.Redirect("Home.aspx");
            }

        }
 

    }
}