<%@ Page Title="" Language="C#" MasterPageFile="~/StudentMasterPage.master" AutoEventWireup="true" CodeFile="StudentLateInform.aspx.cs" Inherits="StudentLateInform" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 26px;
        }
        .style2
        {
            height: 27px;
        }
        .style5
        {
            width: 426px;
        }
        .style7
        {
            text-align: left;
            width: 172px;
        }
        .style11
        {
        }
        .style17
        {
            text-align: left;
            height: 26px;
        }
        .style19
        {
            text-align: left;
            height: 26px;
        }
        .style22
        {
            width: 97px;
        }
        .style23
        {
            height: 26px;
            width: 97px;
        }
        .style24
        {
            height: 27px;
            width: 97px;
        }
        .style25
        {
            text-align: left;
            width: 513px;
        }
        .style26
        {
            text-align: left;
            height: 26px;
            width: 513px;
        }
        .style27
        {
            height: 26px;
            width: 513px;
        }
        .style28
        {
            width: 513px;
        }
        .style29
        {
            height: 27px;
            width: 513px;
        }
        .style34
        {
            height: 26px;
            width: 487px;
        }
        .style35
        {
            text-align: left;
            width: 420px;
        }
        .style36
        {
            height: 27px;
            width: 347px;
        }
        .style37
        {
            width: 97px;
            height: 30px;
        }
        .style39
        {
            text-align: left;
            width: 513px;
            height: 30px;
        }
        .style40
        {
            text-align: left;
            height: 30px;
        }
        .style41
        {
            height: 30px;
        }
        .style42
        {
            text-align: left;
            width: 172px;
            height: 26px;
        }
        .style43
        {
            height: 26px;
            width: 172px;
        }
        .style44
        {
            width: 172px;
        }
        .style45
        {
            width: 172px;
            height: 30px;
        }
        .style46
        {
            height: 27px;
            width: 172px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="w-100">
        <tr>
            <td class="style22">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style25">
                &nbsp;</td>
            <td class="text-left">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11" colspan="5">
            <asp:Panel ID="Panel1" runat="server">
                <table class="w-100">
                    <tr>
                        <td class="style36">
                            &nbsp;</td>
                        <td class="style35">
                            &nbsp;</td>
                        <td class="style34">
                            &nbsp;</td>
                        <td class="style5">
                            <asp:Label ID="Label1" runat="server" Text="Student ID"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblStudentID" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style36">
                            &nbsp;</td>
                        <td class="style35">
                            &nbsp;</td>
                        <td class="style34">
                            &nbsp;</td>
                        <td class="style5">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style23">
                </td>
            <td class="style42">
            </td>
            <td class="style26">
            </td>
            <td class="style19">
            </td>
            <td class="style1">
                </td>
        </tr>
        <tr>
            <td class="style23">
                </td>
            <td class="style17" colspan="2">
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" 
                    Font-Size="Large" ForeColor="#0000CC" onclick="LinkButton1_Click">Click Here for View Late Details</asp:LinkButton>
            </td>
            <td class="style17">
            </td>
            <td class="style1">
                </td>
        </tr>
        <tr>
            <td class="style22">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style25">
                &nbsp;</td>
            <td class="text-left">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style22">
                &nbsp;</td>
            <td class="style7">
                <asp:Label ID="Label3" runat="server" Text="Late Date"></asp:Label>
            </td>
            <td class="style25">
                <asp:TextBox ID="txtLateDate" runat="server"></asp:TextBox>
            </td>
            <td class="text-left">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style22">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style25">
                &nbsp;</td>
            <td class="text-left">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style22">
                &nbsp;</td>
            <td class="style7">
                <asp:Label ID="Label5" runat="server" Text="Select Class Teacher"></asp:Label>
            </td>
            <td class="style25">
                <asp:DropDownList ID="ddlTeacher" runat="server" DataSourceID="SqlDataSource1" 
                    DataTextField="Name" DataValueField="StaffID" Width="200px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\PresentlyDatabase.mdf;Integrated Security=True;User Instance=True" 
                    ProviderName="System.Data.SqlClient" 
                    SelectCommand="SELECT [Name], [StaffID] FROM [TeacherTBL]">
                </asp:SqlDataSource>
            </td>
            <td class="text-left">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style22">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style25">
                &nbsp;</td>
            <td class="text-left">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style22">
                &nbsp;</td>
            <td class="style7">
                <asp:Label ID="Label4" runat="server" Text="Reason / Comment"></asp:Label>
            </td>
            <td class="style25">
                <asp:TextBox ID="txtReason" runat="server" Height="122px" TextMode="MultiLine" 
                    Width="328px"></asp:TextBox>
            </td>
            <td class="text-left">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style23">
            </td>
            <td class="style43">
            </td>
            <td class="style27">
            </td>
            <td class="style1">
            </td>
            <td class="style1">
            </td>
        </tr>
        <tr>
            <td class="style22">
                &nbsp;</td>
            <td class="style44">
                &nbsp;</td>
            <td class="style28">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="APPLY" 
                    Font-Bold="True" Font-Size="Large" Height="50px" Width="100px" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style22">
                &nbsp;</td>
            <td class="style44">
                &nbsp;</td>
            <td class="style25">
                &nbsp;</td>
            <td class="text-left">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style37">
                </td>
            <td class="style45">
                </td>
            <td class="style39">
                &nbsp;</td>
            <td class="style40">
            </td>
            <td class="style41">
                </td>
        </tr>
        <tr>
            <td class="style22">
                &nbsp;</td>
            <td class="style44">
                &nbsp;</td>
            <td class="style28">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style22">
                &nbsp;</td>
            <td class="style44">
                &nbsp;</td>
            <td class="style28">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style24">
            </td>
            <td class="style46">
            </td>
            <td class="style29">
            </td>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
            </td>
        </tr>
        <tr>
            <td class="style22">
                &nbsp;</td>
            <td class="style44">
                &nbsp;</td>
            <td class="style28">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style22">
                &nbsp;</td>
            <td class="style44">
                &nbsp;</td>
            <td class="style28">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style22">
                &nbsp;</td>
            <td class="style44">
                &nbsp;</td>
            <td class="style28">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style22">
                &nbsp;</td>
            <td class="style44">
                &nbsp;</td>
            <td class="style28">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style22">
                &nbsp;</td>
            <td class="style44">
                &nbsp;</td>
            <td class="style28">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style22">
                &nbsp;</td>
            <td class="style44">
                &nbsp;</td>
            <td class="style28">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style22">
                &nbsp;</td>
            <td class="style44">
                &nbsp;</td>
            <td class="style28">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style22">
                &nbsp;</td>
            <td class="style44">
                &nbsp;</td>
            <td class="style28">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

