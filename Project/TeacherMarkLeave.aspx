<%@ Page Title="" Language="C#" MasterPageFile="~/TeacherMasterPage.master" AutoEventWireup="true" CodeFile="TeacherMarkLeave.aspx.cs" Inherits="TeacherMarkLeave" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 26px;
        }
        .style6
        {
            height: 26px;
        }
        .style7
        {
            width: 111px;
        }
        .style9
        {
            text-align: left;
        }
        .style11
        {
            height: 26px;
            width: 111px;
        }
        .style12
        {
            width: 235px;
        }
        .style15
        {
            height: 26px;
            width: 197px;
        }
        .style17
        {
            height: 26px;
            text-align: left;
            width: 136px;
        }
        .style20
        {
            height: 26px;
            text-align: left;
            width: 91px;
        }
        .style21
        {
            text-align: left;
            width: 91px;
        }
        .style22
        {
            width: 91px;
        }
        .style23
        {
            text-align: left;
            width: 136px;
        }
        .style24
        {
            width: 136px;
        }
        .style25
        {
            height: 26px;
            text-align: left;
            width: 270px;
        }
        .style26
        {
            text-align: left;
            width: 169px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="w-100">
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style20">
                &nbsp;</td>
            <td class="style17">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6" colspan="5">
            <asp:Panel ID="Panel1" runat="server">
                <table class="w-100">
                    <tr>
                        <td class="style15">
                            &nbsp;</td>
                        <td class="style12">
                            &nbsp;</td>
                        <td class="style25">
                            &nbsp;</td>
                        <td class="style26">
                            <asp:Label ID="Label1" runat="server" Text="Teacher ID"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblTeacherID" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style15">
                            &nbsp;</td>
                        <td class="style12">
                            &nbsp;</td>
                        <td class="style25">
                            &nbsp;</td>
                        <td class="style26">
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
                </td>
            <td class="style20">
            </td>
            <td class="style17">
            </td>
            <td class="style1">
            </td>
            <td class="style1">
            </td>
        </tr>
        <tr>
            <td class="style11">
                </td>
            <td class="style20">
            </td>
            <td class="style17">
            </td>
            <td class="style1">
            </td>
            <td class="style1">
            </td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style20">
                <asp:Label ID="Label2" runat="server" Text="StudentID"></asp:Label>
            </td>
            <td class="style17">
                <asp:TextBox ID="txtStudentID" runat="server"></asp:TextBox>
            </td>
            <td class="style1">
                &nbsp;</td>
            <td class="style1">
            </td>
        </tr>
        <tr>
            <td class="style11">
                </td>
            <td class="style20">
                </td>
            <td class="style17">
                </td>
            <td class="style1">
                </td>
            <td class="style1">
                </td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style21">
                <asp:Label ID="Label3" runat="server" Text="Leave Date"></asp:Label>
            </td>
            <td class="style23">
                <asp:TextBox ID="txtLeaveDate" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style21">
                &nbsp;</td>
            <td class="style23">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style21">
                <asp:Label runat="server" Text="Leave Type"></asp:Label>
            </td>
            <td class="style23">
            <asp:DropDownList ID="ddlLeave" runat="server" Width="200px">
                <asp:ListItem>---Select Leave Type---</asp:ListItem>
                <asp:ListItem>Full Day</asp:ListItem>
                <asp:ListItem>Half Day</asp:ListItem>
            </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style21">
                &nbsp;</td>
            <td class="style23">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style21">
                <asp:Label ID="label" runat="server" Text="Comment"></asp:Label>
            </td>
            <td class="style23">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style9" colspan="4">
                <asp:TextBox ID="txtReason" runat="server" Height="117px" TextMode="MultiLine" 
                    Width="575px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style21">
                &nbsp;</td>
            <td class="style23">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style21">
                &nbsp;</td>
            <td class="style23">
                <asp:Button ID="Button1" runat="server" Text="Save" Height="50px" 
                    onclick="Button1_Click" Width="100px" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style21">
                &nbsp;</td>
            <td class="style23">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style21">
                &nbsp;</td>
            <td class="style23">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style21">
                &nbsp;</td>
            <td class="style23">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style24">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style24">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style24">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

