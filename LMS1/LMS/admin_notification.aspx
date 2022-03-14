<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="admin_notification.aspx.cs" Inherits="LMS.admin_notification" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<!--== BODY INNER CONTAINER ==-->
<div class="sb2-2">

    <!--== breadcrumbs ==-->
    <div class="sb2-2-2">
        <ul>
            <li><a href="index-2.html"><i class="fa fa-home" aria-hidden="true"></i> Home</a>
            </li>
            <li class="active-bre"><a href="#"> Notification</a>
            </li>
            <li class="page-back"><a href="../"><i class="fa fa-backward" aria-hidden="true"></i> Back</a>
            </li>
        </ul>
    </div>

    <!--== User Details ==-->
    <div class="sb2-2-3">
        <div class="row">
            <div class="col-md-12">
                <div class="box-inn-sp">
                    <div class="inn-title">
                        <h4>Notification Details</h4>                       
                    </div>
                    <div class="tab-inn">
                        <div class="table-responsive table-desi">
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>User</th>
                                        <th>First Name</th>
                                        <th>Last Name</th>                                        
                                        <th>Email</th>
                                        <th>User Name</th>                                        
                                        <th>Status</th>
                                        <th>View</th>
                                    </tr>
                                </thead>
                                <tbody>
                                   
                                    <tr>
                                        <td><span class="list-img"><img
                                                    src="#" alt=""></span>
                                        </td>
                                        <td><a href="#"><span class="list-enq-name">Atanu</span></a>
                                        </td>
                                        <td><a href="#"><span class="list-enq-name">Mondal</span></a>
                                        </td>                                        
                                        <td>atanu98@gmail.com</td>
                                        <td>atanu3298</td>
                                        <td>
                                            <span class="label label-danger">Deactivated</span>
                                        </td>
                                        <td><a href="#" class="ad-st-view">View</a></td>
                                    </tr>
                                                                                                          
                                </tbody>
                            </table>                           
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>


</asp:Content>
