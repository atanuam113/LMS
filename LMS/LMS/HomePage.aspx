<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="LMSSolution12.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LMS Project</title>
    <link rel="stylesheet" href="/CSS/home.css" type="text/css" />
</head>
<body>    
    <form id="form1" runat="server">
        
  <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div>
            <center class="auto-style2">
            <h1 style="color:#ADDFFF">WELLCOME  TO  THE  SYSTEM</h1>
            <hr />
                <div class="container">
                    <div class="pages">
                        <div class="page">
                            <table>
            <tr>
                <td><asp:Label ID="userid" class="title" runat="server" Text="User Id : "></asp:Label></td>
                <td><asp:TextBox ID="textuserid" class="input" runat="server" Width="150px" Height="30px" TextMode="Email" align="center"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="password" class="title" runat="server" Text="Password : "></asp:Label></td>
                <td><asp:TextBox ID="textpassword" class="input" runat="server" Width="150px" Height="30px" align="center" OnTextChanged="textpassword_TextChanged" TextMode="Password"></asp:TextBox></td>
                </tr>
                    </table>
                                </div>
                        </div>
                    </div>
                <asp:Label ID="Label1" runat="server" Text="" ForeColor="Red"></asp:Label>
                <br />
            <br />
                        
               <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>     
            <asp:Button ID="login" class="button-20" runat="server" Text="Login" OnClick="login_Click" Height="36px" Width="128px" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="registration" class="button-20" runat="server" Text="Registration" Height="37px" Width="144px" OnClick="registration_Click" />
            </center>
                    </ContentTemplate>

        </asp:UpdatePanel>

        </div>
           
    </form>
            
</body>
</html>
