<%@ Page Title="" Language="C#" MasterPageFile="~/StudentMasterPage.master" AutoEventWireup="true" CodeFile="StudentSemester.aspx.cs" Inherits="StudentSemester" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 27px;
        }
        .style2
        {
            width: 107px;
        }
        .style3
        {
            width: 136px;
        }
        .style4
        {
            width: 234px;
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
                Text="Student ID: "></asp:Label>
&nbsp;<asp:Label ID="lblStudentID" runat="server" Font-Size="Medium" ForeColor="Black"></asp:Label>
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
            <td class="style1" colspan="4">
                <asp:Panel ID="Panel1" runat="server">
                    <table class="w-100">
                        <tr>
                            <td class="style2">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style2">
                                &nbsp;</td>
                            <td colspan="3">
                                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
                                    Font-Names="Cambria" Font-Size="Large">
                                    <ItemTemplate>
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
                                    </ItemTemplate>
                                </asp:DataList>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">
                                &nbsp;</td>
                            <td>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\PresentlyDatabase.mdf;Integrated Security=True;User Instance=True" 
                                    onselecting="SqlDataSource1_Selecting" ProviderName="System.Data.SqlClient" 
                                    SelectCommand="SELECT [Department], [Course], [Semester] FROM [StudentTBL] WHERE ([StudentID] = @StudentID)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="lblStudentID" Name="StudentID" 
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
                            <td class="style2">
                                &nbsp;</td>
                            <td>
                                <asp:Button ID="Button1" runat="server" Height="50px" onclick="Button1_Click" 
                                    Text="CHANGE SEMESTER" />
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="4">
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style1">
            </td>
            <td class="style1">
            </td>
            <td class="style1">
            </td>
            <td class="style1">
            </td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:Panel ID="Panel2" runat="server" Visible="False">
                    <table class="w-100">
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                            <td class="style4">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                            <td class="style4">
                                <asp:Label ID="Label2" runat="server" Font-Size="Medium" ForeColor="Black" 
                                    Text="Select Semester"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlsemester" runat="server" Width="200px">
                                    <asp:ListItem>Select Semester </asp:ListItem>
                                    <asp:ListItem>Sem1</asp:ListItem>
                                    <asp:ListItem>Sem2</asp:ListItem>
                                    <asp:ListItem>Sem3</asp:ListItem>
                                    <asp:ListItem>Sem4</asp:ListItem>
                                    <asp:ListItem>Sem5</asp:ListItem>
                                    <asp:ListItem>Sem6</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator
            id="RequiredFieldValidator1" ControlToValidate="ddlsemester" ErrorMessage="Semester is required."
            SetFocusOnError="true" Runat="server"></asp:RequiredFieldValidator>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                            <td class="style4">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                            <td class="style4">
                                &nbsp;</td>
                            <td>
                                <asp:Button ID="Button2" runat="server" Height="50px" onclick="Button2_Click" 
                                    Text="SAVE" Width="100px" />
                            </td>
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

