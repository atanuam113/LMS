<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Site1.Master" AutoEventWireup="true" CodeBehind="event_details.aspx.cs" Inherits="LMS.Student.event_details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:DataList runat="server" ID="eventdetails" CssClass="col-md-12 pad-bot-50">
        <ItemTemplate>
<section>
    <div class="head-2">
        <div class="container">
            <div class="head-2-inn">
                <h1><%#Eval("e_name") %></h1>
                <p><%#Eval("e_desc") %></p>
                <div class="event-head-sub">
                    <ul>
                        <li>Date: <%#Eval("e_date") %></li>
                        <li>Time: <%#Eval("e_time") %> – <%#Eval("e_end_time") %></li>
                        <li>Topic: <%#Eval("e_topic") %></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
<!--SECTION START-->
<section>
    <div class="container com-sp pad-bot-70">
        <div class="row">
            <div class="cor about-sp">
                <div class="s18-age-event l-info-pack-days">
                    <ul>
                        <li>
                            <div class="age-eve-com age-eve-1">
                                <img src="../fonts/images/icon/awa/1.png" alt="">
                            </div>
                            <div class="s17-eve-time">
                                <div class="s17-eve-time-tim">
                                    <span><%#Eval("e_date") %></span>
                                </div>
                                <div class="s17-eve-time-msg">
                                    <h4><%#Eval("e_name") %></h4>
                                    <p><%#Eval("e_desc") %></p>
                                </div>
                            </div>
                        </li>
                        
                    </ul>
                </div>
                <div class="ed-about-sec1">
                    <div class="col-md-6"></div>
                    <div class="col-md-6"></div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--SECTION END-->
        </ItemTemplate>
    </asp:DataList>

</asp:Content>
