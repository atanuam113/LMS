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
            <form runat="server">            
                    <div>
                        <asp:DataList runat="server" ID ="allcourse" RepeatColumns="2" CellPadding="5" CssClass="item_course">
                            <ItemTemplate>                        
                        <div class="home-top-cour" style="padding:4px">
                            <asp:LinkButton runat="server" ID="LinkButton2" OnClick="cdetailspage_Click" CommandName="txtallcrs" CommandArgument='<%#Eval("Course_ID") %>'>
                            <!--POPULAR COURSES IMAGE-->
                            <div class="col-md-3">
                                <img src="<%#Eval("CourseBanner") %>" alt="">
                            </div>
                            <!--POPULAR COURSES: CONTENT-->
                            <div class="col-md-9 home-top-cour-desc">                                
                                <asp:LinkButton runat="server" ID="txtallcrs" OnClick="cdetailspage_Click" CommandName="txtallcrs" CommandArgument='<%#Eval("Course_ID") %>'><h3><%#Eval("Course_Name") %></h3></asp:LinkButton>
                                <h4>Class Teacher is <%#Eval("Course_Trainer") %></h4>
                                <p>Classes will start from <%#Eval("Course_Start_Date", "{0:d}") %></p>
                                <%--<span class="home-top-cour-rat">4.2</span>--%>
                                <div class="hom-list-share">
                                    <ul>
                                        <%--<li><a href="course_details.aspx">Book Now</a> </li>--%>
                                        <li>
                                            <asp:LinkButton runat="server" ID="LinkButton1" OnClick="cdetailspage_Click" CommandName="txtallcrs" CommandArgument='<%#Eval("Course_ID") %>'><i class="fa fa-bar-chart" aria-hidden="true"></i>Book Now</asp:LinkButton>
                                        </li>

                                    </ul>
                                </div>
                            </div>
                            </asp:LinkButton>
                        </div>  
                            
                    </ItemTemplate>
                            </asp:DataList>
                    </div>               
            </form>
        </div>        
    </section>
    <!-- SECTION END -->


</asp:Content>
