﻿<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="admin_all_course.aspx.cs" Inherits="LMS.admin_all_course" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="sb2-2">
    <!--== breadcrumbs ==-->
    <div class="sb2-2-2">
        <ul>
            <li><a href="Default.aspx"><i class="fa fa-home" aria-hidden="true"></i> Home</a>
            </li>
            <li class="active-bre"><a href="#"> Dashboard</a>
            </li>
            <li class="page-back"><a href="Default.aspx"><i class="fa fa-backward" aria-hidden="true"></i> Back</a>
            </li>
        </ul>
    </div>

    <!--== User Details ==-->
    <div class="sb2-2-3">
        <div class="row">
            <div class="col-md-12">
                <div class="box-inn-sp">
                    <div class="inn-title">
                        <h4>Course Details</h4>                      
                    </div>
                    <div class="tab-inn">
                        <div class="table-responsive table-desi">
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>Image</th>
                                        <th>Course Name</th>
                                        <th>Category</th>
                                        <th>Durations</th>
                                        <th>Start Date</th>
                                        <th>End Date</th>
                                        <th>Total Seats</th>
                                        <th>Status</th>
                                        <th>View</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><span class="list-img"><img src="#" alt="none"></span>
                                        </td>
                                        <td><a href="admin_course_details.aspx"><span class="list-enq-name">Python</span><span class="list-enq-city">Illunois, United States</span></a>
                                        </td>
                                        <td>Engineering</td>
                                        <td>60 Days(420hrs)</td>
                                        <td>03 Jun 2018</td>
                                        <td>12 Aug 2018</td>
                                        <td>74</td>
                                        <td>
                                            <span class="label label-success">Active</span>
                                        </td>
                                        <td><a href="admin_course_details.aspx" class="ad-st-view">Edit</a></td>
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
