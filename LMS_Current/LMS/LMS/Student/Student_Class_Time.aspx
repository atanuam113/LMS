<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Site1.Master" AutoEventWireup="true" CodeBehind="Student_Class_Time.aspx.cs" Inherits="LMS.Student.Student_Class_Time" %>
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
                        <h4><img src="../fonts/images/icon/db4.png" alt="" /> Class Time Line</h4>                        
                        <div class="tour_head1 udb-time-line days">
                            <ul>
                                <asp:DataList runat="server" ID="ClassTime">
                                        <ItemTemplate>
                                            
                                    <li class="l-info-pack-plac"><i class="fa fa-clock-o" aria-hidden="true"></i>
                                        <div class="sdb-cl-tim">
                                            <div class="sdb-cl-day">
                                                <h5><%#Eval("CR_Day") %></h5>
                                                <span>Start date: <%#Eval("CR_Date", "{0:d}") %></span>
                                            </div>
                                            <div class="sdb-cl-class">
                                                <ul>
                                                    <li>
                                                        <div class="sdb-cl-class-tim tooltipped" data-position="top" data-delay="50" data-tooltip="Class timing">
                                                            <span><%#Eval("CR_Start_Time") %></span>
                                                            <span><%#Eval("CR_End_Time") %></span>
                                                        </div>
                                                        <div class="sdb-cl-class-name tooltipped" data-position="top" data-delay="50" data-tooltip="Class Details">
                                                            <h5><%#Eval("CR_Topic") %> <a href="<%#Eval("CR_ClassLink") %>"><span>JOIN CLASS</span></a></h5>
                                                            <span class="sdn-hall-na">Online mode</span>
                                                        </div>
                                                    </li>                                                    
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
<!--SECTION END-->

</asp:Content>
