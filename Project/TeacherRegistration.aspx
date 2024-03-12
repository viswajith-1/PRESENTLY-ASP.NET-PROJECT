<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="TeacherRegistration.aspx.cs" Inherits="FacultyReg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 26px;
        }
        .style2
        {
            width: 450px;
        }
        .style3
        {
            height: 26px;
            width: 450px;
        }
        .style4
        {
            height: 27px;
        }
        .style5
        {
            height: 27px;
            width: 450px;
        }
    </style>

    <script language="javascript" type="text/javascript">
        function validate1() {
            var a = document.getElementById('<%=txtStaffID.ClientID%>').value;
            if (a == '') {
                alert('Field Cannot be Blank...');
                return false;
            }
        }

        function validate2() {
            var a = document.getElementById('<%=txtName.ClientID%>').value;
            if (a == '') {
                alert('Name Field Cannot be Blank...');
                return false;
            }
        }

        function validate3() {
            var a = document.getElementById('<%=txtDoB.ClientID%>').value;
            if (a == '') {
                alert('Date of Birth Field Cannot be Blank...');
                return false;
            }
        }

        function validate4() {
            var a = document.getElementById('<%=txtAddress.ClientID%>').value;
            if (a == '') {
                alert('Address Field Cannot be Blank...');
                return false;
            }
        }

        function validate5() {
            var a = document.getElementById('<%=txtMobileNum.ClientID%>').value;
            var ph = /(7|8|9)\d{9}/;

            if (a == '') {
                alert('Mobile Field Cannot be Blank...');
                return false;
            }
            else {
                if ((a.match(ph))) {
                    return false;
                }
                else {
                    alert('Enter Proper Mobile');
                }
            }
        }

        function validate6() {
            var a = document.getElementById('<%=txtEmailID.ClientID%>').value;
            if (a == '') {
                alert('Email Field Cannot be Blank...');
                return false;
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="w-100">
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
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
                                <asp:Label ID="Label12" runat="server" Font-Size="X-Large" ForeColor="#0000CC" 
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
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" 
                    Font-Size="Medium" ForeColor="#0000CC" onclick="LinkButton1_Click">Click Here to View Teacher Details</asp:LinkButton>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
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
            </td>
            <td class="style2">
                <asp:Label ID="Label2" runat="server" Text="Staff ID"></asp:Label>
            </td>
            <td class="style1">
                <asp:TextBox ID="txtStaffID" runat="server" Width="250px" onfocusout="if(validate1()==false) return(false);"></asp:TextBox>
            </td>
            <td class="style1">
            </td>
        </tr>
        <tr>
            <td class="style1">
            </td>
            <td class="style3">
            </td>
            <td class="style1">
            </td>
            <td class="style1">
            </td>
        </tr>
        <tr>
            <td class="style4">
                </td>
            <td class="style5">
                <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
            </td>
            <td class="style4">
                <asp:TextBox ID="txtName" runat="server" Width="250px" onfocusout="if(validate2()==false) return(false);"></asp:TextBox>
            </td>
            <td class="style4">
                </td>
        </tr>
        <tr>
            <td class="style1">
                </td>
            <td class="style3">
                </td>
            <td class="style1">
                </td>
            <td class="style1">
                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="Label10" runat="server" Text="Gender"></asp:Label>
            </td>
            <td class="style1">
                <asp:RadioButtonList ID="rblGender" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
            </td>
            <td class="style3">
                <asp:Label ID="Label3" runat="server" Text="Date of Birth"></asp:Label>
            </td>
            <td class="style1">
                <asp:TextBox ID="txtDoB" runat="server" TextMode="Date" Width="250px" 
                    onfocusout="if(validate3()==false) return(false);"></asp:TextBox>
            </td>
            <td class="style1">
            </td>
        </tr>
        <tr>
            <td class="style1">
                </td>
            <td class="style3">
                </td>
            <td class="style1">
                </td>
            <td class="style1">
                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                <asp:Label ID="Label7" runat="server" Text="Department"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlDepartment" runat="server" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" Width="300px">
                    <asp:ListItem>Select department</asp:ListItem>
                    <asp:ListItem>Computer Science and Applications</asp:ListItem>
                    <asp:ListItem>English Language and Literature</asp:ListItem>
                    <asp:ListItem>Commerce and Management</asp:ListItem>
                    <asp:ListItem>Hotel Management</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                </td>
            <td class="style5">
                </td>
            <td class="style4">
                </td>
            <td class="style4">
                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                <asp:Label ID="Label8" runat="server" Text="Address"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Width="350px" 
                    Height="175px" onfocusout="if(validate4()==false) return(false);"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                </td>
            <td class="style3">
                </td>
            <td class="style1">
                </td>
            <td class="style1">
                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;<asp:Label ID="Label11" runat="server" Text="Mobile Number"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtMobileNum" runat="server" Width="250px" onfocusout="if(validate5()==false) return(false);"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                </td>
            <td class="style3">
                </td>
            <td class="style1">
                </td>
            <td class="style1">
                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                <asp:Label runat="server" Text="Email ID"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtEmailID" runat="server" TextMode="Email" Width="250px" onfocusout="if(validate6()==false) return(false);"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtEmailID" ErrorMessage="Enter Proper Email ID" 
                    ForeColor="#CC0000" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                <asp:Button ID="btSave" runat="server" Text="Save" 
                    onclick="Button1_Click" Height="50px" Width="100px" onClientClick="if(validate1()==false) return(false);"/>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

