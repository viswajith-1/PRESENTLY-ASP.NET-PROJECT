<%@ Page Title="" Language="C#" MasterPageFile="~/TeacherMasterPage.master" AutoEventWireup="true" CodeFile="TeacherProfile.aspx.cs" Inherits="TeacherProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
        .style3
        {
            width: 18%;
        }
        .style4
        {
            width: 201px;
        }
        .style5
        {
            width: 47%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
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
            <asp:Label ID="lblStaffID" runat="server" Font-Size="Medium" ForeColor="Black"></asp:Label>
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
        <td colspan="4">
            <asp:Panel ID="Panel1" runat="server">
                <table class="w-100">
                    <tr>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style5">
                            &nbsp;</td>
                        <td class="style3">
                            &nbsp;</td>
                        <td class="style3">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4">
                            &nbsp;</td>
                        <td colspan="3">
                            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
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
                    </tr>
                    <tr>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style5">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\PresentlyDatabase.mdf;Integrated Security=True;User Instance=True" 
                                ProviderName="System.Data.SqlClient" 
                                SelectCommand="SELECT [Name], [Gender], [DoB], [Department], [Address], [MobileNum], [EmailID] FROM [TeacherTBL] WHERE ([StaffID] = @StaffID)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="lblStaffID" Name="StaffID" PropertyName="Text" 
                                        Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                        <td class="style3">
                            &nbsp;</td>
                        <td class="style3">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style5">
                            &nbsp;</td>
                        <td class="style3">
                            &nbsp;</td>
                        <td class="style3">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style5">
                            <asp:Button ID="Button1" runat="server" Height="50px" onclick="Button1_Click" 
                                Text="EDIT DETAILS" />
                        </td>
                        <td class="style3">
                            &nbsp;</td>
                        <td class="style3">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style5">
                            &nbsp;</td>
                        <td class="style3">
                            &nbsp;</td>
                        <td class="style3">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style5">
                            &nbsp;</td>
                        <td class="style3">
                            &nbsp;</td>
                        <td class="style3">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style5">
                            &nbsp;</td>
                        <td class="style3">
                            &nbsp;</td>
                        <td class="style3">
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
        <td colspan="4">
            <asp:Panel ID="Panel2" runat="server" Visible="False">
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
                            <asp:Label ID="Label2" runat="server" Font-Size="Medium" ForeColor="Black" 
                                Text="Address"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtAddress" runat="server" Height="150px" TextMode="MultiLine" 
                                Width="300px"></asp:TextBox>
                            <asp:RequiredFieldValidator
            id="RequiredFieldValidator5" ControlToValidate="txtAddress" ErrorMessage="Address is required."
            SetFocusOnError="true" Runat="server" ForeColor="Red"></asp:RequiredFieldValidator>
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
                            <asp:Label ID="Label3" runat="server" Font-Size="Medium" ForeColor="Black" 
                                Text="Mobile Number"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtMobile" runat="server" Height="25px" Width="200px"></asp:TextBox>
                            <asp:RequiredFieldValidator
            id="RequiredFieldValidator2" ControlToValidate="txtAddress" ErrorMessage="Mobile Number is required."
            SetFocusOnError="true" Runat="server" ForeColor="Red"></asp:RequiredFieldValidator>
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
                            <asp:Label ID="Label4" runat="server" Font-Size="Medium" ForeColor="Black" 
                                Text="Email ID"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtEmail" runat="server" Height="25px" Width="300px"></asp:TextBox>
                            <asp:RequiredFieldValidator
            id="RequiredFieldValidator1" ControlToValidate="txtEmail" ErrorMessage="Email is required."
            SetFocusOnError="true" Runat="server" ForeColor="Red"></asp:RequiredFieldValidator>
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
                            <asp:Button ID="Button2" runat="server" Height="50px" onclick="Button2_Click" 
                                Text="UPDATE DETAILS" />
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

