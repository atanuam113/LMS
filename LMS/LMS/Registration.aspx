<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="LMSSolution12.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="/CSS/home.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                <h1 style="color:#ADDFFF">REGISTRATION  PAGE</h1>
                <hr />

                <div class="container">
                    <div class="pages">
                        <div class="page">
                            <table>
              <!-- <tr> 
                   <td><asp:Label ID="name" class="title" runat="server" Text="Name: "></asp:Label></td>
                   <td><asp:TextBox ID="textname" class="input" runat="server" Width="150px" Height="30px"></asp:TextBox></td>
                </tr>-->
                <tr>
                    <td><asp:Label ID="email_id" class="title" runat="server" Text="Email Id: "></asp:Label></td>
                    <td><asp:TextBox ID="textemail_id" class="input" runat="server" Width="150px" Height="30px" TextMode="Email"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="password" class="title" runat="server" Text="Password: "></asp:Label></td>
                    <td><asp:TextBox ID="textpassword" class="input" runat="server" Width="150px" Height="30px" TextMode="Password"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="confirm_password" class="title" runat="server" Text="Confirm "></asp:Label><br />
                    <asp:Label ID="Label1" class="title" runat="server" Text="Password: "></asp:Label></td>
                    <td><asp:TextBox ID="textconfirm_password" class="input" runat="server" Width="150px" Height="30px" TextMode="Password"></asp:TextBox></td>
                </tr>
               <tr>
                    <td><asp:Label ID="usertype" class="title" runat="server" Text="User Type: "></asp:Label></td>
                    
                    <td><asp:DropDownList ID="textusertype" class="input" runat="server" Width="150px" Height="30px">
                       <asp:ListItem Value="">Please Select</asp:ListItem>  
                       <asp:ListItem>Trainer</asp:ListItem>  
                       <asp:ListItem>Learner</asp:ListItem>    

                   </asp:DropDownList></td>
               </tr>
                    </table>
                            </div>
                        </div>
                    </div>
                <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                <br />
                <br />
                <asp:Button ID="Button1" class="button-20" runat="server" Text="Registration" OnClick="Button1_Click" />
            </center>
        </div>
    </form>
</body>
</html>
