<%@ Page Title="" Language="C#" MasterPageFile="~/ParentMasterPage.master" AutoEventWireup="true" CodeFile="ParentProfile.aspx.cs" Inherits="ParentProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 33px;
        }
        .style2
        {
            width: 112px;
        }
        .style3
        {
            height: 33px;
            width: 112px;
        }
        .style4
        {
            width: 110px;
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
            &nbsp;
            </td>
        <td>
            <asp:Label ID="Label2" runat="server" Font-Size="Medium" ForeColor="Black" 
                Text="Parent Mobile Number: "></asp:Label>
            &nbsp;
            <asp:Label ID="lblParentMobile" runat="server" Font-Size="Medium" 
                ForeColor="Black"></asp:Label>
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
                                    EmailID:
                                    <asp:Label ID="EmailIDLabel" runat="server" ForeColor="#CC3300" 
                                        Text='<%# Eval("EmailID") %>' />
                                    <br />
                                    <br />
                                </ItemTemplate>
                            </asp:DataList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\PresentlyDatabase.mdf;Integrated Security=True;User Instance=True" 
                                ProviderName="System.Data.SqlClient" 
                                SelectCommand="SELECT [Name], [Relation], [Gender], [Age], [Address], [EmailID] FROM [ParentTBL] WHERE ([MobileNum] = @MobileNum)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="lblParentMobile" Name="MobileNum" 
                                        PropertyName="Text" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
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
                        <td>
                            <asp:Button ID="Button1" runat="server" Height="50px" onclick="Button1_Click" 
                                Text="EDIT DETAILS" />
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style3">
                        </td>
                        <td class="style1">
                        </td>
                        <td class="style1">
                        </td>
                        <td class="style1">
                        </td>
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
                            <asp:Label ID="Label5" runat="server" Font-Size="Medium" ForeColor="Black" 
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
                            &nbsp;</td>
                        <td>
                            <asp:Button ID="Button2" runat="server" Height="50px" onclick="Button2_Click" 
                                Text="UPDATE DETAILS" />
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

