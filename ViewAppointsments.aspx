<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewAppointsments.aspx.cs" Inherits="TembisaHospitalSystem.ViewAppointsments" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style3 {
            text-align: left;
            height: 23px;
            width: 195px;
        }
        .auto-style2 {
            text-align: center;
            height: 23px;
        }
        .auto-style4 {
            text-align: center;
            width: 195px;
        }
        .auto-style1 {
            text-align: center;
        }
        .auto-style5 {
            width: 82px;
        }
        .auto-style6 {
            font-size: xx-large;
        }
        .auto-style7 {
            width: 545px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label1" runat="server" Text="Date and time"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" CssClass="auto-style6" Text="Appointments"></asp:Label>
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
                        <asp:DropDownList ID="DropDownList1" runat="server">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
            </table>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style7">
                        <asp:Calendar ID="Calendar1" runat="server" CssClass="auto-style6"></asp:Calendar>
                    </td>
                    <td>
                        <asp:ListBox ID="ListBox1" runat="server" Height="318px" Width="395px"></asp:ListBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="Button1" runat="server" Text="Book Appointment" />
                </td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">
                    <asp:Button ID="Button2" runat="server" Text="Delete appointment" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">
                    <asp:Button ID="Button4" runat="server" Height="32px" Text="Back" Width="88px" />
                </td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
        </table>
    </form>
    <table style="width:100%;">
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style2"></td>
            <td class="auto-style2"></td>
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
</body>
</html>
