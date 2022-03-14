<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="admin_all_exam.aspx.cs" Inherits="LMS.admin_all_exam" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<div class="sb2-2">
    <!--== breadcrumbs ==-->
    <div class="sb2-2-2">
        <ul>
            <li><a href="index-2.html"><i class="fa fa-home" aria-hidden="true"></i> Home</a>
            </li>
            <li class="active-bre"><a href="#"> All Exams</a>
            </li>
            <li class="page-back"><a href="index-2.html"><i class="fa fa-backward" aria-hidden="true"></i> Back</a>
            </li>
        </ul>
    </div>

    <!--== User Details ==-->
    <div class="sb2-2-3">
        <div class="row">
            <div class="col-md-12">
                <div class="box-inn-sp">
                    <div class="inn-title">
                        <h4>Exams Time Table</h4>
                        <p>All about students like name, student id, phone, email, country, city and more</p>
                    </div>
                    <div class="tab-inn">
                        <div class="table-responsive table-desi">
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Exam Name</th>
                                        <th>Start Date</th>
                                        <th>Start Time</th>
                                        <th>Duration</th>
                                        <th>Edit</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>Semester 1</td>
                                        <td>28 May 2018</td>
                                        <td>10:00AM</td>
                                        <td>03:00</td>
                                        <td><a href="/admin_exam_details" class="ad-st-view">Edit</a></td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Exam 1</td>
                                        <td>14 June 2018</td>
                                        <td>01:00PM</td>
                                        <td>03:00</td>
                                        <td><a href="/admin_exam_details" class="ad-st-view">Edit</a></td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>Semester 1</td>
                                        <td>28 May 2018</td>
                                        <td>10:00AM</td>
                                        <td>03:00</td>
                                        <td><a href="/admin_exam_details" class="ad-st-view">Edit</a></td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td>Exam 1</td>
                                        <td>14 June 2018</td>
                                        <td>01:00PM</td>
                                        <td>03:00</td>
                                        <td><a href="/admin_exam_details" class="ad-st-view">Edit</a></td>
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <td>Semester 1</td>
                                        <td>28 May 2018</td>
                                        <td>10:00AM</td>
                                        <td>03:00</td>
                                        <td><a href="/admin_exam_details" class="ad-st-view">Edit</a></td>
                                    </tr>
                                    <tr>
                                        <td>6</td>
                                        <td>Exam 1</td>
                                        <td>14 June 2018</td>
                                        <td>01:00PM</td>
                                        <td>03:00</td>
                                        <td><a href="/admin_exam_details" class="ad-st-view">Edit</a></td>
                                    </tr>
                                    <tr>
                                        <td>7</td>
                                        <td>Semester 1</td>
                                        <td>28 May 2018</td>
                                        <td>10:00AM</td>
                                        <td>03:00</td>
                                        <td><a href="/admin_exam_details" class="ad-st-view">Edit</a></td>
                                    </tr>
                                    <tr>
                                        <td>8</td>
                                        <td>Exam 1</td>
                                        <td>14 June 2018</td>
                                        <td>01:00PM</td>
                                        <td>03:00</td>
                                        <td><a href="/admin_exam_details" class="ad-st-view">Edit</a></td>
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