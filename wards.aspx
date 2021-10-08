<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wards.aspx.cs" Inherits="TembisaHospitalSystem.Patient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="dateLbl" runat="server"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="Label1" runat="server" Text="Wards"></asp:Label>
                </td>
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
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">
                    <asp:GridView ID="GridView1" runat="server">
                    </asp:GridView>
                </td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">
                    <asp:Button ID="filterBtn" runat="server" Text="Filter" />
&nbsp;
                    <asp:Button ID="backBtn" runat="server" OnClick="backBtn_Click" Text="Back" />
                </td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
