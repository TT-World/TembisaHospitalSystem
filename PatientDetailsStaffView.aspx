<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PatientDetailsStaffView.aspx.cs" Inherits="TembisaHospitalSystem.PatientDetailsStaffView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            text-align: center;
            height: 23px;
        }
        .auto-style3 {
            text-align: left;
            height: 23px;
            width: 195px;
        }
        .auto-style4 {
            text-align: center;
            width: 195px;
        }
        .auto-style5 {
            text-align: center;
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table style="width:100%;">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="dateLbl" runat="server"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:Label ID="patientIdLbL" runat="server" Text="Patient (Display ID)"></asp:Label>
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="Label3" runat="server" Text="Name:"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="Surname:"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label5" runat="server" Text="Gender:"></asp:Label>
                    <br />
                    <br />
                    Ward to be placed in:<br />
                    <br />
                    Email addresss:<br />
                    <br />
                    Patient ID(Unique ID):<br />
                    <br />
                    <asp:Label ID="Label6" runat="server" Text="Condition:"></asp:Label>
                    <br />
                    <br />
                    Patient Weight (Kg):<br />
                    <br />
                    Patient Hieght (meters):</td>
                <td class="auto-style1">
                    <asp:TextBox ID="nameTxtBx" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="surnameTxtBx" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:DropDownList ID="GenderDropDownList" runat="server">
                    </asp:DropDownList>
                    <br />
                    <br />
                    <asp:DropDownList ID="wardDropDownList" runat="server">
                    </asp:DropDownList>
                    <br />
                    <br />
                    <asp:TextBox ID="emailTxtBx" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:TextBox ID="patientIDTxtBx" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="conditionTxtBx" runat="server" Height="76px" Width="212px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="passTxtBx" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="weightTxtBx" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="heightTxtBx" runat="server"></asp:TextBox>
                    </td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">
                    &nbsp;</td>
                <td class="auto-style1">
                    &nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">
                    <asp:GridView ID="GridView1" runat="server" Height="18px" Width="698px">
                    </asp:GridView>
                </td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="Label7" runat="server" Text="Select value to update:"></asp:Label>
&nbsp;<asp:DropDownList ID="ValuesDropDownList" runat="server">
                    </asp:DropDownList>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="Label8" runat="server" Text="Set New Value:"></asp:Label>
                    <asp:TextBox ID="newValueTxtBx" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Button ID="updateBtn" runat="server" OnClick="Button1_Click" Text="Update and Save" Height="24px" Width="127px" />
                    <br />
                </td>
                <td class="auto-style5">
                    <br />
                </td>
                <td class="auto-style5">
                    <asp:Button ID="deleteBtn" runat="server" Text="Delete Patient" OnClick="deleteBtn_Click" />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;</td>
                <td class="auto-style1">
                    &nbsp;</td>
                <td class="auto-style1">
                    &nbsp;</td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style2">
                    <asp:Label ID="successLbl" runat="server"></asp:Label>
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
