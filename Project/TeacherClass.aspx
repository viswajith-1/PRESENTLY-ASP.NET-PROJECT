<%@ Page Title="" Language="C#" MasterPageFile="~/TeacherMasterPage.master" AutoEventWireup="true" CodeFile="TeacherClass.aspx.cs" Inherits="TeacherClass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 27px;
        }
    .style2
    {
        height: 52px;
    }
        .style3
        {
            width: 88px;
        }
        .style4
        {
            height: 27px;
            width: 88px;
        }
        .style5
        {
            height: 52px;
            width: 88px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="w-100">
        <tr>
            <td class="style3">
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
            <td class="style4">
            </td>
            <td class="style1">
            </td>
            <td class="style1">
            </td>
            <td class="style1">
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                            <asp:Label ID="Label2" runat="server" Font-Size="Medium" ForeColor="Black" 
                                Text="Department"></asp:Label>
                        </td>
            <td>
                <asp:DropDownList ID="ddlDepartment" runat="server" Width="300px" 
                    AutoPostBack="True" ontextchanged="ddlDepartment_TextChanged">
                    <asp:ListItem>Select department</asp:ListItem>
                    <asp:ListItem Value="1">English Language and Literature</asp:ListItem>
                    <asp:ListItem Value="2">Computer Science and Applications</asp:ListItem>
                    <asp:ListItem Value="3">Commerce and Management</asp:ListItem>
                    <asp:ListItem Value="4">Hotel Management</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                            <asp:Label ID="Label3" runat="server" Font-Size="Medium" ForeColor="Black" 
                                Text="Course"></asp:Label>
                        </td>
            <td>
                <asp:DropDownList ID="ddlCourse" runat="server" Width="300px">
                </asp:DropDownList>
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                            <asp:Label ID="Label4" runat="server" Font-Size="Medium" ForeColor="Black" 
                                Text="Semester"></asp:Label>
                        </td>
            <td>
                <asp:DropDownList ID="ddlsemester" runat="server" Width="250px">
                    <asp:ListItem>Select Semester </asp:ListItem>
                    <asp:ListItem>Sem1</asp:ListItem>
                    <asp:ListItem>Sem2</asp:ListItem>
                    <asp:ListItem>Sem3</asp:ListItem>
                    <asp:ListItem>Sem4</asp:ListItem>
                    <asp:ListItem>Sem5</asp:ListItem>
                    <asp:ListItem>Sem6</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
            </td>
            <td class="style1">
            </td>
            <td class="style1">
            </td>
            <td class="style1">
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                            <asp:Label ID="Label5" runat="server" Font-Size="Medium" ForeColor="Black" 
                                Text="Students Year of Admission"></asp:Label>
                        </td>
            <td>
                <asp:DropDownList ID="ddlYearAdmission" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="AdmissionYear" 
                    DataValueField="AdmissionYear" Width="250px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\PresentlyDatabase.mdf;Integrated Security=True;User Instance=True" 
                    ProviderName="System.Data.SqlClient" 
                    SelectCommand="SELECT DISTINCT [AdmissionYear] FROM [StudentTBL]">
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                </td>
            <td class="style2">
                </td>
            <td class="style2">
                <asp:Button ID="Button1" runat="server" Height="50px" onclick="Button1_Click" 
                    Text="SAVE" Width="100px" />
            </td>
            <td class="style2">
                </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td colspan="3">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="3" DataKeyNames="ClassID" DataSourceID="SqlDataSource2" 
                    BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                    Font-Size="Large">
                    <Columns>
                        <asp:BoundField DataField="ClassID" HeaderText="ClassID" InsertVisible="False" 
                            ReadOnly="True" SortExpression="ClassID" />
                        <asp:BoundField DataField="Department" HeaderText="Department" 
                            SortExpression="Department" />
                        <asp:BoundField DataField="Course" HeaderText="Course" 
                            SortExpression="Course" />
                        <asp:BoundField DataField="Semester" HeaderText="Semester" 
                            SortExpression="Semester" />
                        <asp:BoundField DataField="AdmissionYear" HeaderText="AdmissionYear" 
                            SortExpression="AdmissionYear" />
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\PresentlyDatabase.mdf;Integrated Security=True;User Instance=True" 
                    ProviderName="System.Data.SqlClient" 
                    SelectCommand="SELECT [ClassID], [Department], [Course], [Semester], [AdmissionYear] FROM [TeacherClassTBL] WHERE ([StaffID] = @StaffID)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lblStaffID" Name="StaffID" PropertyName="Text" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
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
            <td class="style3">
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

