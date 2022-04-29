<%@ Page Title="Registeration Form" MasterPageFile="~/Site.Master" Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="EmployeeProject.Register" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container m-3 d-flex justify-content-center flex-column">

        <span class="h3 p-3 text-center">
            <%: Title %>
        </span>

        <div class="text-center mb-2">
            <asp:Label ID="MessageLabel" CssClass="text-success" runat="server" Text=""></asp:Label>
        </div>

        <div class="form-group p-3 bg-light m-auto">
            <div class="row">
                <div class="col-lg-6 col-sm-12">
                    <label for="FirstName">First Name</label>
                    <asp:TextBox CssClass="form-control" ID="FirstName" runat="server" ForeColor="Black" AutoPostBack="True" OnTextChanged="FirstName_TextChanged"></asp:TextBox>
                    <small class="form-text text-muted">
                        <asp:RequiredFieldValidator CssClass="text-danger" ID="FirstNameValidate" runat="server" ErrorMessage="Please enter the First Name" ControlToValidate="FirstName"></asp:RequiredFieldValidator>
                    </small>
                </div>
                <div class="col-lg-6 col-sm-12">
                    <label for="LastName">Last Name</label>
                    <asp:TextBox CssClass="form-control" ID="LastName" runat="server" ForeColor="Black"></asp:TextBox>
                    <small class="form-text text-muted">
                        <asp:RequiredFieldValidator CssClass="text-danger" ID="LastNameValidate" runat="server" ErrorMessage="Please enter the Last Name" ControlToValidate="LastName"></asp:RequiredFieldValidator>
                    </small>
                </div>
            </div>
            <div class="row my-2">
                <div class="col-lg-12">
                    <label for="Email">Email Address</label>
                    <asp:TextBox CssClass="form-control" ID="Email" runat="server" ForeColor="Black" TextMode="Email"></asp:TextBox>
                    <small class="form-text text-muted">
                        <asp:RequiredFieldValidator CssClass="text-danger" ID="EmailValidate" runat="server" ErrorMessage="Please enter the Email" ControlToValidate="Email"></asp:RequiredFieldValidator>
                    </small>
                </div>
            </div>
            <div class="row my-2">
                <div class="col-lg-12">
                    <label for="PasswordField1">Password</label>
                    <asp:TextBox ID="PasswordField1" runat="server" CssClass="form-control"></asp:TextBox>
                    <small class="form-text text-muted">
                        <asp:RequiredFieldValidator CssClass="text-danger" ID="PasswordValidate" runat="server" ErrorMessage="Please enter the Password" ControlToValidate="PasswordField1"></asp:RequiredFieldValidator>
                    </small>
                </div>
            </div>

            <div class="row my-2">
                <div class="col-lg-6 col-sm-12">
                    <label for="Department">Department</label>
                    <asp:DropDownList CssClass="form-control" ID="DepartmentField" runat="server" ValidationGroup="Dept1"></asp:DropDownList>
                    <small class="form-text text-muted">
                        <asp:RequiredFieldValidator InitialValue="0" CssClass="text-danger" ID="DepartmentValidator2" runat="server" ErrorMessage="Please choose a department" ControlToValidate="DepartmentField"></asp:RequiredFieldValidator>
                        <%--<asp:CompareValidator CssClass="text-danger" Operator="NotEqual" ValueToCompare="-1" Type="String" ID="DepartmentValidator1" ValidationGroup="Dept" runat="server" ControlToValidate="DepartmentField"  ErrorMessage="Please select a department"></asp:CompareValidator>--%>
                    </small>
                </div>
                <div class="col-lg-6 col-sm-12 input-group d-flex flex-column ">
                    <label for="Gender">Gender</label>
                    <asp:RadioButtonList ID="Gender" runat="server" RepeatDirection="Horizontal"></asp:RadioButtonList>
                    <small class="form-text text-muted">
                        <asp:RequiredFieldValidator CssClass="text-danger" ID="GenderValidate" runat="server" ErrorMessage="Please select gender" ControlToValidate="Gender"></asp:RequiredFieldValidator>
                    </small>
                </div>
            </div>
            <div class="row my-2">
                <div class="col-lg-4 col-sm-12">
                    <label for="Country">Country</label>
                    <asp:DropDownList CssClass="form-control" ID="Country" runat="server" ToolTip="India"></asp:DropDownList>
                </div>
                <div class="col-lg-4 col-sm-12">
                    <label for="State">State</label>
                    <asp:DropDownList CssClass="form-control" ID="State" runat="server" AutoPostBack="True" OnSelectedIndexChanged="State_SelectedIndexChanged"></asp:DropDownList>
                    <small class="form-text text-muted">
                        <asp:RequiredFieldValidator InitialValue="-1" CssClass="text-danger" ID="StateValidate" runat="server" ErrorMessage="Please choose a state" ControlToValidate="State"></asp:RequiredFieldValidator>
                    </small>
                </div>
                <div class="col-lg-4 col-sm-12">
                    <label for="City">City</label>
                    <asp:DropDownList CssClass="form-control" ID="City" runat="server"></asp:DropDownList>
                    <small class="form-text text-muted">
                        <asp:RequiredFieldValidator InitialValue="-1" CssClass="text-danger" ID="CityValidate" runat="server" ErrorMessage="Please choose a city" ControlToValidate="City"></asp:RequiredFieldValidator>
                    </small>
                </div>
            </div>
            <div class="row my-3 d-flex align-items-center">
                <div class="col-lg-6 col-sm-12">
                    <asp:Button ID="Button1" CssClass="btn btn-primary w-100" runat="server" Text="Register" OnClick="Button1_Click" />
                </div>
                <div class="col-lg-6 col-sm-12">
                    <asp:HyperLink ID="LoginLink" runat="server" NavigateUrl="~/Login.aspx">Already a user!</asp:HyperLink>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
