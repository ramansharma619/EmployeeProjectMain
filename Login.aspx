<%@ Page Language="C#" Title="Login Page" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EmployeeProject.Login" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container bg-light d-flex align-items-center flex-column min-vh-50 my-5">

        <%-- Page title goes here --%>
        <div class="w-100 p-3   text-center  text-muted">
            <span class="h3">
                <%: Title %>
            </span>
        </div>



        <%-- login Form --%>

        <div class=" w-100  ">

            <%-- Label control for dipsly messages --%>
            <div class="mb-1  text-center mx-auto   ">
                <asp:Label ID="MessageLabel" CssClass="text-success font-weight-bold" runat="server" Text=""></asp:Label>
            </div>

            <div class="form-group   bg-light  m-auto p-3">
                <div class="row my-2   d-flex justify-content-center">
                    <div class="col-lg-6 col-sm-12">
                        <label for="Email">Email Address</label>
                        <asp:TextBox CssClass="form-control" ID="Email" runat="server" ForeColor="Black" TextMode="Email"></asp:TextBox>
                        <small class="form-text text-muted">
                            <asp:RequiredFieldValidator CssClass="text-danger" ID="EmailValidate" runat="server" ErrorMessage="Please enter the Email" ControlToValidate="Email"></asp:RequiredFieldValidator>
                        </small>
                    </div>
                </div>

                <div class="row my-2   d-flex justify-content-center">
                    <div class="col-lg-6 col-sm-12">
                        <label for="PasswordField">Password</label>
                        <asp:TextBox ID="PasswordField" runat="server" CssClass="form-control"></asp:TextBox>
                        <small class="form-text text-muted ">
                            <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredPassword" runat="server" ErrorMessage="Please enter the password" ControlToValidate="PasswordField"></asp:RequiredFieldValidator>
                        </small>
                    </div>
                </div>

                <div class="row my-3 d-flex justify-content-center">
                    <div class="col-lg-3 col-sm-12">
                        <asp:Button ID="LoginBtn" CssClass="btn btn-outline-info w-100 " runat="server" Text="Login" OnClick="LoginBtn_Click" />
                    </div>
                    <div class="col-lg-3 col-sm-12">
                        <asp:HyperLink ID="LoginLink" runat="server" NavigateUrl="~/Register.aspx">Already registered!</asp:HyperLink>
                    </div>
                   
                </div>
                <div class="row">
                     <div class="col-lg-3 col-sm-12 text" >
                        <asp:HyperLink ID="ForgetPassword" runat="server" NavigateUrl="~/Forget.aspx">Forgot Password</asp:HyperLink>
                    </div>
                </div>

            </div>

        </div>
    </div>
</asp:Content>

