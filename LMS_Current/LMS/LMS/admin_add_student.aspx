<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="admin_add_student.aspx.cs" Inherits="LMS.admin_add_student" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   
    <!--== BODY INNER CONTAINER ==-->
<div class="sb2-2">
    <!--== breadcrumbs ==-->
    <div class="sb2-2-2">
        <ul>
            <li><a href="Default.aspx"><i class="fa fa-home" aria-hidden="true"></i> Home</a>
            </li>
            <li class="active-bre"><a href="admin_add_student.aspx"> Add New Learner</a>
            </li>
            <li class="page-back"><a href="Default.aspx"><i class="fa fa-backward" aria-hidden="true"></i> Back</a>
            </li>
        </ul>
    </div>

    <!--== User Details ==-->
    <div class="sb2-2-3">
        <div class="row">
            <div class="col-md-12">
                <div class="box-inn-sp admin-form">
                    <div class="inn-title">
                        <h4>Add New Learner Informations</h4>
                    </div>
                    <div class="tab-inn">
                       <form id="form1" runat="server">
                            <div class="row">
                                <div class="input-field col s6">
                                    <asp:TextBox ID="textfirst_name"  class="validate" runat="server" placeholder="First Name" Font-Bold="True"></asp:TextBox>                           
                                </div>
                                <div class="input-field col s6">
                                    <asp:TextBox ID="textlast_name"  class="validate" runat="server" placeholder="Last Name" Font-Bold="True"></asp:TextBox>
                                </div>
               
                            </div>
                            <div class="row">
                                <div class="input-field col s6">
                                   <asp:TextBox ID="textphone_number"  class="validate" runat="server" placeholder="Phone Number" Font-Bold="True"></asp:TextBox>
                                </div>
                                <div class="input-field col s6">
                                    <asp:TextBox ID="textemail_id"  class="validate" runat="server" placeholder="Email Id" TextMode="Email" Font-Bold="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s6">
                                    <asp:TextBox ID="textcity"  class="validate" runat="server" placeholder="City" Font-Bold="True"></asp:TextBox>
                                </div>
                                <div class="input-field col s6">
                                    <asp:TextBox ID="textcountry"  class="validate" runat="server" placeholder="Country" Font-Bold="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s6">
                                   <asp:TextBox ID="textpassword"  class="validate" runat="server" placeholder="Password" Font-Bold="True"></asp:TextBox>
                                </div>
                                <div class="input-field col s6">
                                    <asp:TextBox ID="textconfirm_password"  class="validate" runat="server" placeholder="Confirm Password" Font-Bold="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row">
                               <div class="input-field col s5">
                                   <asp:DropDownList ID="DropGender" runat="server" Font-Bold="True" ForeColor="#CCCCCC">
                                       <asp:ListItem Text="Select Gender..." Value=""></asp:ListItem>
                                        <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                                        <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                                        <asp:ListItem Text="Others" Value="Others"></asp:ListItem>
                                   </asp:DropDownList>
                                </div>
                                 </div>
                           <div class="row">
                               <div class="input-field col s6">
                                   <asp:Label runat="server" Text="Date Of Birth:"></asp:Label>
                                   <asp:TextBox runat="server" ID="txtdate" TextMode="Date"></asp:TextBox>
                               </div>
                           </div>
                                <div class="file-field input-field">
                                                    <div class="btn admin-upload-btn">

                                                        <span>File</span>
                                                        <asp:FileUpload ID="FileUpload2" runat="server" />
                                                    </div>
                                                    <div class="file-path-wrapper">
                                                        <input class="file-path validate" type="text"
                                                            placeholder="Upload Learner Profile Image">

                                                    </div>
                                                </div>
                           
                          
                            <div class="row">
                                <div class="input-field col s12">
                                    <div class="waves-effect waves-light btn-large waves-input-wrapper">
                                        
                                <asp:Button ID="submit" class="waves-button-input" runat="server" Text="submit" Font-Size="Medium" OnClick="submit_Click" />
                                   
                                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
        
</asp:Content>