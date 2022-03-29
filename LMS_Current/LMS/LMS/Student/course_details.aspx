<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Site1.Master" AutoEventWireup="true" CodeBehind="course_details.aspx.cs" Inherits="LMS.Student.course_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!--SECTION COURSE DETAILS START-->
    <section>
        <form runat="server" id="crs_details">        
        <div class="container com-sp pad-bot-70 pg-inn">
            <div class="row">
                <div class="cor">                    
                    <div class="col-md-12">
                        <asp:Label runat="server" ID="crs_msg" class="error_msg"></asp:Label>
                        <div class="cor-con-mid">
                            <asp:DataList runat="server" ID="coursedetails">
                                <ItemTemplate>
                                    <div class="cor-mid-img">
                                        <img src="<%#Eval("CourseBanner") %>" alt="" class="coursedetailimg">
                                    </div>
                                    <div class="cor-p1">
                                        <h2><%#Eval("Course_Name") %></h2>
                                        
                                        <%--<div class="share-btn">
                                            <ul>
                                                <li><a href="#"><i class="fa fa-facebook fb1"></i>Share On Facebook</a>
                                                </li>
                                                <li><a href="#"><i class="fa fa-twitter tw1"></i>Share On Twitter</a>
                                                </li>
                                                <li><a href="#"><i class="fa fa-google-plus gp1"></i>Share On Google Plus</a>
                                                </li>
                                            </ul>
                                        </div>--%>
                                    </div>
                                    <div class="cor-p4">
                                        <h3>Course Details:</h3>
                                        <p><%#Eval("Course_Desc") %></p>

                                    </div>

                                </ItemTemplate>
                            </asp:DataList>

                            <div class="cor-p5">
                                <h3>Course Syllabus</h3>                                                                     
                                <div class="table table-hover">
                                        <asp:GridView ID="GridView1" runat="server" class="table table-hover" AutoGenerateColumns="false">
                                            <HeaderStyle Font-Bold="true" Font-Size="Medium" BackColor="#9999FF" />
                                            <Columns>                                                
                                                <asp:BoundField DataField="CModule_ID" HeaderText="Course ModuleNo" />                                                
                                                <asp:BoundField DataField="CS_Week" HeaderText="Week" />
                                                <asp:BoundField DataField="CS_Module_Topic" HeaderText="Module Topic" />
                                                <asp:BoundField DataField="CS_Desc" HeaderText="Description" />                                          
                                            </Columns>
                                        </asp:GridView>
                                    </div>
                                
                            </div><br />
                            <asp:Button runat="server" ID="crs_register" OnClick="crs_register_Click" Text="Apply" class="waves-effect waves-light btn-large sdb-btn " />
                            <%--<div class="cor-p4">
                                <h3>A typical weekly timetable:</h3>
                                <p>It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
                                <ul class="collapsible" data-collapsible="accordion">
                                    <li>
                                        <div class="collapsible-header active">1st year</div>
                                        <div class="collapsible-body cor-tim-tab">
                                            <h4>First Year Courses</h4>
                                            <ul>
                                                <li>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour</li>
                                                <li>Anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary</li>
                                                <li>Combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem</li>
                                                <li>Nullam tincidunt urna non porttitor luctus. Suspendisse sem urna, auctor ac commodo eu, bibendum sed nulla.</li>
                                            </ul>
                                            <h4>Assessment</h4>
                                            <ul>
                                                <li>Three written papers form the First University Examination, together with a submitted portfolio of two exam essays of 2,000 words for Introduction to English Language and Literature.</li>
                                                <li>All exams must be passed, but marks do not count towards the final degree.</li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="collapsible-header">2st year</div>
                                        <div class="collapsible-body cor-tim-tab">
                                            <h4>Second Year Courses</h4>
                                            <ul>
                                                <li>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour</li>
                                                <li>Anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary</li>
                                                <li>Combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem</li>
                                            </ul>
                                            <h4>Assessment</h4>
                                            <ul>
                                                <li>Three written papers form the First University Examination, together with a submitted portfolio of two exam essays of 2,000 words for Introduction to English Language and Literature.</li>
                                                <li>All exams must be passed, but marks do not count towards the final degree.</li>
                                                <li>Combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem</li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="collapsible-header">3st year</div>
                                        <div class="collapsible-body cor-tim-tab">
                                            <h4>Third Year Courses</h4>
                                            <ul>
                                                <li>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour</li>
                                                <li>Anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary</li>
                                            </ul>
                                            <h4>Assessment</h4>
                                            <ul>
                                                <li>Three written papers form the First University Examination, together with a submitted portfolio of two exam essays of 2,000 words for Introduction to English Language and Literature.</li>
                                                <li>All exams must be passed, but marks do not count towards the final degree.</li>
                                            </ul>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="cor-p6">
                                <h3>Student Reviews</h3>
                                <div class="cor-p6-revi">
                                    <div class="cor-p6-revi-left">
                                        <img src="{% static 'Edu_Master/images/4.jpg' %}" alt="">
                                    </div>
                                    <div class="cor-p6-revi-right">
                                        <h4>Rachel Britain</h4>
                                        <span>Date: 12may, 2017</span>
                                        <p>Mauris elementum et libero ac pharetra. Proin tristique dapibus tellus, lacinia blandit mi tincidunt at. Vivamus vitae interdum felis. Pellentesque congue mollis erat in imperdiet.</p>
                                    </div>
                                </div>
                                <div class="cor-p6-revi">
                                    <div class="cor-p6-revi-left">
                                        <img src="{% static 'Edu_Master/images/4.jpg' %}" alt="">
                                    </div>
                                    <div class="cor-p6-revi-right">
                                        <h4>Rachel Britain</h4>
                                        <span>Date: 12may, 2017</span>
                                        <p>Mauris elementum et libero ac pharetra. Proin tristique dapibus tellus, lacinia blandit mi tincidunt at. Vivamus vitae interdum felis. Pellentesque congue mollis erat in imperdiet.</p>
                                    </div>
                                </div>
                                <div class="cor-p6-revi">
                                    <div class="cor-p6-revi-left">
                                        <img src="{% static 'Edu_Master/images/4.jpg' %}" alt="">
                                    </div>
                                    <div class="cor-p6-revi-right">
                                        <h4>Rachel Britain</h4>
                                        <span>Date: 12may, 2017</span>
                                        <p>Mauris elementum et libero ac pharetra. Proin tristique dapibus tellus, lacinia blandit mi tincidunt at. Vivamus vitae interdum felis. Pellentesque congue mollis erat in imperdiet.</p>
                                    </div>
                                </div>
                                <div class="cor-p6-revi">
                                    <div class="cor-p6-revi-left">
                                        <img src="{% static 'Edu_Master/images/4.jpg' %}" alt="">
                                    </div>
                                    <div class="cor-p6-revi-right">
                                        <h4>Rachel Britain</h4>
                                        <span>Date: 12may, 2017</span>
                                        <p>Mauris elementum et libero ac pharetra. Proin tristique dapibus tellus, lacinia blandit mi tincidunt at. Vivamus vitae interdum felis. Pellentesque congue mollis erat in imperdiet.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="cor-p6">
                                <h3>Write Reviews</h3>
                                <div class="cor-p7-revi">
                                    <form class="col s12">
                                        <div class="row">
                                            <div class="input-field col s6">
                                                <input type="text" class="validate">
                                                <label>Name</label>
                                            </div>
                                            <div class="input-field col s6">
                                                <input type="text" class="validate">
                                                <label>Email id</label>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="input-field col s12">
                                                <textarea class="materialize-textarea"></textarea>
                                                <label>Message</label>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="input-field col s12">
                                                <input type="submit" value="Submit" class="waves-effect waves-light btn-book">
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>--%>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        </form>
    </section>
    <!--SECTION COURSE DETAILS END-->

</asp:Content>
