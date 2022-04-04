<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Site1.Master" AutoEventWireup="true" CodeBehind="my_events.aspx.cs" Inherits="LMS.Student.my_events" %>
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
                        </div>
                        <div class="row">
                <div class="col-md-12">
                    <div class="box-inn-sp">
                        <div class="inn-title">
                            <h4>My Events</h4>
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
                                                
                                                <th>Join</th>
                                                <th>Read More</th>
                                            </tr>
                                        </thead>

                                        <asp:DataList runat="server" ID="datalist1" CssClass="col-md-11">
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
                                                        <div class="pg-eve-reg">
                                                        <td><a href="<%#Eval("e_link") %>">Join</a></td>
                                                        <td><asp:LinkButton runat="server" ID="txtread_more" Text="Read more" CommandName="eventdetails" OnClick="txtread_more_Click" CommandArgument='<%#Eval("e_id") %>' /></td>
                                                        </div>
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
