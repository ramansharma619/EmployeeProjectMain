<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Forget.aspx.cs" Inherits="EmployeeProject.Forget" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        .outline-none {
            outline: none;
        }

        input {
            outline: none;
            margin: 0;
            border: none;
            -webkit-box-shadow: none;
            -moz-box-shadow: none;
            box-shadow: none;
            /*width: 100%;*/
            font-size: 14px;
            font-family: inherit;
        }

        .input-group {
            position: relative;
            margin-bottom: 5px;
            border-bottom: 2px solid #ccc;
        }

        .input--style-1 {
            padding: 9px 0;
            color: #666;
        }

        .card {
            border: none;
        }

        .col-sm-12 {
            padding-left: 0px;
        }
    </style>
</head>
<body>
    <div class="container vh-100 d-flex  justify-content-center align-items-center">
        <div class="card shadow-sm rounded p-3">
            <div>
                <span class="h3 text-muted">Reset your password</span>
            </div>
            <div class="card-body">
                <form id="form1" runat="server">
                    <div class="form-group row">
                        <div class="col-sm-12">
                            <asp:Label ID="EmailLbl" CssClass="" runat="server" Text="Email"></asp:Label>
                            <asp:Label ID="EmailMessage" runat="server" Text=""></asp:Label>
                        </div>
                        <div class="col-sm-12 input-group d-flex justify-content-center">
                            <asp:TextBox CssClass="w-100 outline-none input--style-1" ID="Email" runat="server" TextMode="Email"></asp:TextBox>
                        </div>
                        <div class="">
                            <asp:RequiredFieldValidator CssClass="" ControlToValidate="Email" ID="EmailValidator" runat="server" ErrorMessage="Please provide email*" Display="Static" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-sm-12">
                            <asp:Label ID="NewPasswordLbl" CssClass="" runat="server" Text="New Password"></asp:Label>
                            <asp:Label ID="NewPasswordMessageLbl" runat="server" Text=""></asp:Label>
                        </div>
                        <div class="col-sm-12  input-group d-flex justify-content-center">
                            <asp:TextBox CssClass="w-100 outline-none input--style-1" ID="NewPassword" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-sm-12">
                            <asp:RequiredFieldValidator ControlToValidate="NewPassword" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please use at least 8 character*" Display="Static" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>
                            <asp:Label ID="NewPasswordError" runat="server" Text=""></asp:Label>
                        </div>

                    </div>
                    <div class="form-group row">
                          <div class="col-sm-12">
                            <asp:Label ID="ConfirmPasswordLbl" CssClass="" runat="server" Text="Confirm Password"></asp:Label>
                            <asp:Label ID="ConfirmPasswordMsgLbl" runat="server" Text=""></asp:Label>
                        </div>
                        <div class="col-sm-12 input-group d-flex justify-content-center">
                            <asp:TextBox CssClass="w-100 outline-none input--style-1" ID="ConfirmPassword" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-sm-12">
                            <asp:RequiredFieldValidator ControlToValidate="ConfirmPassword" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password do not match*" Display="Static" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>
                            <asp:Label ID="ConfirmPasswordError" runat="server" Text=""></asp:Label>
                        </div>

                    </div>
                    <div class="form-group row">
                        <div class="col-sm-12">
                            <asp:LinkButton ID="Reset" class="btn btn-primary"  runat="server" OnClick="Reset_Click"> Reset Password &nbsp;  <i class="fa-solid fa-arrow-rotate-right"></i></asp:LinkButton>
                        </div>
                    </div>

                </form>

            </div>

        </div>
    </div>

</body>
</html>
