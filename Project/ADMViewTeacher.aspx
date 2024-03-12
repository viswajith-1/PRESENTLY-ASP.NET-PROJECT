<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ADMViewTeacher.aspx.cs" Inherits="ADMViewTeacher" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="w-100">
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" colspan="4">
                <asp:Panel ID="Panel2" runat="server">
                    <table class="w-100">
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Font-Size="X-Large" ForeColor="#0000CC" 
                                    Text="Welcome.....Your Login ID is:"></asp:Label>
                                &nbsp;&nbsp;&nbsp;
                                <asp:Label ID="lblUserID" runat="server" Font-Size="X-Large" 
                                    ForeColor="#CC3300"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
                </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Select Staff ID"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlStaffID" runat="server" DataSourceID="SqlDataSource1" 
                    DataTextField="StaffID" DataValueField="StaffID" Width="200px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\PresentlyDatabase.mdf;Integrated Security=True;User Instance=True" 
                    ProviderName="System.Data.SqlClient" 
                    SelectCommand="SELECT [StaffID] FROM [TeacherTBL]"></asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="lblStaffID" runat="server" Visible="False"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Height="50px" onclick="Button1_Click" 
                    Text="SHOW DETAILS" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" colspan="4">
                <asp:Panel ID="Panel1" runat="server" Wrap="False">
                    <table class="w-100">
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:DataList ID="DataList1" runat="server" DataKeyField="StaffID" 
                                    DataSourceID="SqlDataSource2" Font-Names="Cambria" Font-Size="Large" 
                                    ForeColor="Black">
                                    <ItemTemplate>
                                        StaffID:
                                        <asp:Label ID="StaffIDLabel" runat="server" ForeColor="#CC3300" 
                                            Text='<%# Eval("StaffID") %>' />
                                        <br />
                                        <br />
                                        Name:
                                        <asp:Label ID="NameLabel" runat="server" ForeColor="#CC3300" 
                                            Text='<%# Eval("Name") %>' />
                                        <br />
                                        <br />
                                        Gender:
                                        <asp:Label ID="GenderLabel" runat="server" ForeColor="#CC3300" 
                                            Text='<%# Eval("Gender") %>' />
                                        <br />
                                        <br />
                                        Date of Birth:
                                        <asp:Label ID="DoBLabel" runat="server" ForeColor="#CC3300" 
                                            Text='<%# Eval("DoB") %>' />
                                        <br />
                                        <br />
                                        Department:
                                        <asp:Label ID="DepartmentLabel" runat="server" ForeColor="#CC3300" 
                                            Text='<%# Eval("Department") %>' />
                                        <br />
                                        <br />
                                        Address:
                                        <asp:Label ID="AddressLabel" runat="server" ForeColor="#CC3300" 
                                            Text='<%# Eval("Address") %>' />
                                        <br />
                                        <br />
                                        Mobile Number:
                                        <asp:Label ID="MobileNumLabel" runat="server" ForeColor="#CC3300" 
                                            Text='<%# Eval("MobileNum") %>' />
                                        <br />
                                        <br />
                                        Email ID:
                                        <asp:Label ID="EmailIDLabel" runat="server" ForeColor="#CC3300" 
                                            Text='<%# Eval("EmailID") %>' />
                                        <br />
                                        <br />
                                    </ItemTemplate>
                                </asp:DataList>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="4">
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                    ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\PresentlyDatabase.mdf;Integrated Security=True;User Instance=True" 
                                    ProviderName="System.Data.SqlClient" 
                                    SelectCommand="SELECT * FROM [TeacherTBL] WHERE ([StaffID] = @StaffID)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="lblStaffID" Name="StaffID" PropertyName="Text" 
                                            Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

