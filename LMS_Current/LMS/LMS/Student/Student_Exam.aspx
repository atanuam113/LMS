<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Site1.Master" AutoEventWireup="true" CodeBehind="Student_Exam.aspx.cs" Inherits="LMS.Student.Student_Exam" %>
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
                    <div class="udb-sec udb-time">
                        <h4><img src="../fonts/images/icon/db5.png" alt="" /> Exam Details</h4>                        
                        <div class="tour_head1 udb-time-line days">
                            <ul>
                                <asp:DataList runat="server" ID="ExamTime">
                                    <ItemTemplate>
                                        <li class="l-info-pack-plac"> <i class="fa fa-clock-o" aria-hidden="true"></i>
                                    <div class="sdb-cl-tim">
                                        <div class="sdb-cl-day">
                                            <h5>Exam <%#Eval("id") %></h5>
                                            <span>Start date: <%#Eval("e_date", "{0:d}") %></span>
                                        </div>
                                        <div class="sdb-cl-class">
                                            <ul>
                                                <li>
                                                    <div class="sdb-cl-class-tim tooltipped" data-position="top" data-delay="50" data-tooltip="Exam timing">
                                                        <span><%#Eval("start_time") %></span>
                                                        <span><%#Eval("end_time") %></span>
                                                    </div>
                                                    <div class="sdb-cl-class-name tooltipped" data-position="top" data-delay="50" data-tooltip="Exam name and status">
                                                        <h5><%#Eval("e_name") %> <a href="<%#Eval("e_link") %>"><span style="font-size:30px">Start Exam</span></a></h5>
                                                        <span class="sdn-hall-na"><span class="pro-user-act"><%#Eval("e_status") %></span></span>
                                                    </div>
                                                </li>
                                               <%-- <li>
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
                                                </li>--%>
                                            </ul>
                                        </div>
                                    </div>
                                </li>
                                    </ItemTemplate>
                                </asp:DataList>                                
                                
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
