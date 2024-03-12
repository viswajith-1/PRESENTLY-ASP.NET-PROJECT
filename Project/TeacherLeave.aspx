<%@ Page Title="" Language="C#" MasterPageFile="~/TeacherMasterPage.master" AutoEventWireup="true" CodeFile="TeacherLeave.aspx.cs" Inherits="TeacherLeave" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 214px;
    }
    .style2
    {
        width: 205px;
    }
    .style3
    {
        width: 209px;
    }
    .style4
    {
        width: 204px;
    }
    .style9
    {
        width: 90px;
    }
    .style10
    {
    }
    .style11
    {
    }
    .style12
    {
    }
    .style13
    {
        width: 128px;
    }
    .style14
    {
        width: 127px;
    }
    .style16
    {
        width: 203px;
    }
    .style17
    {
        width: 111px;
    }
    .style18
    {
        width: 114px;
    }
        .style19
        {
            width: 114px;
            height: 26px;
        }
        .style20
        {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="w-100">
    <tr>
        <td class="style11">
            &nbsp;</td>
        <td class="style12">
            &nbsp;</td>
        <td class="style13">
            &nbsp;</td>
        <td class="style9">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="5">
            <asp:Panel ID="Panel1" runat="server">
                <table class="w-100">
                    <tr>
                        <td class="style1">
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                        <td class="style3">
                            &nbsp;</td>
                        <td class="style4">
                            <asp:Label ID="Label1" runat="server" Text="Teacher ID"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblTeacherID" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                        <td class="style3">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </asp:Panel>
        </td>
    </tr>
    <tr>
        <td class="style11">
            &nbsp;</td>
        <td class="style12">
            &nbsp;</td>
        <td class="style10" colspan="2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style11">
            &nbsp;</td>
        <td class="style12" colspan="3">
            <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" 
                Font-Size="Large" ForeColor="#0000CC" onclick="LinkButton1_Click">Click Here to Mark Leave</asp:LinkButton>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style11">
            &nbsp;</td>
        <td class="style12">
            &nbsp;</td>
        <td class="style10" colspan="2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style11" colspan="5">
            <asp:Panel ID="Panel2" runat="server">
                <table class="w-100">
                    <tr>
                        <td class="style14">
                            &nbsp;</td>
                        <td class="style16">
                            <asp:Label ID="Label2" runat="server" Text="Leave Date"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlLeaveDate" runat="server" 
                                DataSourceID="SqlDataSource1" DataTextField="LeaveDate" 
                                DataValueField="LeaveDate" Width="250px">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\PresentlyDatabase.mdf;Integrated Security=True;User Instance=True" 
                                ProviderName="System.Data.SqlClient" 
                                SelectCommand="SELECT DISTINCT [LeaveDate] FROM [LeaveTBL]">
                            </asp:SqlDataSource>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style14">
                            &nbsp;</td>
                        <td class="style16">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style14">
                            <asp:Label ID="lblLeaveDate" runat="server" Visible="False"></asp:Label>
                        </td>
                        <td class="style16">
                            <asp:Label ID="Label4" runat="server" Font-Size="Medium" ForeColor="Black" 
                                Text="Department"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlDepartment" runat="server" 
                                DataSourceID="SqlDataSource2" DataTextField="Department" 
                                DataValueField="Department" Width="300px">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\PresentlyDatabase.mdf;Integrated Security=True;User Instance=True" 
                                ProviderName="System.Data.SqlClient" 
                                SelectCommand="SELECT [Department] FROM [TeacherClassTBL] WHERE ([StaffID] = @StaffID)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="lblTeacherID" Name="StaffID" 
                                        PropertyName="Text" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style14">
                            &nbsp;</td>
                        <td class="style16">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style14">
                            &nbsp;</td>
                        <td class="style16">
                            <asp:Label ID="Label5" runat="server" Font-Size="Medium" ForeColor="Black" 
                                Text="Course"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlCourse" runat="server" DataSourceID="SqlDataSource3" 
                                DataTextField="Course" DataValueField="Course" Width="200px">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\PresentlyDatabase.mdf;Integrated Security=True;User Instance=True" 
                                ProviderName="System.Data.SqlClient" 
                                SelectCommand="SELECT [Course] FROM [TeacherClassTBL] WHERE ([StaffID] = @StaffID)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="lblTeacherID" Name="StaffID" 
                                        PropertyName="Text" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                        <td>
                            <asp:Label ID="Label6" runat="server" Font-Size="Medium" ForeColor="Black" 
                                Text="Semester"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlsemester" runat="server" DataSourceID="SqlDataSource4" 
                                DataTextField="Semester" DataValueField="Semester" Width="200px">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                                ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\PresentlyDatabase.mdf;Integrated Security=True;User Instance=True" 
                                ProviderName="System.Data.SqlClient" 
                                SelectCommand="SELECT [Semester] FROM [TeacherClassTBL] WHERE ([StaffID] = @StaffID)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="lblTeacherID" Name="StaffID" 
                                        PropertyName="Text" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="style14">
                            &nbsp;</td>
                        <td class="style16">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style14">
                            &nbsp;</td>
                        <td class="style16">
                            <asp:Label ID="Label7" runat="server" Font-Size="Medium" ForeColor="Black" 
                                Text="Students Year of Admission"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlYearAdmission" runat="server" 
                                DataSourceID="SqlDataSource5" DataTextField="AdmissionYear" 
                                DataValueField="AdmissionYear" Width="200px">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                                ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\PresentlyDatabase.mdf;Integrated Security=True;User Instance=True" 
                                ProviderName="System.Data.SqlClient" 
                                SelectCommand="SELECT [AdmissionYear] FROM [TeacherClassTBL] WHERE ([StaffID] = @StaffID)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="lblTeacherID" Name="StaffID" 
                                        PropertyName="Text" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style14">
                            &nbsp;</td>
                        <td class="style16">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style14">
                            &nbsp;</td>
                        <td class="style16">
                            &nbsp;</td>
                        <td>
                            <asp:Button ID="Button1" runat="server" Height="50px" onclick="Button1_Click" 
                                Text="VIEW" Width="100px" />
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style14">
                            &nbsp;</td>
                        <td class="style16">
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
        <td class="style11">
            &nbsp;</td>
        <td class="style12">
            &nbsp;</td>
        <td class="style13">
            &nbsp;</td>
        <td class="style9">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style11" colspan="5">
            <asp:Panel ID="Panel3" runat="server" Visible="False">
                <table class="w-100">
                    <tr>
                        <td class="style17">
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="Select Student ID"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlStudentID" runat="server" Width="200px">
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style17">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style17">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:Button ID="Button2" runat="server" Height="50px" onclick="Button2_Click" 
                                Text="Show Details" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style17">
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
        <td class="style11">
            &nbsp;</td>
        <td class="style12">
            &nbsp;</td>
        <td class="style13">
            &nbsp;</td>
        <td class="style9">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style11" colspan="5">
            <asp:Panel ID="Panel4" runat="server" Visible="False">
                <table class="w-100">
                    <tr>
                        <td class="style18">
                            <asp:Label ID="lblStudentID" runat="server" Visible="False"></asp:Label>
                        </td>
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
                        <td class="style18">
                            &nbsp;</td>
                        <td colspan="4">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
                                CellPadding="4" DataKeyNames="LeaveID" DataSourceID="SqlDataSource6">
                                <Columns>
                                    <asp:BoundField DataField="LeaveID" HeaderText="Leave ID" InsertVisible="False" 
                                        ReadOnly="True" SortExpression="LeaveID" />
                                    <asp:BoundField DataField="LeaveType" HeaderText="Leave Type" 
                                        SortExpression="LeaveType" />
                                    <asp:BoundField DataField="Reason" HeaderText="Reason / Comment" 
                                        SortExpression="Reason" />
                                    <asp:BoundField DataField="Markeddate" HeaderText="Marked Date" 
                                        SortExpression="Markeddate" />
                                    <asp:BoundField DataField="InformedBy" HeaderText="Informed By" 
                                        SortExpression="InformedBy" />
                                </Columns>
                                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                                <RowStyle BackColor="White" ForeColor="#330099" />
                                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                                <SortedDescendingHeaderStyle BackColor="#7E0000" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                                ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\PresentlyDatabase.mdf;Integrated Security=True;User Instance=True" 
                                ProviderName="System.Data.SqlClient" 
                                SelectCommand="SELECT [LeaveID], [LeaveType], [Reason], [Markeddate], [InformedBy] FROM [LeaveTBL] WHERE (([LeaveDate] = @LeaveDate) AND ([StudentID] = @StudentID))">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="lblLeaveDate" Name="LeaveDate" 
                                        PropertyName="Text" Type="String" />
                                    <asp:ControlParameter ControlID="lblStudentID" Name="StudentID" 
                                        PropertyName="Text" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="style19">
                            </td>
                        <td class="style20">
                            </td>
                        <td class="style20">
                            </td>
                        <td class="style20">
                            </td>
                        <td class="style20">
                            </td>
                    </tr>
                    <tr>
                        <td class="style18">
                            &nbsp;</td>
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
                        <td class="style18">
                            &nbsp;</td>
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
                        <td class="style18">
                            &nbsp;</td>
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
                        <td class="style18">
                            &nbsp;</td>
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
                        <td class="style18">
                            &nbsp;</td>
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
                        <td class="style18">
                            &nbsp;</td>
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
                        <td class="style18">
                            &nbsp;</td>
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
        <td class="style11">
            &nbsp;</td>
        <td class="style12">
            &nbsp;</td>
        <td class="style13">
            &nbsp;</td>
        <td class="style9">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style11">
            &nbsp;</td>
        <td class="style12">
            &nbsp;</td>
        <td class="style13">
            &nbsp;</td>
        <td class="style9">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style11">
            &nbsp;</td>
        <td class="style12">
            &nbsp;</td>
        <td class="style13">
            &nbsp;</td>
        <td class="style9">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

