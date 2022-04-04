<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Site1.Master" AutoEventWireup="true" CodeBehind="my_courses.aspx.cs" Inherits="LMS.Student.my_courses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!--SECTION ALL COURSE START-->
    <section class="pop-cour">
        <div class="container com-sp pad-bot-70">
            <div class="row">
                <div class="con-title">
                    <h2>My <span>Courses</span></h2>
                </div>
            </div>
            <form runat="server">
                <div class="row">                    
                    <asp:DataList ID="mycourse" runat="server">
                        <ItemTemplate>
                            <div class="col-md-6">
                                <div>
                                    <!--POPULAR COURSES-->
                                    <div class="home-top-cour">
                                        <asp:LinkButton runat="server" ID="LinkButton2" OnClick="txtallcrs_Click" CommandName="txtallcrs" CommandArgument='<%#Eval("Course_ID") %>'>
                                        <!--POPULAR COURSES IMAGE-->
                                        <div class="col-md-3">
                                            <img src="<%#Eval("CourseBanner") %>" alt="">
                                        </div>
                                        <!--POPULAR COURSES: CONTENT-->
                                        <div class="col-md-9 home-top-cour-desc">
                                            <asp:LinkButton runat="server" ID="txtallcrs" OnClick="txtallcrs_Click" CommandName="txtallcrs" CommandArgument='<%#Eval("Course_ID") %>'><h3><%#Eval("Course_Name") %></h3></asp:LinkButton>
                                            <a href="course_details.aspx">
                                                <%--<h3><%#Eval("Course_Name") %></h3>--%>
                                            </a>
                                            <h4>Class Teacher is <%#Eval("Course_Trainer") %></h4>
                                            <p>Classes will start from <%#Eval("Course_Start_Date", "{0:d}") %></p>
                                            <span class="home-top-cour-rat">4.2</span>
                                            <div class="hom-list-share">
                                                <ul>
                                                    <li>
                                                        <asp:LinkButton runat="server" ID="LinkButton1" OnClick="txtallcrs_Click" CommandName="txtallcrs" CommandArgument='<%#Eval("Course_ID") %>'><i class="fa fa-bar-chart" aria-hidden="true"></i>VIEW</asp:LinkButton>

                                                    </li>
                                                    </ul>
                                            </div>
                                        </div>
                                        </asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:DataList>

                </div>
            </form>
        </div>
    </section>
    <!-- SECTION END -->

</asp:Content>
