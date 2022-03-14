<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="admin_add_teacher.aspx.cs" Inherits="LMS.admin_add_teacher" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<div class="sb2-2">
    <!--== breadcrumbs ==-->
    <div class="sb2-2-2">
        <ul>
            <li><a href="Default.aspx"><i class="fa fa-home" aria-hidden="true"></i> Home</a>
            </li>
            <li class="active-bre"><a href="admin_add_teacher.aspx"> Add new Trainer</a>
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
                        <h4>Add New Trainer Informations</h4>                        
                    </div>
                    <div class="tab-inn">
                        <form id="form1" runat="server">
                            <div class="row">
                                <div class="input-field col s6">
                                     <asp:TextBox ID="textfirst_name"  class="validate" runat="server" placeholder="First Name"></asp:TextBox>   
                                </div>
                                <div class="input-field col s6">
                                   <asp:TextBox ID="textlast_name"  class="validate" runat="server" placeholder="Last Name"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s6">
                                   <asp:TextBox ID="textphone_number"  class="validate" runat="server" placeholder="Phone Number" TextMode="Phone"></asp:TextBox>
                                </div>
                                <div class="input-field col s6">
                                    <asp:TextBox ID="textemail_id"  class="validate" runat="server" placeholder="Email Id" TextMode="Email"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s6">
                                    <asp:TextBox ID="textcity"  class="validate" runat="server" placeholder="City"></asp:TextBox>
                                </div>
                                <div class="input-field col s6">
                                    <asp:TextBox ID="textcountry"  class="validate" runat="server" placeholder="Country"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row">
                               <div class="input-field col s6">
                                   <asp:TextBox ID="textpassword"  class="validate" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>
                                <div class="input-field col s6">
                                    <asp:TextBox ID="textconfirm_password"  class="validate" runat="server" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row">
                                <!-- <div class="input-field col s6">
                                    <asp:TextBox ID="texttrainer_id"  class="validate" runat="server" placeholder="Trainer Id"></asp:TextBox>
                                </div>-->
                                <div class="input-field col s12">
                                     
                                    <asp:FileUpload ID="FileUpload1" runat="server" BorderColor="White" />
                                </div>
                            </div>
                            <!--<div class="row">
                                <div class="file-field input-field col s12">
                                    <div class="btn admin-upload-btn">
                                        <span>File</span>
                                        <input type="file">
                                    </div>
                                    <div class="file-path-wrapper">
                                        <input class="file-path validate" type="text" placeholder="Profile image">
                                    </div>
                                </div>
                            </div>-->
                           <div class="row">
                                <div class="input-field col s12">
                                    <div class="waves-effect waves-light btn-large waves-input-wrapper">
                                       
                                <asp:Button ID="submit" class="waves-button-input" runat="server" Text="submit" Font-Size="Medium" OnClick="submit_Click" />
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>       

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