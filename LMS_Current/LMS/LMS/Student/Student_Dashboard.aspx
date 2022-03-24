﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Site1.Master" AutoEventWireup="true" CodeBehind="Student_Dashboard.aspx.cs" Inherits="LMS.Student.Student_Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!--SECTION START-->
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
                    <%--<li><a href="#">Entry</a></li>--%>
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

                    <div class="udb-sec udb-prof">
                        <h4><img src="../fonts/images/icon/db1.png" alt="" /> My Profile</h4>
                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed
                            to using 'Content here, content here', making it look like readable English.</p>
                    </div>
                    <div class="udb-sec udb-cour">
                        <h4><img src="../fonts/images/icon/db2.png" alt="" /> Booking Courses</h4>
                        <p>Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text.The point of using Lorem Ipsummaking it look like readable English.</p>
                        <div class="sdb-cours">
                            <ul>
                                <li>
                                    <a href="#">
                                        <div class="list-mig-like-com com-mar-bot-30">
                                            <div class="list-mig-lc-img"> <img src="../fonts/images/course/3.jpg" alt=""> <span class="home-list-pop-rat list-mi-pr">Duration:150 Days</span> </div>
                                            <div class="list-mig-lc-con">
                                                <h5>Master of Science</h5>
                                                
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <div class="list-mig-like-com com-mar-bot-30">
                                            <div class="list-mig-lc-img"> <img src="../fonts/images/course/4.jpg" alt=""> <span class="home-list-pop-rat list-mi-pr">Duration:60 Days</span> </div>
                                            <div class="list-mig-lc-con">
                                                <h5>Java Programming</h5>
                                                
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <div class="list-mig-like-com com-mar-bot-30">
                                            <div class="list-mig-lc-img"> <img src="../fonts/images/course/5.jpg" alt=""> <span class="home-list-pop-rat list-mi-pr">Duration:30 Days</span> </div>
                                            <div class="list-mig-lc-con">
                                                <h5>Aeronautical Engineering</h5>
                                                
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <div class="list-mig-like-com com-mar-bot-30">
                                            <div class="list-mig-lc-img"> <img src="../fonts/images/course/3.jpg" alt=""> <span class="home-list-pop-rat list-mi-pr">Duration:20 Days</span> </div>
                                            <div class="list-mig-lc-con">
                                                <h5>Master of Science</h5>
                                                
                                            </div>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="udb-sec udb-cour-stat">
                        <h4><img src="../fonts/images/icon/db3.png" alt="" /> Course Status</h4>
                        <p>Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text.The point of using Lorem Ipsummaking it look like readable English.</p>
                        <div class="pro-con-table">
                            <table class="bordered responsive-table">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Course Name</th>
                                        <th>Start Date</th>
                                        <th>End Date</th>
                                        <th>Status</th>                                        
                                    </tr>
                                </thead>

                                <tbody>
                                    <tr>
                                        <td>01</td>
                                        <td>Software Testing</td>
                                        <td>12May 2018</td>
                                        <td>18Aug 2018</td>
                                        <td><span class="pro-user-act">active</span></td>
                                        
                                        
                                    </tr>
                                    <tr>
                                        <td>02</td>
                                        <td>Mechanical Design</td>
                                        <td>05Jan 2019</td>
                                        <td>10Feb 2019</td>
                                        <td><span class="pro-user-act">active</span></td>
                                        
                                        
                                    </tr>
                                    <tr>
                                        <td>03</td>
                                        <td>Architecture & Planning</td>
                                        <td>21Jun 2020</td>
                                        <td>08Dec 2020</td>
                                        <td><span class="pro-user-act">active</span></td>
                                        
                                        
                                    </tr>
                                    <tr>
                                        <td>04</td>
                                        <td>Board Exam Training</td>
                                        <td>08Jun 2018</td>
                                        <td>21Sep 2018</td>
                                        <td><span class="pro-user-act pro-user-de-act">de-active</span></td>
                                        
                                        
                                    </tr>
                                    <tr>
                                        <td>05</td>
                                        <td>Yoga Training Classes</td>
                                        <td>16JFeb 2018</td>
                                        <td>26Mar 2018</td>
                                        <td><span class="pro-user-act pro-user-de-act">de-active</span></td>
                                        
                                        
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="udb-sec udb-time">
                        <h4><img src="../fonts/images/icon/db4.png" alt="" /> Class Time Line</h4>
                        <p>The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.</p>
                        <div class="tour_head1 udb-time-line days">
                            <ul>
                                <li class="l-info-pack-plac"> <i class="fa fa-clock-o" aria-hidden="true"></i>
                                    <div class="sdb-cl-tim">
                                        <div class="sdb-cl-day">
                                            <h5>Today</h5>
                                            <span>10Sep 2018</span>
                                        </div>
                                        <div class="sdb-cl-class">
                                            <ul>
                                                <li>
                                                    <div class="sdb-cl-class-tim tooltipped" data-position="top" data-delay="50" data-tooltip="Class timing">
                                                        <span>09:30 am</span>
                                                        <span>10:15 pm</span>
                                                    </div>
                                                    <div class="sdb-cl-class-name tooltipped" data-position="top" data-delay="50" data-tooltip="Class Details">
                                                        <h5>Software Testing <span>John Smith</span></h5>
                                                        <span class="sdn-hall-na">Apj Hall 112</span>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="sdb-cl-class-tim tooltipped" data-position="top" data-delay="50" data-tooltip="Class timing">
                                                        <span>10:15 am</span>
                                                        <span>11:00 am</span>
                                                    </div>
                                                    <div class="sdb-cl-class-name tooltipped" data-position="top" data-delay="50" data-tooltip="Class Details">
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
                                            <h5>Tuesday</h5>
                                            <span>11Sep 2018</span>
                                        </div>
                                        <div class="sdb-cl-class">
                                            <ul>
                                                <li>
                                                    <div class="sdb-cl-class-tim tooltipped" data-position="top" data-delay="50" data-tooltip="Class timing">
                                                        <span>9:30 am</span>
                                                        <span>10:15 am</span>
                                                    </div>
                                                    <div class="sdb-cl-class-name tooltipped" data-position="top" data-delay="50" data-tooltip="Class Details">
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
                                            <h5>Wednesday</h5>
                                            <span>12Sep 2018</span>
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
<!--SECTION END-->

</asp:Content>
