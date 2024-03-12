<%@ Page Title="" Language="C#" MasterPageFile="~/GuestMasterPage.master" AutoEventWireup="true" CodeFile="ParentRegistration.aspx.cs" Inherits="ParentRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 18px;
        }
        .style2
        {
            height: 29px;
        }
        .style3
        {
            height: 29px;
            width: 1313px;
        }
        .style4
        {
            width: 830px;
        }
        .style5
        {
            width: 1313px;
        }
        .style6
        {
            width: 1080px;
        }
        .style7
        {
            height: 29px;
            width: 1080px;
        }
        .style8
        {
            height: 28px;
        }
        .style9
        {
            width: 1313px;
            height: 28px;
        }
        .style10
        {
            width: 1080px;
            height: 28px;
        }
    </style>
    <script language="javascript" type="text/javascript">

        function validate1() {
            var a = document.getElementById('<%=txtName.ClientID%>').value;
            if (a == '') {
                alert('Field Cannot be Blank...');
                return false;
            }
        }

        function validate2() {
            var a = document.getElementById('<%=txtAge.ClientID%>').value;
            if (a == '') {
                alert('Age Field Cannot be Blank...');
                return false;
            }
        }

        function validate3() {
            var a = document.getElementById('<%=txtAddress.ClientID%>').value;
            if (a == '') {
                alert('Address Field Cannot be Blank...');
                return false;
            }
        }

        function validate4() {
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

        function validate5() {
            var a = document.getElementById('<%=txtEmailID.ClientID%>').value;
            if (a == '') {
                alert('Email Field Cannot be Blank...');
                return false;
            }
        }

        function validate6() {
            var a = document.getElementById('<%=txtPassword.ClientID%>').value;
            if (a == '') {
                alert('Password Field Cannot be Blank');
                return false;
            }
        }
    </script>
</asp:Content>


<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <table class="w-100">
        <tr>
            <td>
    <table class="w-100">
        <tr>
            <td class="text-center">
                &nbsp;</td>
            <td bgcolor="#66FF99" class="text-center" colspan="2">
                Parent Registration</td>
            <td class="text-center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
            </td>
            <td class="style3">
            </td>
            <td class="style6">
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
            <td class="style6">
                <asp:TextBox ID="txtName" runat="server" ontextchanged="txtName_TextChanged" 
                    Height="25px" Width="250px"></asp:TextBox>
                    <asp:RequiredFieldValidator
            id="RequiredFieldValidator1" ControlToValidate="txtName" ErrorMessage="Name is required."
            SetFocusOnError="true" Runat="server" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style4">
                </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                </td>
            <td class="style9">
                <asp:Label ID="Label13" runat="server" Text="Relation to Student"></asp:Label>
            </td>
            <td class="style10">
                <asp:RadioButtonList ID="rblRelation" runat="server" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem>Father</asp:ListItem>
                    <asp:ListItem>Mother</asp:ListItem>
                    <asp:ListItem>Gaurdian</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator
            id="RequiredFieldValidator9" ControlToValidate="rblRelation" ErrorMessage="Relation is required."
            SetFocusOnError="true" Runat="server" ForeColor="Red"></asp:RequiredFieldValidator>
  

            </td>
            <td class="style8">
                </td>
        </tr>
        <tr>
            <td class="style2">
                </td>
            <td class="style3">
                </td>
            <td class="style7">
                </td>
            <td class="style2">
                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style5">
                <asp:Label ID="Label10" runat="server" Text="Gender"></asp:Label>
            </td>
            <td class="style6">
                <asp:RadioButtonList ID="rblGender" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                                </asp:RadioButtonList>
                            <asp:RequiredFieldValidator
            id="RequiredFieldValidator8" ControlToValidate="rblGender" ErrorMessage="Gender is required."
            SetFocusOnError="true" Runat="server" ForeColor="Red"></asp:RequiredFieldValidator>
                
            </td>

            <td>
                &nbsp;</td>
                

        </tr>

        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                <asp:Label ID="Label16" runat="server" Text="Age"></asp:Label>
            </td>
            <td class="style6">
                <asp:TextBox ID="txtAge" runat="server" 
                TextMode="Number"></asp:TextBox>
                    <asp:RequiredFieldValidator
            id="RequiredFieldValidator2" ControlToValidate="txtAge" ErrorMessage="Age is required."
            SetFocusOnError="true" Runat="server" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                </td>
            <td class="style3">
                <asp:Label ID="Label8" runat="server" Text="Address"></asp:Label>
            </td>
            <td class="style7">
                <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Width="350px" 
                    Height="175px"></asp:TextBox>
                    <asp:RequiredFieldValidator
            id="RequiredFieldValidator3" ControlToValidate="txtAddress" ErrorMessage="Address is required."
            SetFocusOnError="true" Runat="server" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style2">
                </td>
        </tr>
        <tr>
            <td class="style1">
                </td>
            <td class="style3">
                </td>
            <td class="style6">
                </td>
            <td class="style1">
                </td>
        </tr>
        <tr>
            <td class="style2">
                </td>
            <td class="style3">
                &nbsp;<asp:Label ID="Label11" runat="server" Text="Mobile Number"></asp:Label>
            </td>
            <td class="style7">
                <asp:TextBox ID="txtMobileNum" runat="server" Width="250px"></asp:TextBox>
                        <asp:RequiredFieldValidator
            id="RequiredFieldValidator7" ControlToValidate="txtMobileNum" ErrorMessage="Email is required."
            SetFocusOnError="true" Runat="server" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style2">
                </td>
        </tr>
        <tr>
            <td class="style1">
                </td>
            <td class="style3">
                </td>
            <td class="style6">
                </td>
            <td class="style1">
                </td>
        </tr>
        <tr>
            <td class="style2">
                </td>
            <td class="style3">
                <asp:Label ID="Label12" runat="server" Text="Email ID"></asp:Label>
            </td>
            <td class="style7">
                <asp:TextBox ID="txtEmailID" runat="server" TextMode="Email" Width="300px"></asp:TextBox>
                        <asp:RequiredFieldValidator
            id="RequiredFieldValidator4" ControlToValidate="txtEmailID" ErrorMessage="Email is required."
            SetFocusOnError="true" Runat="server" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtEmailID" ErrorMessage="Enter Proper Email ID" 
                    ForeColor="#CC0000" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            
            </td>
            <td class="style2">
                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                <asp:Label ID="Label14" runat="server" Text="Password"></asp:Label>
            </td>
            <td class="style6">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator
            id="RequiredFieldValidator6" ControlToValidate="txtPassword" ErrorMessage="Password is required."
            SetFocusOnError="true" Runat="server" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                </td>
            <td class="style3">
                <asp:Label ID="Label15" runat="server" Text="Confirm Password"></asp:Label>
            </td>
            <td class="style7">
                <asp:TextBox ID="txtCfmPassword" runat="server" TextMode="Password" 
                    Width="250px" ></asp:TextBox>
                <asp:RequiredFieldValidator
            id="RequiredFieldValidator5" ControlToValidate="txtCfmPassword" ErrorMessage="Passwrod is required."
            SetFocusOnError="true" Runat="server" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtPassword" ControlToValidate="txtCfmPassword" 
                    ErrorMessage="Password Mismatch" ForeColor="#CC0000"></asp:CompareValidator>
                
            </td>
            <td class="style2">
                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style6">
                <asp:Button ID="btSaveP" runat="server" Text="Save" 
                    onclick="Button1_Click" Height="75px" Width="100px"/>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        </table>
            </td>
        </tr>
    </table>
</asp:Content>



