<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ADMViewStudent.aspx.cs" Inherits="ADMViewStudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 28px;
        }
        .style2
        {
            height: 26px;
        }
        .style3
        {
            width: 204px;
        }
        .style4
        {
            height: 26px;
            width: 204px;
        }
        .style5
        {
            height: 28px;
            width: 204px;
        }
        .style6
        {
            width: 148px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="w-100">
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:Panel ID="Panel2" runat="server">
                    <table class="w-100">
                        <tr>
                            <td>
                                <asp:Label ID="Label2" runat="server" Font-Size="X-Large" ForeColor="#0000CC" 
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
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                <asp:Label ID="Label1" runat="server" Text="Student ID"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlStudentID" runat="server" 
                    DataSourceID="SqlDataSource2" DataTextField="StudentID" 
                    DataValueField="StudentID" Height="25px" Width="250px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\PresentlyDatabase.mdf;Integrated Security=True;User Instance=True" 
                    ProviderName="System.Data.SqlClient" 
                    SelectCommand="SELECT [StudentID] FROM [StudentTBL]"></asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="View" 
                    Height="50px" Width="150px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
            </td>
            <td class="style4">
            </td>
            <td class="style2">
            </td>
            <td class="style2">
            </td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                    <table class="w-100">
                        <tr>
                            <td class="style6">
                                <asp:Label ID="lblStudentID" runat="server" Visible="False"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style6">
                                &nbsp;</td>
                            <td colspan="3">
                                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
                                    Font-Size="Large" ForeColor="Black">
                                    <ItemTemplate>
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
                                        Admission Year:
                                        <asp:Label ID="AdmissionYearLabel" runat="server" ForeColor="#CC3300" 
                                            Text='<%# Eval("AdmissionYear") %>' />
                                        <br />
                                        <br />
                                        Department:
                                        <asp:Label ID="DepartmentLabel" runat="server" ForeColor="#CC3300" 
                                            Text='<%# Eval("Department") %>' />
                                        <br />
                                        <br />
                                        Course:
                                        <asp:Label ID="CourseLabel" runat="server" ForeColor="#CC3300" 
                                            Text='<%# Eval("Course") %>' />
                                        <br />
                                        <br />
                                        Semester:
                                        <asp:Label ID="SemesterLabel" runat="server" ForeColor="#CC3300" 
                                            Text='<%# Eval("Semester") %>' />
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
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\PresentlyDatabase.mdf;Integrated Security=True;User Instance=True" 
                                    ProviderName="System.Data.SqlClient" 
                                    SelectCommand="SELECT [Name], [Gender], [DoB], [AdmissionYear], [Department], [Course], [Semester], [Address], [MobileNum], [EmailID] FROM [StudentTBL] WHERE ([StudentID] = @StudentID)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="lblStudentID" Name="StudentID" 
                                            PropertyName="Text" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td class="style6">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style6">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="4">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style6">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style6">
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
            <td class="style2">
            </td>
            <td class="style4">
            </td>
            <td class="style2">
            </td>
            <td class="style2">
            </td>
        </tr>
        <tr>
            <td class="style1">
            </td>
            <td class="style5">
            </td>
            <td class="style1">
            </td>
            <td class="style1">
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

