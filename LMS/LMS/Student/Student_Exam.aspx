﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Site1.Master" AutoEventWireup="true" CodeBehind="Student_Exam.aspx.cs" Inherits="LMS.Student.Student_Exam" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <!--SECTION STUDENT EXAM START-->
 <section>
    <div class="pro-cover" style="background-image:url(../fonts/images/pro-bg.jpg)">
    </div>
    <div class="pro-menu">
        <div class="container">
            <div class="col-md-9 col-md-offset-3">
                <ul>
                    <li><a href="Student_Dashboard.aspx" class="pro-act">My Dashboard</a></li>
                    <li><a href="Student_Profile.aspx">Profile</a></li>
                    <li><a href="Student_Course.aspx">Courses</a></li>
                    <li><a href="Student_Exam.aspx">Exams</a></li>
                    <li><a href="Student_Class_Time.aspx">Time Line</a></li>                    
                    <li><a href="#">Notifications</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="stu-db">
        <div class="container pg-inn">
            <div class="col-md-3">
                <div class="pro-user">
                    <img src="../fonts/images/dp.jpg" alt="user">
                </div>
                <div class="pro-user-bio">
                    <ul>
                        <li>
                            <h4>Atanu Mondal</h4>
                        </li>
                        <li>Student Id: ST17241</li>
                        <li><a href="#!"><i class="fa fa-facebook"></i> Facebook: my sample</a></li>
                        <li><a href="#!"><i class="fa fa-google-plus"></i> Google: my sample</a></li>
                        <li><a href="#!"><i class="fa fa-twitter"></i> Twitter: my sample</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md-9">
                <div class="udb">
                    <div class="udb-sec udb-time">
                        <h4><img src="../fonts/images/icon/db5.png" alt="" /> Exam Details</h4>
                        <p>The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.</p>
                        <div class="tour_head1 udb-time-line days">
                            <ul>
                                <li class="l-info-pack-plac"> <i class="fa fa-clock-o" aria-hidden="true"></i>
                                    <div class="sdb-cl-tim">
                                        <div class="sdb-cl-day">
                                            <h5>Exam 01</h5>
                                            <span>Start date: 10Sep 2018</span>
                                        </div>
                                        <div class="sdb-cl-class">
                                            <ul>
                                                <li>
                                                    <div class="sdb-cl-class-tim tooltipped" data-position="top" data-delay="50" data-tooltip="Exam timing">
                                                        <span>10:00 am</span>
                                                        <span>01:15 pm</span>
                                                    </div>
                                                    <div class="sdb-cl-class-name tooltipped" data-position="top" data-delay="50" data-tooltip="Exam name and status">
                                                        <h5>Software Testing <span>John Smith</span></h5>
                                                        <span class="sdn-hall-na">Apj Hall 112</span>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="sdb-cl-class-tim tooltipped" data-position="top" data-delay="50" data-tooltip="Exam timing">
                                                        <span>10:15 am</span>
                                                        <span>11:00 am</span>
                                                    </div>
                                                    <div class="sdb-cl-class-name tooltipped" data-position="top" data-delay="50" data-tooltip="Exam name and status">
                                                        <h5>Mechanical Design Classes <span>Stephanie</span></h5>
                                                        <span class="sdn-hall-na">Apj Hall 112</span>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="sdb-cl-class-tim">
                                                        <span>11:00 am</span>
                                                        <span>11:45 am</span>
                                                    </div>
                                                    <div class="sdb-cl-class-name sdb-cl-class-name-lev">
                                                        <h5>Board Exam Training Classes <span>Matthew</span></h5>
                                                        <span class="sdn-hall-na">Apj Hall 112</span>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </li>
                                <li class="l-info-pack-plac"> <i class="fa fa-clock-o" aria-hidden="true"></i>
                                    <div class="sdb-cl-tim">
                                        <div class="sdb-cl-day">
                                            <h5>Exam 02</h5>
                                            <span>Start date: 24Nov 2018</span>
                                        </div>
                                        <div class="sdb-cl-class">
                                            <ul>
                                                <li>
                                                    <div class="sdb-cl-class-tim tooltipped" data-position="top" data-delay="50" data-tooltip="Exam timing">
                                                        <span>9:30 am</span>
                                                        <span>10:15 am</span>
                                                    </div>
                                                    <div class="sdb-cl-class-name tooltipped" data-position="top" data-delay="50" data-tooltip="Exam name and status">
                                                        <h5>Agriculture <span>John Smith</span></h5>
                                                        <span class="sdn-hall-na">Apj Hall 112</span>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="sdb-cl-class-tim">
                                                        <span>10:15 am</span>
                                                        <span>11:00 am</span>
                                                    </div>
                                                    <div class="sdb-cl-class-name">
                                                        <h5>Google Product Training <span>Stephanie</span></h5>
                                                        <span class="sdn-hall-na">Apj Hall 112</span>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="sdb-cl-class-tim">
                                                        <span>11:00 am</span>
                                                        <span>11:45 am</span>
                                                    </div>
                                                    <div class="sdb-cl-class-name sdb-cl-class-name-lev">
                                                        <h5>Web Design & Development <span>Matthew</span></h5>
                                                        <span class="sdn-hall-na">Apj Hall 112</span>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </li>
                                <li class="l-info-pack-plac"> <i class="fa fa-clock-o" aria-hidden="true"></i>
                                    <div class="sdb-cl-tim">
                                        <div class="sdb-cl-day">
                                            <h5>Exam 03</h5>
                                            <span>Start date: 18Dec 2018</span>
                                        </div>
                                        <div class="sdb-cl-class">
                                            <ul>
                                                <li>
                                                    <div class="sdb-cl-class-tim">
                                                        <span>9:30 am</span>
                                                        <span>10:15 am</span>
                                                    </div>
                                                    <div class="sdb-cl-class-name">
                                                        <h5>Software Testing <span>John Smith</span></h5>
                                                        <span class="sdn-hall-na">Apj Hall 112</span>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="sdb-cl-class-tim">
                                                        <span>10:15 am</span>
                                                        <span>11:00 am</span>
                                                    </div>
                                                    <div class="sdb-cl-class-name">
                                                        <h5>Mechanical Design Classes <span>Stephanie</span></h5>
                                                        <span class="sdn-hall-na">Apj Hall 112</span>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="sdb-cl-class-tim">
                                                        <span>11:00 am</span>
                                                        <span>11:45 am</span>
                                                    </div>
                                                    <div class="sdb-cl-class-name sdb-cl-class-name-lev">
                                                        <h5>Board Exam Training Classes <span>Matthew</span></h5>
                                                        <span class="sdn-hall-na">Apj Hall 112</span>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </li>
                                <li class="l-info-pack-plac"> <i class="fa fa-clock-o" aria-hidden="true"></i>
                                    <h4><span>Holiday: </span> Thursday </h4>
                                    <p>After breakfast, proceed for tour of Dubai city. Visit Jumeirah Mosque, World Trade Centre, Palaces and Dubai Museum. Enjoy your overnight stay at the hotel.In the evening, enjoy a tasty dinner on the Dhow cruise.
                                        Later, head back to the hotel for a comfortable overnight stay.</p>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--SECTION STUDENT EXAM END-->

</asp:Content>
