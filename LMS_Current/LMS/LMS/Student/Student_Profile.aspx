<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Site1.Master" AutoEventWireup="true" CodeBehind="Student_Profile.aspx.cs" Inherits="LMS.Student.Student_Profile" %>
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
<asp:DataList runat="server" ID="datalist1">
          <ItemTemplate>
            <div class="col-md-3">
                <div class="pro-user">
                    <img src="<%#Eval("l_pimage") %>" alt="user" class="learnerprofilepic">
                </div>
                <div class="pro-user-bio">
                    <ul>
                        <li>
                            <h4><%#Eval("f_name") %> <%#Eval("l_name") %></h4>
                        </li>
                        <li>Student Id: <%#Eval("learner_id") %></li>
                        <%--<li><a href="#!"><i class="fa fa-facebook"></i> Facebook: my sample</a></li>
                        <li><a href="#!"><i class="fa fa-google-plus"></i> Google: my sample</a></li>
                        <li><a href="#!"><i class="fa fa-twitter"></i> Twitter: my sample</a></li>--%>
                    </ul>
                </div>
            </div>
            
            <div class="col-md-9">
                <div class="udb">

                    <div class="udb-sec udb-prof">
                        <h4><img src="../fonts/images/icon/db1.png" alt="" /> My Profile</h4>                        
                        <div class="sdb-tabl-com sdb-pro-table">
                            <table class="responsive-table bordered">
                                <tbody>
                                    <tr>
                                        <td>Student Name</td>
                                        <td>:</td>
                                        <td><%#Eval("f_name") %> <%#Eval("l_name") %></td>
                                    </tr>
                                    <tr>
                                        <td>Student Id</td>
                                        <td>:</td>
                                        <td><%#Eval("learner_id") %></td>
                                    </tr>
                                    <tr>
                                        <td>Eamil</td>
                                        <td>:</td>
                                        <td><%#Eval("email_id") %></td>
                                    </tr>
                                    <tr>
                                        <td>Phone</td>
                                        <td>:</td>
                                        <td><%#Eval("phone_no") %></td>
                                    </tr>
                                    <tr>
                                        <td>Date of birth</td>
                                        <td>:</td>
                                        <td><%#Eval("date") %></td>
                                    </tr>
                                    <tr>
                                        <td>City</td>
                                        <td>:</td>
                                        <td><%#Eval("city") %></td>
                                    </tr>
                                    <tr>
                                        <td>Status</td>
                                        <td>:</td>
                                        <td><span class="db-done"><%#Eval("l_status") %></span> </td>
                                    </tr>
                                </tbody>
                            </table>
                            <div class="sdb-bot-edit">                                
                                <a href="#" class="waves-effect waves-light btn-large sdb-btn sdb-btn-edit"><i class="fa fa-pencil"></i> Edit my profile</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        
          </ItemTemplate>
      </asp:DataList>    
          </div>
    </div>
               
</section>
<!--SECTION END-->

</asp:Content>
