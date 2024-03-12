<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminViewParent.aspx.cs" Inherits="AdminViewParent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 183px;
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
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="4">
                <asp:Panel ID="Panel1" runat="server">
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
            <asp:Label ID="Label2" runat="server" Font-Names="Cambria" Font-Size="Large" 
                ForeColor="Black" Text="Select Student ID"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="ddlStudentID" runat="server" Height="25px" Width="250px">
            </asp:DropDownList>
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
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="Cambria" 
                Font-Size="Large" ForeColor="Black" Height="50px" onclick="Button1_Click" 
                Text="View Parent Details" />
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
        <td colspan="4">
            <asp:Panel ID="Panel2" runat="server" Visible="False">
                <table class="w-100">
                    <tr>
                        <td class="style1">
                            <asp:Label ID="lblParentMobile" runat="server" Visible="False"></asp:Label>
                        </td>
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
                        <td colspan="3">
                            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
                                Font-Names="Cambria" Font-Size="Large" ForeColor="Black">
                                <ItemTemplate>
                                    Name:
                                    <asp:Label ID="NameLabel" runat="server" ForeColor="#CC3300" 
                                        Text='<%# Eval("Name") %>' />
                                    <br />
                                    <br />
                                    Relation:
                                    <asp:Label ID="RelationLabel" runat="server" ForeColor="#CC3300" 
                                        Text='<%# Eval("Relation") %>' />
                                    <br />
                                    <br />
                                    Gender:
                                    <asp:Label ID="GenderLabel" runat="server" ForeColor="#CC3300" 
                                        Text='<%# Eval("Gender") %>' />
                                    <br />
                                    <br />
                                    Age:
                                    <asp:Label ID="AgeLabel" runat="server" ForeColor="#CC3300" 
                                        Text='<%# Eval("Age") %>' />
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
                                SelectCommand="SELECT [Name], [Relation], [Gender], [Age], [Address], [MobileNum], [EmailID] FROM [ParentTBL] WHERE ([MobileNum] = @MobileNum)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="lblParentMobile" Name="MobileNum" 
                                        PropertyName="Text" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
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
</table>
</asp:Content>

