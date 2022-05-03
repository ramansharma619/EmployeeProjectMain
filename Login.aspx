<%@ Page Language="C#" Title="Login Page" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EmployeeProject.Login" %>
  
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   

    <div class="container d-flex align-items-center vh-100">
        <div class="row w-100">
         
            <div class="col-8 m-auto card shadow-sm">
                <div class="card-body">

                       <div class="col-12 d-flex justify-content-center align-items-center mb-3">
                <span class="h3 text-muted">
                    <%: Title %>
                </span>
            </div>

                    <div class="mb-1  text-center mx-auto   ">
                        <asp:Label ID="MessageLabel" CssClass="text-success font-weight-bold" runat="server" Text=""></asp:Label>
                    </div>

                    <div class="form-group m-auto p-3">
                        <div class="row m-auto d-flex justify-content-center">
                            <div class="col-lg-6 col-sm-12">
                                <label for="Email">Email Address</label>
                                <asp:TextBox CssClass="form-control" ID="Email" runat="server" ForeColor="Black" TextMode="Email"></asp:TextBox>
                                <small class="form-text text-muted">
                                    <asp:RequiredFieldValidator CssClass="text-danger" ID="EmailValidate" runat="server" ErrorMessage="Please enter the Email" ControlToValidate="Email"></asp:RequiredFieldValidator>
                                </small>
                            </div>
                        </div>

                        <div class="row m-auto d-flex justify-content-center">
                            <div class="col-lg-6 col-sm-12">
                                <label for="PasswordField">Password</label>
                                <div class="" style="position: relative"> 
                                    <input id="PasswordField1" type="password" class="form-control" runat="server"/>
                                    <i onclick="ToggleIcon()" id="EyeIcon" style="position: absolute; cursor: pointer; top: 12px; right: 5px;" class="fa-solid fa-eye"></i>
                                </div>
                                <small class="form-text text-muted ">
                                    <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredPassword" runat="server" ErrorMessage="Please enter the password" ControlToValidate="PasswordField1"></asp:RequiredFieldValidator>
                                </small>
                            </div>
                        </div>


                        <div class="row m-auto d-flex justify-content-center">
                            <div class="col-6">
                                <asp:Button ID="LoginBtn" CssClass="btn btn-outline-info w-100 " runat="server" Text="Login" OnClick="LoginBtn_Click" />
                            </div>
                        </div>

                        <div class="row m-auto p-2 d-flex justify-content-center">
                            <div class="col-6">
                                <asp:HyperLink ID="LoginLink" runat="server" NavigateUrl="~/Register.aspx">Already have an account!</asp:HyperLink>

                            </div>
                        </div>

                        <div class="row m-auto p-2 d-flex justify-content-center">
                            <div class="col-6">
                                <asp:HyperLink ID="ForgetPassword" runat="server" NavigateUrl="~/Forget.aspx">Forgot Password <i class="fa-solid fa-question"></i> </asp:HyperLink>

                            </div>
                        </div>


                    </div>
                </div>
            </div>
        </div>



    </div>

    <script type="text/javascript">
        const icon = document.getElementById("EyeIcon");
        const pwd = document.getElementById("MainContent_PasswordField1");
        icon.addEventListener("click", () => {
            if (icon.classList.contains("fa-eye")) {
                icon.classList.remove("fa-eye");
                icon.classList.add("fa-eye-slash");
                pwd.setAttribute("type", "text");

            } else {
                icon.classList.remove("fa-eye-slash");
                icon.classList.add("fa-eye");
                pwd.setAttribute("type", "password");

            }
        })
    </script>

</asp:Content>

