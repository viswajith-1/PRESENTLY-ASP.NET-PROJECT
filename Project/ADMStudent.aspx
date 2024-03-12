<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ADMStudent.aspx.cs" Inherits="StudentReg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 26px;
        }
        .style3
        {
            width: 267px;
        }
        .style4
        {
            height: 26px;
            width: 267px;
        }
        .style5
        {
            height: 23px;
        }
        .style6
        {
            width: 267px;
            height: 23px;
        }
    .style7
    {
        height: 29px;
    }
    .style8
    {
            width: 267px;
            height: 29px;
        }
        .style9
        {
            text-align: center;
            width: 142px;
        }
        .style10
        {
            width: 142px;
        }
        .style11
        {
            height: 26px;
            width: 142px;
        }
        .style12
        {
            height: 23px;
            width: 142px;
        }
        .style13
        {
            height: 29px;
            width: 142px;
        }
    </style>

    <script language="javascript" type="text/javascript">

        function validate1() {
            var a = document.getElementById('<%=txtStudentID.ClientID%>').value;
            if (a == '') {
                alert('Field Cannot be Blank...');
                return false;
            }
            }

            function validate2() {
            var a = document.getElementById('<%=txtName.ClientID%>').value;
            if (a == '') {
                alert('Field Cannot be Blank...');
                return false;
            }
            }
            
            function validate3() {
             var a = document.getElementById('<%=txtDoB.ClientID%>').value;
             if (a == '') {
                alert('Field Cannot be Blank...');
                return false;
            }
            }
           
           function validate4() {
           var a = document.getElementById('<%=txtAdmissionYear.ClientID%>').value;
            if (a == '') {
                alert('Field Cannot be Blank...');
                return false;
            }
           }
            
           function validate5() {
            var a = document.getElementById('<%=txtAddress.ClientID%>').value;
            if (a == '') {
                alert('Field Cannot be Blank...');
                return false;
            }
           }
           
           function validate6() {
               var a = document.getElementById('<%=txtMobileNum.ClientID%>').value;
               var ph = /(7|8|9)\d{9}/;
            if (i1 == '') {
                alert('Field Cannot be Blank...');
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
           
           function validate7() {
             var j = document.getElementById('<%=txtEmailID.ClientID%>').value;
              if (j == '') {
                alert('Field Cannot be Blank...');
                return false;
            }
           }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="w-100">
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td  class="text-center" colspan="2">
                &nbsp;</td>
            <td class="text-center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style3">
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
                                <asp:Label ID="Label13" runat="server" Font-Size="X-Large" ForeColor="#0000CC" 
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
            <td class="style10">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style3">
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" 
                    Font-Size="Medium" ForeColor="#0000CC" onclick="LinkButton1_Click">Click Here to View Student Details</asp:LinkButton>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style3">
                <asp:Label ID="Label9" runat="server" Text="Student ID"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtStudentID" runat="server" 
                    Height="25px" Width="250px" onfocusout="if(validate1()==false) return(false);"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
            </td>
            <td class="style4">
                <asp:Label ID="Label1" runat="server" Text="Name" ></asp:Label>
            </td>
            <td class="style1">
                <asp:TextBox ID="txtName" runat="server" Width="250px"  onfocusout="if(validate2()==false) return(false);"></asp:TextBox>
            </td>
            <td class="style1">
            </td>
        </tr>
        <tr>
            <td class="style11">
            </td>
            <td class="style4">
            </td>
            <td class="style1">
            </td>
            <td class="style1">
            </td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="Label10" runat="server" Text="Gender"></asp:Label>
            </td>
            <td class="style1">
                <asp:RadioButtonList ID="rblGender" runat="server" RepeatDirection="Horizontal"  >
                    <asp:ListItem Selected="True">Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="Label11" runat="server" Text="Date of Birth"></asp:Label>
            </td>
            <td class="style1">
                <asp:TextBox ID="txtDoB" runat="server" Width="250px"  
                    onfocusout="if(validate3()==false) return(false);" TextMode="Date"></asp:TextBox>
            </td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style3">
                <asp:Label ID="Label2" runat="server" Text="Year of Admission"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtAdmissionYear" runat="server" Width="250px" onfocusout="if(validate4()==false) return(false);"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                </td>
            <td class="style4">
                </td>
            <td class="style1">
                </td>
            <td class="style1">
                </td>
        </tr>
        <tr>
            <td class="style11">
            </td>
            <td class="style4">
                <asp:Label ID="Label7" runat="server" Text="Department"></asp:Label>
            </td>
            <td class="style1">
                <asp:DropDownList ID="ddlDepartment" runat="server" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" Width="300px" 
                    AutoPostBack="True" >
                    <asp:ListItem Value="0">Select department</asp:ListItem>
                    <asp:ListItem Value="1">English Language and Literature</asp:ListItem>
                    <asp:ListItem Value="2">Computer Science and Applications</asp:ListItem>
                    <asp:ListItem Value="3">Commerce and Management</asp:ListItem>
                    <asp:ListItem Value="4">Hotel Management</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style1">
            </td>
        </tr>
        <tr>
            <td class="style12">
                </td>
            <td class="style6">
                </td>
            <td class="style5">
                </td>
            <td class="style5">
                </td>
        </tr>
        <tr>
            <td class="style12">
                </td>
            <td class="style6">
                <asp:Label ID="Label8" runat="server" Text="Course"></asp:Label>
                </td>
            <td class="style5">
                <asp:DropDownList ID="ddlCourse" runat="server" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" Width="300px" >
                    <asp:ListItem Value="0">Select course</asp:ListItem>
                    <asp:ListItem>Bsc Computer Science</asp:ListItem>
                    <asp:ListItem>BCA</asp:ListItem>
                    <asp:ListItem>Bcom Tax</asp:ListItem>
                    <asp:ListItem>Hotel Management</asp:ListItem>
                </asp:DropDownList>
                </td>
            <td class="style5">
                </td>
        </tr>
        <tr>
            <td class="style13">
                </td>
            <td class="style8">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style7">
                </td>
        </tr>
        <tr>
            <td class="style13">
                </td>
            <td class="style8">
                <asp:Label ID="Label3" runat="server" Text="Semester"></asp:Label>
            </td>
            <td class="style7">
                <asp:DropDownList ID="ddlsemester" runat="server" Width="250px" >
                    <asp:ListItem Value="0">Select Semester </asp:ListItem>
                    <asp:ListItem>Sem1</asp:ListItem>
                    <asp:ListItem>Sem2</asp:ListItem>
                    <asp:ListItem>Sem3</asp:ListItem>
                    <asp:ListItem>Sem4</asp:ListItem>
                    <asp:ListItem>Sem5</asp:ListItem>
                    <asp:ListItem>Sem6</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style7">
                </td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style3">
                <asp:Label ID="Label12" runat="server" Text="Address"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Height="175px" 
                     Width="350px" onfocusout="if(validate5()==false) return(false);"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style3">
                <asp:Label ID="Label4" runat="server" Text="Mobile Number"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtMobileNum" runat="server" Width="250px" onfocusout="if(validate6()==false) return(false);"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                </td>
            <td class="style4">
                </td>
            <td class="style1">
                </td>
            <td class="style1">
                </td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style3">
                <asp:Label ID="Label5" runat="server" Text="Email ID"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtEmailID" runat="server" Width="250px" onfocusout="if(validate7()==false) return(false);"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtEmailID" ErrorMessage="Enter Proper Email ID" 
                    ForeColor="#CC0000" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
            </td>
            <td class="style4">
            </td>
            <td class="style1">
            </td>
            <td class="style1">
            </td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                <asp:Button ID="btSave" runat="server" Text="Save" onclick="Button1_Click" 
                    Height="50px" Width="100px" onClientClick="if(validate1()==false) return(false);" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
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

