<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LMS._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="sb2-2">
            <!--== breadcrumbs ==-->
            <div class="sb2-2-2">
                <ul>
                    <li><a href="index-2.html"><i class="fa fa-home" aria-hidden="true"></i> Home</a>
                    </li>
                    <li class="active-bre"><a href="#"> Dashboard</a>
                    </li>
                    <li class="page-back"><a href="../"><i class="fa fa-backward" aria-hidden="true"></i> Back</a>
                    </li>
                </ul>
            </div>


            <!--== DASHBOARD INFO ==-->
            <div class="sb2-2-1">
                <h2>Admin Dashboard</h2>
                <p>The .table class adds basic styling (light padding and only horizontal dividers) to a table:</p>
                <div class="db-2">
                    <ul>
                        <li>
                            <div class="dash-book dash-b-1">
                                <h5>Courses</h5>
                                <h4>948</h4>
                                <a href="#">View more</a>
                            </div>
                        </li>
                        <li>
                            <div class="dash-book dash-b-2">
                                <h5>Admission</h5>
                                <h4>672</h4>
                                <a href="#">View more</a>
                            </div>
                        </li>
                        <li>
                            <div class="dash-book dash-b-3">
                                <h5>Students</h5>
                                <h4>689</h4>
                                <a href="#">View more</a>
                            </div>
                        </li>
                        <li>
                            <div class="dash-book dash-b-4">
                                <h5>Enquiry</h5>
                                <h4>24</h4>
                                <a href="#">View more</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>

            <!--== User Details ==-->
            <div class="sb2-2-3">
                <div class="row">
                    <div class="col-md-12">
                        <div class="box-inn-sp">
                            <div class="inn-title">
                                <h4>Student Details</h4>
                                <p>All about students like name, student id, phone, email, country, city and more</p>
                            </div>
                            <div class="tab-inn">
                                <div class="table-responsive table-desi">
                                    <table class="table table-hover">
                                        <thead>
                                            <tr>
                                                <th>User</th>
                                                <th>Name</th>
                                                <th>Phone</th>
                                                <th>Email</th>
                                                <th>Country</th>
                                                <th>Id</th>
                                                <th>Date of birth</th>
                                                <th>Status</th>
                                                <th>View</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td><span class="list-img"><img src="#" alt=""></span>
                                                </td>
                                                <td><a href="/admin_student_details"><span class="list-enq-name">Marsha Hogan</span><span class="list-enq-city">Illunois, United States</span></a>
                                                </td>
                                                <td>+01 3214 6522</td>
                                                <td>chadengle@dummy.com</td>
                                                <td>united states</td>
                                                <td>ST17241</td>
                                                <td>03 Jun 1990</td>
                                                <td>
                                                    <span class="label label-success">Active</span>
                                                </td>
                                                <td><a href="/admin_student_details" class="ad-st-view">View</a></td>
                                            </tr>
                                            <tr>
                                                <td><span class="list-img"><img src="#" alt=""></span>
                                                </td>
                                                <td><a href="/admin_student_details"><span class="list-enq-name">Lucas Caden</span><span class="list-enq-city">Illunois, United States</span></a>
                                                </td>
                                                <td>+01 8574 6854</td>
                                                <td>lucas@gmail.com</td>
                                                <td>Illinois</td>
                                                <td>ST10231</td>
                                                <td>16 Feb 1987</td>
                                                <td>
                                                    <span class="label label-success">Active</span>
                                                </td>
                                                <td><a href="/admin_student_details" class="ad-st-view">View</a></td>
                                            </tr>
                                            <tr>
                                                <td><span class="list-img"><img src="#" alt=""></span>
                                                </td>
                                                <td><a href="/admin_student_details"><span class="list-enq-name">Ethan Oliver</span><span class="list-enq-city">Illunois, United States</span></a>
                                                </td>
                                                <td>+01 8574 6854</td>
                                                <td>Ethan@gmail.com</td>
                                                <td>Illinois</td>
                                                <td>ST32168</td>
                                                <td>21 Jun 1992</td>
                                                <td>
                                                    <span class="label label-success">Active</span>
                                                </td>
                                                <td><a href="/admin_student_details" class="ad-st-view">View</a></td>
                                            </tr>
                                            <tr>
                                                <td><span class="list-img"><img src="#" alt=""></span>
                                                </td>
                                                <td><a href="/admin_student_details"><span class="list-enq-name">Ethan Oliver</span><span class="list-enq-city">Illunois, United States</span></a>
                                                </td>
                                                <td>+01 8574 6854</td>
                                                <td>Ethan@gmail.com</td>
                                                <td>Illinois</td>
                                                <td>ST32168</td>
                                                <td>21 Jun 1992</td>
                                                <td>
                                                    <span class="label label-success">Active</span>
                                                </td>
                                                <td><a href="/admin_student_details" class="ad-st-view">View</a></td>
                                            </tr>
                                            <tr>
                                                <td><span class="list-img"><img src="#" alt=""></span>
                                                </td>
                                                <td><a href="/admin_student_details"><span class="list-enq-name">Marsha Hogan</span><span class="list-enq-city">Illunois, United States</span></a>
                                                </td>
                                                <td>+01 3214 6522</td>
                                                <td>chadengle@dummy.com</td>
                                                <td>united states</td>
                                                <td>ST17241</td>
                                                <td>03 Jun 1990</td>
                                                <td>
                                                    <span class="label label-success">Active</span>
                                                </td>
                                                <td><a href="/admin_student_details" class="ad-st-view">View</a></td>
                                            </tr>
                                            <tr>
                                                <td><span class="list-img"><img src="#" alt=""></span>
                                                </td>
                                                <td><a href="/admin_student_details"><span class="list-enq-name">Lucas Caden</span><span class="list-enq-city">Illunois, United States</span></a>
                                                </td>
                                                <td>+01 8574 6854</td>
                                                <td>lucas@gmail.com</td>
                                                <td>Illinois</td>
                                                <td>ST10231</td>
                                                <td>16 Feb 1987</td>
                                                <td>
                                                    <span class="label label-success">Active</span>
                                                </td>
                                                <td><a href="/admin_student_details" class="ad-st-view">View</a></td>
                                            </tr>
                                            <tr>
                                                <td><span class="list-img"><img src="#" alt=""></span>
                                                </td>
                                                <td><a href="/admin_student_details"><span class="list-enq-name">Ethan Oliver</span><span class="list-enq-city">Illunois, United States</span></a>
                                                </td>
                                                <td>+01 8574 6854</td>
                                                <td>Ethan@gmail.com</td>
                                                <td>Illinois</td>
                                                <td>ST32168</td>
                                                <td>21 Jun 1992</td>
                                                <td>
                                                    <span class="label label-success">Active</span>
                                                </td>
                                                <td><a href="/admin_student_details" class="ad-st-view">View</a></td>
                                            </tr>
                                            <tr>
                                                <td><span class="list-img"><img src="#" alt=""></span>
                                                </td>
                                                <td><a href="/admin_student_details"><span class="list-enq-name">Ethan Oliver</span><span class="list-enq-city">Illunois, United States</span></a>
                                                </td>
                                                <td>+01 8574 6854</td>
                                                <td>Ethan@gmail.com</td>
                                                <td>Illinois</td>
                                                <td>ST32168</td>
                                                <td>21 Jun 1992</td>
                                                <td>
                                                    <span class="label label-success">Active</span>
                                                </td>
                                                <td><a href="/admin_student_details" class="ad-st-view">View</a></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <!--== User Details ==-->
            <div class="sb2-2-3">
                <div class="row">
                    <div class="col-md-12">
                        <div class="box-inn-sp">
                            <div class="inn-title">
                                <h4>Course Details</h4>
                                <p>All about courses, program structure, fees, best course lists (ranking), syllabus, teaching techniques and other details.</p>
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
                                                <td><span class="list-img"><img src="#" alt=""></span>
                                                </td>
                                                <td><a href="/admin_course_details"><span class="list-enq-name">Aerospace Engineering</span><span class="list-enq-city">Illunois, United States</span></a>
                                                </td>
                                                <td>Engineering</td>
                                                <td>60 Days(420hrs)</td>
                                                <td>03 Jun 2018</td>
                                                <td>12 Aug 2018</td>
                                                <td>74</td>
                                                <td>
                                                    <span class="label label-success">Active</span>
                                                </td>
                                                <td><a href="/admin_course_details" class="ad-st-view">View</a></td>
                                            </tr>                                           
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="sb2-2-3">
                <div class="row">
                    <!--== Listing Enquiry ==-->
                    <div class="col-md-12">
                        <div class="box-inn-sp">
                            <div class="inn-title">
                                <h4>Exam Time Tables</h4>
                                <p>Education is about teaching, learning skills and knowledge.</p>
                            </div>
                            <div class="tab-inn">
                                <div class="table-responsive table-desi">
                                    <table class="table table-hover">
                                        <thead>
                                            <tr>
                                                <th>Select</th>
                                                <th>Degree</th>
                                                <th>Exam Name</th>
                                                <th>Start Date</th>
                                                <th>End Date</th>
                                                <th>Timing</th>
                                                <th>View</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <input type="checkbox" class="filled-in" id="filled-in-box-1" checked="checked" />
                                                    <label for="filled-in-box-1"></label>
                                                </td>
                                                <td>MBA</td>
                                                <td><span class="list-enq-name">Civil engineering</span><span class="list-enq-city">Illunois, United States</span>
                                                </td>
                                                <td>10:00am</td>
                                                <td>01:00pm</td>
                                                <td>03:00Hrs</td>
                                                <td>
                                                    <a href="/admin_enquiry_details" class="ad-st-view">View</a>
                                                </td>
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
