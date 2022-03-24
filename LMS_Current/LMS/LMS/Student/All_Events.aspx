<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Site1.Master" AutoEventWireup="true" CodeBehind="All_Events.aspx.cs" Inherits="LMS.Student.All_Events" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!--SECTION EVENT START-->
    <section>
        <div class="container com-sp">
            <div class="row">
                <div class="cor about-sp">
                    <div class="ed-about-tit">
                        <div class="con-title">
                            <h2>College <span>Events</span></h2>
                        </div>
                        <div>
                            <%--<div class="ho-event pg-eve-main">
                                
                                <ul>
                                    
                                    <li>
                                        <div class="ho-ev-date pg-eve-date">
                                            <span>07</span><span>jan,2022</span>
                                        </div>
                                        <div class="ho-ev-link pg-eve-desc">
                                            <a href="event_register.aspx">
                                                <h4>Latinoo College Expo 2022 - DONATION</h4>
                                            </a>
                                            <p>Campus of MAKAUT,Kolkata,West Bengal,India.</p>
                                            <span>9:15 am – 5:00 pm</span>
                                        </div>
                                        <div class="pg-eve-reg">
                                            <a href="event_register.aspx">Register</a><a href="event_details.aspx">Read more</a>
                                        </div>
                                    </li>
                                    
                                </ul>
                            </div>--%>
                        </div>
                        <div class="row">
                <div class="col-md-12">
                    <div class="box-inn-sp">
                        <div class="inn-title">
                            <h4>All Events</h4>
                        </div>
                        <div class="tab-inn">
                            <div class="table-responsive table-desi">
                                <form id="form1" runat="server">
                                    <table class="table table-hover">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Image</th>
                                                <th>Event Name</th>
                                                <th>Date</th>
                                                <th>Location</th>
                                                
                                                <th>Register</th>
                                                <th>Read More</th>
                                            </tr>
                                        </thead>

                                        <asp:DataList runat="server" ID="datalist1" OnSelectedIndexChanged="datalist1_SelectedIndexChanged" OnItemCommand="datalist1_ItemCommand">
                                            <ItemTemplate>
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <asp:LinkButton ID="lnkId" Text='<%#Eval("id") %>' runat="server"></asp:LinkButton>
                                                        </td>
                                                        <td><span class="list-img">
                                                            <img src="<%#Eval("e_pimage") %>" alt=""></span></td>
                                                        <td><%#Eval("e_name") %></td>
                                                        <td><%#Eval("e_date") %></td>
                                                        <td><%#Eval("city") %></td>
                                                        
                                                        <td><asp:Button runat="server" ID="txtregister" Text="Register" CommandName="eventregister" CommandArgument='<%#Eval("id") %>' /></td>
                                                        <td><asp:Button runat="server" ID="Button1" Text="Read more" CommandName="eventdetails" CommandArgument='<%#Eval("id") %>' /></td>
                                                    </tr>

                                                </tbody>
                                            </ItemTemplate>
                                        </asp:DataList>

                                    </table>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
                        <div class="pg-pagina">
                            <ul class="pagination">
                                <li class="disabled"><a href="#!"><i class="fa fa-angle-left" aria-hidden="true"></i></a></li>
                                <li class="active"><a href="#!">1</a></li>
                                <li class="waves-effect"><a href="#!">2</a></li>
                                <li class="waves-effect"><a href="#!">3</a></li>
                                <li class="waves-effect"><a href="#!">4</a></li>
                                <li class="waves-effect"><a href="#!">5</a></li>
                                <li class="waves-effect"><a href="#!"><i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--SECTION EVENT END-->

</asp:Content>
