﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Trainer/Teacher.Master" AutoEventWireup="true" CodeBehind="teacher_add_event.aspx.cs" Inherits="LMS.teacher_add_event" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="sb2-2">
        <!--== breadcrumbs ==-->
        <div class="sb2-2-2">
            <ul>
                <li><a href="Default.aspx"><i class="fa fa-home" aria-hidden="true"></i>Home</a>
                </li>
                <li class="active-bre"><a href="admin_add_event.aspx">Add New Event</a>
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
                        <div class="inn-title">
                            <h4>Add Event</h4>
                        </div>
                        <div class="tab-inn">
                            <form id="form1" runat="server">
                                <div class="row">
                                    <div class="input-field col s12">
                                        <asp:TextBox ID="textevent_name" class="validate" runat="server" placeholder="Event Name" Font-Bold="True"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="input-field col s12">
                                        <asp:TextBox ID="textevent_description" class="validate" runat="server" placeholder="Event Descriptions" TextMode="MultiLine" Font-Bold="True"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="input-field col s6">
                                        <asp:Label runat="server" Text="Date:"></asp:Label>
                                        <asp:TextBox ID="textdate" class="validate" runat="server" placeholder="Date" TextMode="Date" ForeColor="Silver" Font-Bold="True"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="input-field col s4">
                                        <asp:DropDownList runat="server" ID="txt_event_status">
                                            <asp:ListItem Text="Select Event status" Value=""></asp:ListItem>
                                            <asp:ListItem Text="Active" Value="Active"></asp:ListItem>
                                            <asp:ListItem Text="De-Active" Value="De-Active"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>

                               <%-- <asp:DropDownList runat="server" ID="">
                                    <asp:ListItem Text="Select Event status" Value=""></asp:ListItem>
                                    <asp:ListItem Text="Active" Value="Active"></asp:ListItem>
                                    <asp:ListItem Text="De-Active" Value="De-Active"></asp:ListItem>
                                </asp:DropDownList>--%>

                                <div class="row">
                                    <div class="input-field col s6">
                                        <asp:TextBox ID="textcity" class="validate" runat="server" placeholder="City" Font-Bold="True"></asp:TextBox>
                                    </div>
                                    <div class="input-field col s6">
                                        <asp:TextBox ID="textcountry" class="validate" runat="server" placeholder="Country" Font-Bold="True"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="input-field col s6">
                                        <asp:TextBox ID="txtevent_topic" class="validate" runat="server" placeholder="Event Topic" Font-Bold="True"></asp:TextBox>
                                    </div>
                                    <div class="input-field col s6">
                                        <asp:TextBox ID="txteventlink" class="validate" runat="server" placeholder="Event Link" Font-Bold="True"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="input-field col s6">
                                        <asp:Label runat="server" Text="Start Time:"></asp:Label>
                                        <asp:TextBox ID="texttime" class="validate" runat="server" placeholder="Time" TextMode="Time" ForeColor="Silver" Font-Bold="True"></asp:TextBox>
                                    </div>
                                    <div class="input-field col s6">
                                        <asp:Label runat="server" Text="End Time:"></asp:Label>
                                        <asp:TextBox ID="txtendtime" class="validate" runat="server" placeholder="End Time" TextMode="Time" Font-Bold="True"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="file-field input-field">
                                    <div class="btn admin-upload-btn">

                                        <span>File</span>
                                        <asp:FileUpload ID="FileUpload3" runat="server" />
                                    </div>
                                    <div class="file-path-wrapper">
                                        <input class="file-path validate" type="text"
                                            placeholder="Upload Event Banner Image">
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="input-field col s12">
                                        <div class="waves-effect waves-light btn-large waves-input-wrapper">
                                            <!--<input
                                            type="submit" class="waves-button-input"></div>-->
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
