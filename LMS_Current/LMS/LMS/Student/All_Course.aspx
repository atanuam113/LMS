<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Site1.Master" AutoEventWireup="true" CodeBehind="All_Course.aspx.cs" Inherits="LMS.Student.All_Course" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!--SECTION ALL COURSE START-->
    <section class="pop-cour">
        <div class="container com-sp pad-bot-70">
            <div class="row">
                <div class="con-title">
                    <h2>All <span>Courses</span></h2>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div>
                        <asp:DataList runat="server" ID ="allcourse">
                            <ItemTemplate>
                        <div class="home-top-cour">
                            <!--POPULAR COURSES IMAGE-->
                            <div class="col-md-3">
                                <img src="<%#Eval("CourseBanner") %>" alt="">
                            </div>
                            <!--POPULAR COURSES: CONTENT-->
                            <div class="col-md-9 home-top-cour-desc">
                                <a href="course_details.aspx">
                                    <h3><%#Eval("Course_Name") %></h3>
                                </a>
                                <h4>Class Teacher is <%#Eval("Course_Trainer") %></h4>
                                <p>Classes will start from <%#Eval("Course_Start_Date") %></p>
                                <%--<span class="home-top-cour-rat">4.2</span>--%>
                                <div class="hom-list-share">
                                    <ul>
                                        <li><a href="course_details.aspx"><i class="fa fa-bar-chart" aria-hidden="true"></i>Book Now</a> </li>


                                    </ul>
                                </div>
                            </div>
                        </div>                       
                    </ItemTemplate>
                            </asp:DataList>
                    </div>
                </div>
                <%--<div class="col-md-6">
                    <div>
                        <!--POPULAR COURSES-->
                        <div class="home-top-cour">
                            <!--POPULAR COURSES IMAGE-->
                            <div class="col-md-3">
                                <img src="../fonts/images/course/sm-5.jpg" alt="">
                            </div>
                            <!--POPULAR COURSES: CONTENT-->
                            <div class="col-md-9 home-top-cour-desc">
                                <a href="#">
                                    <h3>Fashion Technology</h3>
                                </a>
                                <h4>Technology / Trends / Fashion</h4>
                                <p>Classes started from coming friday(21 jun 2023)</p>
                                <span class="home-top-cour-rat">4.2</span>
                                <div class="hom-list-share">
                                    <ul>
                                        <li><a href="#"><i class="fa fa-bar-chart" aria-hidden="true"></i>Book Now</a> </li>


                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!--POPULAR COURSES-->
                        <div class="home-top-cour">
                            <!--POPULAR COURSES IMAGE-->
                            <div class="col-md-3">
                                <img src="../fonts/images/course/sm-6.jpg" alt="">
                            </div>
                            <!--POPULAR COURSES: CONTENT-->
                            <div class="col-md-9 home-top-cour-desc">
                                <a href="#">
                                    <h3>Agriculture Courses</h3>
                                </a>
                                <h4>Technology / Space / Aerospace</h4>
                                <p>Classes started from coming friday(21 jun 2023)</p>
                                <span class="home-top-cour-rat">4.2</span>
                                <div class="hom-list-share">
                                    <ul>
                                        <li><a href="#"><i class="fa fa-bar-chart" aria-hidden="true"></i>Book Now</a> </li>


                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!--POPULAR COURSES-->
                        <div class="home-top-cour">
                            <!--POPULAR COURSES IMAGE-->
                            <div class="col-md-3">
                                <img src="../fonts/images/course/sm-7.jpg" alt="">
                            </div>
                            <!--POPULAR COURSES: CONTENT-->
                            <div class="col-md-9 home-top-cour-desc">
                                <a href="#">
                                    <h3>Marine Engineering</h3>
                                </a>
                                <h4>Technology / Ocean / Marine</h4>
                                <p>Classes started from coming friday(21 jun 2023)</p>
                                <span class="home-top-cour-rat">4.2</span>
                                <div class="hom-list-share">
                                    <ul>
                                        <li><a href="#"><i class="fa fa-bar-chart" aria-hidden="true"></i>Book Now</a> </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!--POPULAR COURSES-->
                        <div class="home-top-cour">
                            <!--POPULAR COURSES IMAGE-->
                            <div class="col-md-3">
                                <img src="../fonts/images/course/sm-8.jpg" alt="">
                            </div>
                            <!--POPULAR COURSES: CONTENT-->
                            <div class="col-md-9 home-top-cour-desc">
                                <a href="#">
                                    <h3>Building, Construction Management</h3>
                                </a>
                                <h4>Technology / Construction / Building</h4>
                                <p>Classes started from coming friday(21 jun 2023)</p>
                                <span class="home-top-cour-rat">4.2</span>
                                <div class="hom-list-share">
                                    <ul>
                                        <li><a href="#"><i class="fa fa-bar-chart" aria-hidden="true"></i>Book Now</a> </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>--%>
            </div>
        </div>
    </section>

    <!-- SECTION END -->


</asp:Content>
