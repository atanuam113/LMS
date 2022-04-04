<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="admin_add_module.aspx.cs" Inherits="LMS.admin_add_module" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="sb2-2">
        <!--== breadcrumbs ==-->
        <div class="sb2-2-2">
            <ul>
                <li><a href="Default.aspx"><i class="fa fa-home" aria-hidden="true"></i>Home</a>
                </li>
                <li class="active-bre"><a href="#">Add course Module</a>
                </li>
                <li class="page-back"><a href="#"><i class="fa fa-backward" aria-hidden="true"></i>Back</a>
                </li>
            </ul>
        </div>

        <!--== User Details ==-->
        <div class="sb2-2-3">
            <div class="row">
                <div class="col-md-12">
                    <div class="box-inn-sp admin-form">
                        <div class="sb2-2-add-blog sb2-2-1">
                            <h2>Add Course Module</h2>

                            <form runat="server">
                                <div class="inn-title">
                                    <h4>Course Content</h4>
                                </div>

                                <div class="bor ad-cou-deta-h4">
                                    <div class="row">
                                        <div class="input-field col s4">
                                            <asp:DropDownList runat="server" ID="ddteacher">
                                                <asp:ListItem Text="Select Course Name" Value=""></asp:ListItem>
                                                <asp:ListItem Text="Atanu Mondal" Value="Atanu Mondal"></asp:ListItem>
                                                <asp:ListItem Text="Nabanita Dutta" Value="Nabanita Dutta"></asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row">
                                        <div class="input-field col s12">
                                            <asp:TextBox runat="server" ID="txtmoduletopic" CssClass="validate"></asp:TextBox>
                                            <label for="txtmoduletopic" class="">Module Topic</label>
                                        </div>
                                        <div class="row">
                                            <div class="input-field col s4">
                                                <asp:DropDownList runat="server" ID="ddmoduletype">
                                                    <asp:ListItem Text="Module Type" Value=""></asp:ListItem>
                                                    <asp:ListItem Text="PDF" Value="PDF"></asp:ListItem>
                                                    <asp:ListItem Text="Video" Value="Video"></asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="input-field col s4">
                                            <asp:DropDownList runat="server" ID="DropDownList2">
                                                <asp:ListItem Text="Module Extension" Value=""></asp:ListItem>
                                                <asp:ListItem Text=".PDF" Value=".PDF"></asp:ListItem>
                                                <asp:ListItem Text=".mp4" Value=".mp4"></asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>

                                    <div class="file-field input-field">
                                        <div class="btn admin-upload-btn">
                                            <span>File</span>
                                            <asp:FileUpload runat="server" ID="modulecontent" />
                                        </div>
                                        <div class="file-path-wrapper">
                                            <input class="file-path validate" type="text"
                                                placeholder="Upload course module content">
                                        </div>
                                    </div>

                                    <div class="row">
                                        <label for="moduledate" class="">Course module upload Date</label>
                                        <asp:TextBox ID="moduledate" runat="server" Text='<%# Bind("moduledate", "{0:yyyy-MM-dd}") %>' TextMode="Date"></asp:TextBox>

                                    </div>

                                    <div class="row">
                                        <div class="input-field col s12">
                                            <i class="waves-effect waves-light btn-large waves-input-wrapper">
                                                <asp:Button runat="server" OnClick="btnSave_Click" ID="btnSave" Text="Submit" /></i>
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
