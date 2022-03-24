<%@ Page Title="" Language="C#" MasterPageFile="~/Trainer/Teacher.Master" AutoEventWireup="true" CodeBehind="Teacher_Default.aspx.cs" Inherits="LMS.Teacher_Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<form id="form1" runat="server">
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
                <h2>Trainer Dashboard</h2>
                
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
                                <h5>Learners</h5>
                                <h4>672</h4>
                                <a href="admin_all_students.aspx">View more</a>
                            </div>
                        </li>
                       <!-- <li>
                            <div class="dash-book dash-b-3">
                                <h5>Trainers</h5>
                                <h4>689</h4>
                                <a href="admin_all_teachers.aspx">View more</a>
                            </div>
                        </li>-->
                        <li>
                            <div class="dash-book dash-b-3">
                                <h5>Attendance</h5>
                                <h4>3/5</h4>
                                <a href="admin_all_teachers.aspx">View more</a>
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

            <!--== User Details ==-->
            <div class="sb2-2-3">
                <div class="row">
                    <div class="col-md-12">
                        <div class="box-inn-sp">
                            <div class="inn-title">
                                <h4>Learner Details</h4>
                                
                            </div>
                            <div class="tab-inn">
                                <div class="table-responsive table-desi">
                            
                        <div class="table table-hover">
                     <asp:GridView ID="GridView1" runat="server" class="table table-hover" AutoGenerateColumns="false">
                         <Columns>
                             <asp:ImageField DataImageUrlField="l_pimage" HeaderText="Profile Image"></asp:ImageField>
                             <asp:BoundField DataField="learner_id" HeaderText="Learner Id" />
                             <asp:BoundField DataField="f_name" HeaderText="First Name" />
                             <asp:BoundField DataField="l_name" HeaderText="Last Name" />
                             <asp:BoundField DataField="email_id" HeaderText="Email Id" />
                             <%--<asp:BoundField DataField="password" HeaderText="Password" />--%>
                             <asp:BoundField DataField="phone_no" HeaderText="Phone No." />
                             <asp:BoundField DataField="city" HeaderText="City" />
                             <asp:BoundField DataField="country" HeaderText="Country" />
                            <asp:TemplateField>
                                 <ItemTemplate>
                                     <asp:HyperLink ID="edit" runat="server"  class="ad-st-view" NavigateUrl='admin_student_details'>EDIT</asp:HyperLink>
                                 </ItemTemplate>
                             </asp:TemplateField>
                         </Columns>
                     </asp:GridView>
                                  <!--  <table class="table table-hover">
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
                                    </table>-->
                            </div>
                                
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
             <!--== Trainer Details ==-->
        <!--    <div class="sb2-2-3">
                <div class="row">
                    <div class="col-md-12">
                        <div class="box-inn-sp">
                            <div class="inn-title">
                                <h4>Trainer Details</h4>
                                <p>All about Trainer like name, learner id, phone, email, country, city and more</p>
                            </div>
                            <div class="tab-inn">
                                <div class="table-responsive table-desi">
                                      
                        <div class="table table-hover">
                     <asp:GridView ID="GridView2" runat="server" class="table table-hover" AutoGenerateColumns="false">
                         <Columns>
                             <asp:ImageField DataImageUrlField="t_pimage" HeaderText="Profile Image"></asp:ImageField>
                             <asp:BoundField DataField="t_id" HeaderText="Trainer Id"  />
                             <asp:BoundField DataField="f_name" HeaderText="First Name" />
                             <asp:BoundField DataField="l_name" HeaderText="Last Name" />
                             <asp:BoundField DataField="email_id" HeaderText="Email Id" />
                             <asp:BoundField DataField="password" HeaderText="Password" />
                             <asp:BoundField DataField="phone_no" HeaderText="Phone No." />
                             <asp:BoundField DataField="city" HeaderText="City" />
                             <asp:BoundField DataField="country" HeaderText="Country" />
                             <asp:TemplateField>
                                 <ItemTemplate>
                                     <asp:HyperLink ID="edit" runat="server"  class="ad-st-view" NavigateUrl='admin_exam_details'>Edit</asp:HyperLink>
                                 </ItemTemplate>
                             </asp:TemplateField>
                         </Columns>
                     </asp:GridView>
                                   <!-- <table class="table table-hover">
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
            </div>-->
               <!--== Exams Details ==-->
           <div class="sb2-2-3">
                <div class="row">
                 
                    <div class="col-md-12">
                        <div class="box-inn-sp">
                            <div class="inn-title">
                                <h4>Exam Time Tables</h4>                                
                            </div>
                            <div class="tab-inn">
                                <div class="table-responsive table-desi">
                                             
                        <div class="table table-hover">
                           <asp:GridView ID="GridView3" runat="server" class="table table-hover" AutoGenerateColumns="false" CellPading="10" EditRowStyle-HorizontalAlign="Center" >
                        
                                <Columns>
                                  
                                      <asp:TemplateField HeaderText="EXAM ID">
                                        <ItemTemplate>
                                            <asp:Label runat="server" Text='<%# Eval("exam_id") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="EXAM NAME">
                                        <ItemTemplate>
                                            <asp:Label ID="e_name" runat="server" Text='<%# Eval("e_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="EXAM DATE">
                                        <ItemTemplate>
                                            <asp:Label ID="e_date" runat="server" Text='<%# Eval("e_date") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="START TIME">
                                        <ItemTemplate>
                                            <asp:Label ID="start_time" runat="server" Text='<%# Eval("start_time") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="END TIME">
                                        <ItemTemplate>
                                            <asp:Label ID="e_duration" runat="server" Text='<%# Eval("end_time") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="COURSE">
                                        <ItemTemplate>
                                            <asp:Label ID="e_course" runat="server" Text='<%# Eval("e_course") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                        <asp:HyperLink ID="edit" runat="server"  class="ad-st-view">Edit</asp:HyperLink>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                </asp:GridView>
                            </div>
                                
                                <!--   <table class="table table-hover">
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
                                    </table>-->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </div>
    </form>
</asp:Content>
