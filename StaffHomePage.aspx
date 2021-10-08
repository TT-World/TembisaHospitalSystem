<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StaffHomePage.aspx.cs" Inherits="TembisaHospitalSystem.StaffHomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="StaffHomePageStyleSheet.css"/>
    <title></title>
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400&display=swap" rel="stylesheet"/>
  
    
</head>
<body>


    <form id="form1" runat="server">


        <div class="nav">
            <div class="calendar"><asp:Label ID="dateLbl" runat="server"></asp:Label></div>
            <div class="heading">Tembisa Hospital Home Page</div>
            <div class="logoutBtn"><asp:Button ID="logout" runat="server" Text="Logout" OnClick="Button6_Click" BackColor="Silver" BorderStyle="None" /></div>
        </div>


        <br />
        <br />
        <div class="status"> <asp:Label ID="userLbl" runat="server"></asp:Label></div>
                  
                   <br />
                   <br />
   
                   
                
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   
                   
                
                        <asp:Label ID="Label1" runat="server" Text="Search Patient:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="searchTxtBx" runat="server" OnTextChanged="searchTxtBx_TextChanged"></asp:TextBox>
                        
                        
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        
                        
                        <asp:DropDownList ID="patientsDropDownList" runat="server"></asp:DropDownList>
        
                   <br />
                   <br /> 

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 

                    <asp:Button ID="searthcBtn" runat="server" OnClick="Button1_Click1" Text="Search Patient" Width="190px" />
                    <br />
                   <br /> 
             
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
             
                    <asp:Button ID="Button2" runat="server" Text="Add New Patient" OnClick="Button2_Click" Width="190px" />
                    <br />
                    <br /> 
          
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
          
                    <asp:Button ID="wardsBtn" runat="server" Text="Wards" OnClick="wardsBtn_Click" Width="190px" />
                    <br />
                    <br /> 

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 

                    <asp:Button ID="viewBtn" runat="server" Text="View Patients Details" OnClick="Button4_Click" Width="190px" />
                    <br />
                    <br /> 

                        <br />
                   
                        <asp:GridView ID="GridView1" runat="server" Height="129px" Width="870px" style="z-index: 1; left: 302px; top: 284px; position: absolute; height: 129px; width: 870px">
                        </asp:GridView>
              
    </form>
</body>
</html>
