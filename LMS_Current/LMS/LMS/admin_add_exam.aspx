<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="admin_add_exam.aspx.cs" Inherits="LMS.admin_add_exam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="sb2-2">
        <!--== breadcrumbs ==-->
        <div class="sb2-2-2">
            <ul>
                <li><a href="Default.aspx"><i class="fa fa-home" aria-hidden="true"></i>Home</a>
                </li>
                <li class="active-bre"><a href="admin_add_exam">Add New Exam</a>
                </li>
                <li class="page-back"><a href="Default.aspx"><i class="fa fa-backward" aria-hidden="true"></i>Back</a>
                </li>
            </ul>

        </div>

        <!--== User Details ==-->
        <div class="sb2-2-3">
            <div class="row">
                <div class="col-md-12">
                    <div class="box-inn-sp admin-form">
                        <div class="sb2-2-add-blog sb2-2-1">
                            <h2>New Exam</h2>

                            <div class="tab-content">
                                <div id="home" class="tab-pane fade active in">
                                    <div class="box-inn-sp">
                                        <div class="inn-title">
                                            <h4>Exam Details</h4>
                                            <p>Airtport Hotels The Right Way To Start A Short Break Holiday</p>
                                        </div>
                                        <div class="bor">
                                            <form id="form1" runat="server">
                                                <div class="row">
                                                    <div class="input-field col s12">
                                                        <asp:TextBox ID="textexam_name" class="validate" runat="server" placeholder="Exam Name" Font-Bold="True"></asp:TextBox>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="input-field col s12">
                                                        <asp:Label runat="server" Text="Exam Date: "></asp:Label>
                                                        <asp:TextBox ID="textexam_date" class="validate" runat="server" placeholder="Event Date" ForeColor="#CCCCCC" Font-Bold="True" TextMode="Date"></asp:TextBox>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="input-field col s12">
                                                        <asp:Label runat="server" Text="Exam Start Time: "></asp:Label>
                                                        <asp:TextBox ID="textstart_time" class="validate" runat="server" placeholder="Start Time" ForeColor="#CCCCCC" Font-Bold="True" TextMode="Time"></asp:TextBox>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="input-field col s6">
                                                        <asp:Label runat="server" Text="Exam End Time: "></asp:Label>
                                                        <asp:TextBox ID="txtendtime" class="validate" runat="server" placeholder="End Time" TextMode="Time" Font-Bold="True"></asp:TextBox>
                                                    </div>
                                                    </div>
                                                    <div class="row">
                                                    <div class="input-field col s6">
                                                        <asp:DropDownList ID="ddexamstatus" runat="server" Font-Bold="True">
                                                            <asp:ListItem Text="Select Status" Value=""></asp:ListItem>
                                                            <asp:ListItem Text="Active" Value="Active"></asp:ListItem>
                                                            <asp:ListItem Text="De-Active" Value="De-Active"></asp:ListItem>

                                                        </asp:DropDownList>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="input-field col s6">
                                                        <asp:TextBox ID="txtexamlink" class="validate" runat="server" placeholder="Exam Link" Font-Bold="True"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="input-field col s6">

                                                        <asp:DropDownList ID="DropDownListcourse" runat="server" Font-Bold="True">
                                                            <asp:ListItem Value="SELECT COURSE"></asp:ListItem>
                                                            <asp:ListItem Value="PHP"></asp:ListItem>
                                                            <asp:ListItem Value="Python"></asp:ListItem>
                                                            <asp:ListItem Value="Angular"></asp:ListItem>
                                                            <asp:ListItem Value="JAVA"></asp:ListItem>
                                                        </asp:DropDownList>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="input-field col s12">
                                                        <div class="waves-effect waves-light btn-large waves-input-wrapper">
                                                            <!-- <i class="waves-effect waves-light btn-large waves-input-wrapper"
                                                        ><input type="submit" class="waves-button-input"
                                                            value="Submit"></i>-->
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
                </div>
            </div>
        </div>
    </div>
</asp:Content>
