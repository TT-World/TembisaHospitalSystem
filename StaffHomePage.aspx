<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StaffHomePage.aspx.cs" Inherits="TembisaHospitalSystem.StaffHomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="StaffHomePageStyleSheet.css"/>
    <title></title>
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
    <link href="https://fonts.googleapis.com/css2?family=Dosis:wght@200;300&display=swap" rel="stylesheet"/>
    
</head>
<body>
    <form id="form1" runat="server">


        <div class="auto-style2">
            <table style="width:100%;">
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="dateLbl" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style7"></td>
                    <td class="auto-style4">
                        <asp:Label ID="userLbl" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style12">Tembisa Hospital Home Page</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label1" runat="server" Text="Search Patient:"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <br />
                        <br />
                        <asp:TextBox ID="searchTxtBx" runat="server" OnTextChanged="searchTxtBx_TextChanged"></asp:TextBox>
                        <br />
                        <br />
                        <asp:DropDownList ID="patientsDropDownList" runat="server">
                        </asp:DropDownList>
                        <br />
                        <br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <table style="width:100%;">
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" Height="129px" Width="870px">
                        </asp:GridView>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style4"></td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style11">
                    <asp:Button ID="searthcBtn" runat="server" OnClick="Button1_Click1" Text="Search Patient" Width="142px" />
                </td>
                <td class="auto-style9">
                    <asp:Button ID="Button2" runat="server" Text="Add New Patient" OnClick="Button2_Click" />
                </td>
                <td class="auto-style4">
                    <asp:Button ID="wardsBtn" runat="server" Text="Wards" OnClick="wardsBtn_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style14">
                    <br />
                    <asp:Button ID="viewBtn" runat="server" Text="View Patients Details" OnClick="Button4_Click" />
                </td>
                <td class="auto-style15">
                    <br />
                </td>
                <td class="auto-style16">
                    <br />
                    <asp:Button ID="logout" runat="server" Text="Logout" OnClick="Button6_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
