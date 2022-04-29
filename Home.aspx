<%@ Page MasterPageFile="~/Site.Master" Title="User Details" Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="EmployeeProject.Home" %>

<asp:Content ContentPlaceHolderID="MainContent" ID="BodyContent" runat="server">

    <div>
        <div class="d-flex justify-content-between m-3">
            <div >
                <h2 class="text-muted">
                    <%:Title %>
                </h2>
            </div>
             <div>
                 <asp:Button ID="LogOut" runat="server" Text="Log out" CssClass="btn btn-danger" OnClick="LogOut_Click" />
            </div>
        </div>
    </div>

    <asp:GridView OnRowDeleting="OnRowDeleting" ID="EmployeeDetails" runat="server" AutoGenerateColumns="False" CssClass="table table-sm table-striped table-hover" BorderWidth="0px" OnSelectedIndexChanged="EmployeeDetails_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="EmployeeId" HeaderText="EmployeeId" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" />
            <asp:BoundField DataField="Country" HeaderText="Country" />
            <asp:BoundField DataField="EmpState" HeaderText="State" />
            <asp:BoundField DataField="City" HeaderText="City" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" />
            <asp:BoundField DataField="Email" HeaderText="Email" />
            <%--<asp:CommandField ShowDeleteButton="True" ControlStyle-CssClass="btn btn-danger" />--%>
        </Columns>
    </asp:GridView>

    <div>
        <asp:Button ID="DeleteUser" CssClass="btn btn-outline-danger" runat="server" Text="Delete" OnClick="DeleteUser_Click" OnClientClick="return confirm('Are you sure you want to delete?');" />
    </div>

</asp:Content>
