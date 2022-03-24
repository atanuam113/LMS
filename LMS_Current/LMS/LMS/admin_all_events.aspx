<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="admin_all_events.aspx.cs" Inherits="LMS.admin_all_events" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="sb2-2">
        <!--== breadcrumbs ==-->
        <div class="sb2-2-2">
            <ul>
                <li><a href="index-2.html"><i class="fa fa-home" aria-hidden="true"></i>Home</a>
                </li>
                <li class="active-bre"><a href="#">Events</a>
                </li>
                <li class="page-back"><a href="#"><i class="fa fa-backward" aria-hidden="true"></i>Back</a>
                </li>
            </ul>
        </div>

        <!--== User Details ==-->
        <div class="sb2-2-3">
            <div class="row">
                <div class="col-md-12">
                    <div class="box-inn-sp">
                        <div class="inn-title">
                            <h4>All Events</h4>
                        </div>
                        <div class="tab-inn">
                            <div class="table-responsive table-desi">
                                <form id="form1" runat="server">
                                    <table class="table table-hover">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Image</th>
                                                <th>Event Name</th>
                                                <th>Date</th>
                                                <th>Location</th>
                                                <th>Status</th>
                                                <th>Edit</th>
                                            </tr>
                                        </thead>

                                        <asp:DataList runat="server" ID="datalist1">
                                            <ItemTemplate>
                                                <tbody>
                                                    <tr>
                                                        <td>1</td>
                                                        <td><span class="list-img">
                                                            <img src="<%#Eval("e_pimage") %>" alt=""></span></td>
                                                        <td><%#Eval("e_name") %></td>
                                                        <td><%#Eval("e_date") %></td>
                                                        <td><%#Eval("city") %></td>
                                                        <td>
                                                            <span class="label label-success">Active</span>
                                                        </td>
                                                        <td><a href="/admin_event_details" class="ad-st-view">Edit</a></td>
                                                    </tr>

                                                </tbody>
                                            </ItemTemplate>
                                        </asp:DataList>

                                    </table>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>