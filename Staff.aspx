<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Staff.aspx.cs" Inherits="TembisaHospitalSystem.Staff" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Staff Login</title>
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
    <link href="https://fonts.googleapis.com/css2?family=Dosis:wght@200;300&display=swap" rel="stylesheet"/>
    <link rel="stylesheet" href="StaffStyleSheet.css"/>
    
</head>
<body>
    <form id="form1" runat="server">

                    <div class="Callender">
                            <asp:Label ID="dateLbl" runat="server"></asp:Label>
                    </div>
        <br />
               <br />
        <div class="LoginLogo">

            <asp:Label ID="Label1" runat="server" Text="Login"></asp:Label>
                   <br />
                   <br />
            

        </div>
        <br />
        <div class="LoginInputs">

            <asp:Label ID="Label2" runat="server" Text="Username ID:"></asp:Label>

             <asp:TextBox ID="usernameTxtBx" runat="server" OnTextChanged="usernameTxtBx_TextChanged"></asp:TextBox>
            
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="usernameTxtBx" ErrorMessage="Username required!!!"></asp:RequiredFieldValidator>

              <br />
              <br />
               <br />

             <asp:Label ID="Label3" runat="server" Text="Password:"></asp:Label>
     
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     
            <asp:TextBox ID="passwordTxtBx" runat="server"></asp:TextBox>
      
             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="passwordTxtBx" ErrorMessage="Password required!!!"></asp:RequiredFieldValidator>
                <br />
                <br />
                <br />
                <div class="loginbutton"><asp:Button ID="loginBtn" runat="server" Height="42px" Text="login" Width="146px" OnClick="Button1_Click" />&nbsp;</div>
              

        </div>
                    <div class="ImageForLogin" style="width: 256px; z-index: 1; left: 511px; top: 22px; position: absolute; height: 267px">
                        <img src="images/3f62948d936e4b0fc9be5ed8c1698716.jpg" style="height: 273px" />
                    </div>
        <br />        
                    
    </form>
</body>
</html>
