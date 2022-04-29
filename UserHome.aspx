<%@ Page Title="User Details" MasterPageFile="~/Site.Master" Language="C#" AutoEventWireup="true" CodeBehind="UserHome.aspx.cs" Inherits="EmployeeProject.UserHome" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="border w-100 p-5">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:GridView DataKeyNames="EmployeeId" AutoGenerateColumns="False" ID="GridView1" runat="server" OnRowUpdating="OnRowUpdating" OnRowEditing="OnRowEditing" OnRowCancelingEdit="OnRowCancelingEdit" BorderStyle="None" CssClass="container border table table-striped " OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:TemplateField HeaderText="FirstName" ControlStyle-Width="75">
                            <ItemTemplate>
                                <asp:Label ID="lblFirstName" runat="server" Text='<%# Eval("FirstName") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="FirstName" runat="server" Text='<%# Eval("FirstName") %>'></asp:TextBox>
                            </EditItemTemplate>

                            <ControlStyle Font-Size="Small" Width="75px" />

                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="LastName" ControlStyle-Width="75">
                            <ItemTemplate>
                                <asp:Label ID="lblLastName" runat="server" Text='<%# Eval("LastName") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="LastName" runat="server" Text='<%# Eval("LastName") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ControlStyle Font-Size="Small" Width="75px" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Password" ControlStyle-Width="75">
                            <ItemTemplate>
                                <asp:Label ID="lblPassword" runat="server" Text='<%# Eval("Password") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="Password" runat="server" Text='<%# Eval("Password") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ControlStyle Font-Size="Small" Width="75px" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Gender" ControlStyle-Width="75">
                            <ItemTemplate>
                                <asp:Label ID="lblGender" Enabled="false" runat="server" Text='<%# Eval("Gender") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="Gender" Enabled="false" runat="server" Text='<%# Eval("Gender") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ControlStyle Font-Size="Small" Width="75px" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Email" ControlStyle-Width="75">
                            <ItemTemplate>
                                <asp:Label ID="lblEmail" Enabled="false" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="Email" Enabled="false" runat="server" Text='<%# Eval("Email") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ControlStyle CssClass="text-truncate" Width="75px" Font-Size="Small" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Deparment" ControlStyle-Width="75">
                            <ItemTemplate>
                                <asp:Label ID="lblDeparment" Enabled="false" runat="server" Text='<%# Eval("Department") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="Deparment" Enabled="false" runat="server" Text='<%# Eval("Department") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ControlStyle Font-Size="Small" Width="75px" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Country" ControlStyle-Width="75">
                            <ItemTemplate>
                                <asp:Label ID="lblCountry" Enabled="false" runat="server" Text='<%# Eval("Country") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="Country" Enabled="false" runat="server" Text='<%# Eval("Country") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ControlStyle Font-Size="Small" Width="75px" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="State" ControlStyle-Width="75">
                            <ItemTemplate>
                                <asp:Label ID="lblState" Enabled="false" runat="server" Text='<%# Eval("EmpState") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="State" Enabled="false" runat="server" Text='<%# Eval("EmpState") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ControlStyle Font-Size="Small" Width="75px" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="City" ControlStyle-Width="75">
                            <ItemTemplate>
                                <asp:Label ID="lblCity" Enabled="false" runat="server" Text='<%# Eval("City") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="City" Enabled="false" runat="server" Text='<%# Eval("City") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ControlStyle Font-Size="Small" Width="75px" />
                        </asp:TemplateField>


                        <asp:CommandField HeaderText="Action" ButtonType="Link" ShowEditButton="true"
                            ItemStyle-Width="150">
                            <ItemStyle Width="150px" />
                        </asp:CommandField>
                    </Columns>
                </asp:GridView>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>

</asp:Content>

