﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Site1.Master" AutoEventWireup="true" CodeBehind="Student_Course.aspx.cs" Inherits="LMS.Student.Student_Course" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!--SECTION Student Course START-->
    <section>
        <div class="pro-cover" style="background-image: url(../fonts/images/pro-bg.jpg)">
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
                    <asp:DataList runat="server" ID="profile_details">
                        <ItemTemplate>
                            <div class="pro-user">
                                <img src="<%#Eval("l_pimage") %>" alt="user">
                            </div>
                            <div class="pro-user-bio">
                                <ul>
                                    <li>
                                        <h4><%#Eval("f_name") %> <%#Eval("l_name") %></h4>
                                    </li>
                                    <li>Student Id: <%#Eval("learner_id") %></li>
                                </ul>
                            </div>
                        </ItemTemplate>
                    </asp:DataList>
                </div>
                <div class="col-md-9">
                    <div class="udb">
                        <h4>
                            <img src="../fonts/images/icon/db2.png" alt="" />
                            Booking Courses</h4>
                        <div class="udb-sec udb-cour">
                            <div class="sdb-cours">
                                <ul>
                                    <asp:DataList runat="server" ID="std_course" RepeatColumns="2">
                                        <ItemTemplate>
                                            <li>
                                                <a href="#">
                                                    <div class="list-mig-like-com com-mar-bot-30">
                                                        <div class="list-mig-lc-img">
                                                            <img src="<%#Eval("CourseBanner") %>" alt="" class="student_crs_img">
                                                            <span class="home-list-pop-rat list-mi-pr">Trainer:<%#Eval("Course_Trainer") %></span>
                                                        </div>
                                                        <div class="list-mig-lc-con">
                                                            <h5><%#Eval("Course_Name") %></h5>
                                                        </div>
                                                    </div>
                                                </a>
                                            </li>
                                        </ItemTemplate>
                                    </asp:DataList>
                                    
                                </ul>
                            </div>
                        </div>
                        <div class="udb-sec udb-cour-stat">
                            <h4>
                                <img src="../fonts/images/icon/db3.png" alt="" />
                                Course Status</h4>
                            <div class="pro-con-table">
                                <table class="bordered responsive-table">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>Course Name</th>
                                            <th>Start Date</th>
                                            <th>Trainer Name</th>
                                            <th>Status</th>

                                        </tr>
                                    </thead>

                                    <tbody>
                                        <asp:DataList runat="server" ID="course_tbl">
                                            <ItemTemplate>
                                                <tr>
                                                    <td><%#Container.ItemIndex+1 %></td>
                                                    <td><%#Eval("Course_Name") %></td>
                                                    <td><%#Eval("Course_Start_Date", "{0:d}") %></td>
                                                    <td><%#Eval("Course_Trainer") %></td>
                                                    <td><span class="pro-user-act">active</span></td>
                                                </tr>
                                            </ItemTemplate>
                                        </asp:DataList>


                                    </tbody>
                                </table>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--SECTION Student Course END-->

</asp:Content>
