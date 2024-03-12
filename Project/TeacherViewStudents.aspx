<%@ Page Title="" Language="C#" MasterPageFile="~/TeacherMasterPage.master" AutoEventWireup="true" CodeFile="TeacherViewStudents.aspx.cs" Inherits="TeacherViewStudents" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
        }
        .style2
        {
            height: 27px;
        }
        .style3
        {
            height: 30px;
        }
        .style4
        {
            width: 104px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="w-100">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
            <asp:Label ID="Label1" runat="server" Font-Size="Medium" ForeColor="Black" 
                Text="Teacher ID: "></asp:Label>
            &nbsp;
            <asp:Label ID="lblStaffID" runat="server" Font-Size="Medium" ForeColor="Black"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                            <asp:Label ID="Label2" runat="server" Font-Size="Medium" ForeColor="Black" 
                                Text="Department"></asp:Label>
                        </td>
            <td>
                <asp:DropDownList ID="ddlDepartment" runat="server" Width="300px" DataSourceID="SqlDataSource1" 
                    DataTextField="Department" DataValueField="Department">
                </asp:DropDownList>
                        </td>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\PresentlyDatabase.mdf;Integrated Security=True;User Instance=True" 
                    ProviderName="System.Data.SqlClient" 
                    SelectCommand="SELECT DISTINCT [Department] FROM [TeacherClassTBL] WHERE ([StaffID] = @StaffID)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lblStaffID" Name="StaffID" PropertyName="Text" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
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
        <tr>
            <td>
                            <asp:Label ID="Label3" runat="server" Font-Size="Medium" ForeColor="Black" 
                                Text="Course"></asp:Label>
                        </td>
            <td>
                <asp:DropDownList ID="ddlCourse" runat="server" Width="200px" 
                    DataSourceID="SqlDataSource2" DataTextField="Course" 
                    DataValueField="Course">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\PresentlyDatabase.mdf;Integrated Security=True;User Instance=True" 
                    ProviderName="System.Data.SqlClient" 
                    SelectCommand="SELECT DISTINCT [Course] FROM [TeacherClassTBL] WHERE ([StaffID] = @StaffID)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lblStaffID" Name="StaffID" PropertyName="Text" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                        </td>
            <td>
                            <asp:Label ID="Label4" runat="server" Font-Size="Medium" ForeColor="Black" 
                                Text="Semester"></asp:Label>
                </td>
            <td>
                <asp:DropDownList ID="ddlsemester" runat="server" DataSourceID="SqlDataSource3" 
                    DataTextField="Semester" DataValueField="Semester" Width="200px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\PresentlyDatabase.mdf;Integrated Security=True;User Instance=True" 
                    ProviderName="System.Data.SqlClient" 
                    SelectCommand="SELECT DISTINCT [Semester] FROM [TeacherClassTBL] WHERE ([StaffID] = @StaffID)">
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
                            <asp:Label ID="Label5" runat="server" Font-Size="Medium" ForeColor="Black" 
                                Text="Students Year of Admission"></asp:Label>
                        </td>
            <td>
                            <asp:DropDownList ID="ddlYearAdmission" runat="server" 
                                DataSourceID="SqlDataSource4" DataTextField="AdmissionYear" 
                                DataValueField="AdmissionYear" Width="200px">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                                ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\PresentlyDatabase.mdf;Integrated Security=True;User Instance=True" 
                                ProviderName="System.Data.SqlClient" 
                                SelectCommand="SELECT DISTINCT [AdmissionYear] FROM [TeacherClassTBL] WHERE ([StaffID] = @StaffID)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="lblStaffID" Name="StaffID" PropertyName="Text" 
                                        Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
            </td>
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
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Height="50px" onclick="Button1_Click" 
                    Text="VIEW DETAILS" />
            </td>
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
        <tr>
            <td colspan="4">
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                    <table class="w-100">
                        <tr>
                            <td class="style3">
                                <asp:Label ID="Label6" runat="server" Font-Size="Medium" ForeColor="Black" 
                                    Text="Select Student ID"></asp:Label>
                            </td>
                            <td class="style3">
                                <asp:DropDownList ID="ddlStudentID" runat="server" Width="200px">
                                </asp:DropDownList>
                            </td>
                            <td class="style3">
                            </td>
                            <td class="style3">
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
                                <asp:Label ID="lblStudentID" runat="server" Visible="False"></asp:Label>
                            </td>
                            <td>
                                <asp:Button ID="Button2" runat="server" Height="50px" onclick="Button2_Click" 
                                    Text="SEARCH" />
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style2" colspan="4">
                                <asp:Panel ID="Panel2" runat="server" Visible="False">
                                    <table class="w-100">
                                        <tr>
                                            <td class="style4">
                                                &nbsp;</td>
                                            <td>
                                                <asp:Label ID="Label7" runat="server" Font-Size="Large" ForeColor="#0000CC" 
                                                    Text="Personal Details"></asp:Label>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style4">
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style4">
                                                &nbsp;</td>
                                            <td colspan="3">
                                                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource5" 
                                                    Font-Names="Cambria" Font-Size="Large" ForeColor="Black">
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
                                                <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                                                    ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\PresentlyDatabase.mdf;Integrated Security=True;User Instance=True" 
                                                    ProviderName="System.Data.SqlClient" 
                                                    SelectCommand="SELECT [Name], [Gender], [DoB], [Address], [MobileNum], [EmailID] FROM [StudentTBL] WHERE ([StudentID] = @StudentID)">
                                                    <SelectParameters>
                                                        <asp:ControlParameter ControlID="lblStudentID" Name="StudentID" 
                                                            PropertyName="Text" Type="String" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style4">
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style4">
                                                &nbsp;</td>
                                            <td>
                                                <asp:Label ID="Label8" runat="server" Font-Size="Medium" ForeColor="#0000CC" 
                                                    Text="Parent Details"></asp:Label>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style4">
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style4">
                                                &nbsp;</td>
                                            <td colspan="3">
                                                <asp:DataList ID="DataList2" runat="server" Font-Names="Cambria" 
                                                    Font-Size="Large" ForeColor="Black">
                                                    <ItemTemplate>
                                                        Name:
                                                        <asp:Label ID="Label9" runat="server" ForeColor="#CC3300" 
                                                            Text='<%# Eval("Name") %>'></asp:Label>
                                                        <br />
                                                        <br />
                                                        Relation:
                                                        <asp:Label ID="Label10" runat="server" ForeColor="#CC3300" 
                                                            Text='<%# Eval("Relation") %>'></asp:Label>
                                                        <br />
                                                        <br />
                                                        Gender:
                                                        <asp:Label ID="Label11" runat="server" ForeColor="#CC3300" 
                                                            Text='<%# Eval("Gender") %>'></asp:Label>
                                                        <br />
                                                        <br />
                                                        Age:
                                                        <asp:Label ID="Label12" runat="server" ForeColor="#CC3300" 
                                                            Text='<%# Eval("Age") %>'></asp:Label>
                                                        <br />
                                                        <br />
                                                        Address:
                                                        <asp:Label ID="Label13" runat="server" ForeColor="#CC3300" 
                                                            Text='<%# Eval("Address") %>'></asp:Label>
                                                        <br />
                                                        <br />
                                                        Mobile Number:
                                                        <asp:Label ID="Label14" runat="server" ForeColor="#CC3300" 
                                                            Text='<%# Eval("MobileNum") %>'></asp:Label>
                                                        <br />
                                                        <br />
                                                        Email ID:&nbsp;
                                                        <asp:Label ID="Label15" runat="server" ForeColor="#CC3300" 
                                                            Text='<%# Eval("EmailID") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:DataList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style4">
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
                </asp:Panel>
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
</asp:Content>

