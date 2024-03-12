<%@ Page Title="" Language="C#" MasterPageFile="~/GuestMasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 318px;
        }
        .style2
        {
            width: 198px;
        }
        .style3
        {
            width: 318px;
            height: 26px;
            text-align: justify;
        }
        .style4
        {
            width: 198px;
            height: 26px;
        }
        .style5
        {
            height: 26px;
        }
        .style6
        {
            width: 318px;
            text-align: justify;
        }
        .style7
        {
            width: 198px;
            text-align: justify;
        }
        .style8
        {
            width: 198px;
            text-align: left;
        }
        .style9
        {
            width: 318px;
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="w-100">
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                <asp:Label ID="Label1" runat="server" Text="User ID"></asp:Label>
            </td>
            <td class="text-justify">
                <asp:TextBox ID="txtUserID" runat="server" Height="25px" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator
            id="RequiredFieldValidator1" ControlToValidate="txtUserID" ErrorMessage="UserID is required."
            SetFocusOnError="true" Runat="server" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                </td>
            <td class="style4">
                </td>
            <td class="style5">
                </td>
            <td class="style5">
                </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style8">
                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>

            </td>
            <td class="text-left">
                <asp:TextBox ID="txtPassword" runat="server" Height="25px" Width="200px" 
                    TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator
            id="RequiredFieldValidator2" ControlToValidate="txtPassword" ErrorMessage="Password is required."
            SetFocusOnError="true" Runat="server" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#0000CC" 
                    onclick="LinkButton1_Click">Create New Account</asp:LinkButton>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Height="40px" onclick="Button1_Click" 
                    Text="LOGIN" Width="75px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                </td>
            <td class="style4">
                </td>
            <td class="style5">
                </td>
            <td class="style5">
                </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

