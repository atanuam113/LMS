<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Site1.Master" AutoEventWireup="true" CodeBehind="event_register.aspx.cs" Inherits="LMS.Student.event_register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!--SECTION EVENT REGISTER START-->
<section class="c-all p-semi p-event">
    <div class="semi-inn">       
           <asp:Label runat="server" ID="event_reg_msg"></asp:Label> 
        <div class="semi-com semi-left">
            <div class="all-title quote-title qu-new semi-text eve-reg-text">
               <asp:DataList runat="server" ID="eventregister">
            <ItemTemplate>
                <h2><%#Eval("e_name") %></h2>
                <p><%#Eval("e_desc") %></p>
                <%--<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>--%>
                <div class="semi-deta eve-deta">
                    <ul>
                        <li>DATE:<span><%#Eval("e_date") %></span></li>
                        <li>Time:<span><%#Eval("e_time") %></span></li>
                        <li>Topic:<span><%#Eval("e_topic") %></span></li>
                        <li>End Time:<span><%#Eval("e_end_time") %></span></li>
                    </ul>
                </div>
                <p class="help-line">Join this for free!</p>
            </ItemTemplate>
        </asp:DataList>
                </div>
        </div>
        
        <div class="semi-com semi-right">
            <div class="n-form-com semi-form">
                <div class="col s12">
                    <form class="form-horizontal" runat="server">
                        <asp:DataList runat="server" ID="userdetail">
                            <ItemTemplate>
                        <div class="form-group">
                            <div class="col-md-12">
                                <input type="text" class="form-control" placeholder="<%#Eval("f_name") %> <%#Eval("l_name") %>" required disabled="disabled">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12">
                                <input type="number" class="form-control" placeholder="<%#Eval("phone_no") %>" required disabled="disabled">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12">
                                <input type="email" class="form-control" placeholder="<%#Eval("email_id") %>" required disabled="disabled">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12">
                                <input type="text" class="form-control" placeholder="<%#Eval("city") %>" disabled="disabled" >
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12">
                                <input type="text" class="form-control" placeholder="<%#Eval("country") %>" disabled="disabled">
                            </div>
                        </div>                                
                            </ItemTemplate>
                        </asp:DataList>
                        <div class="form-group mar-bot-0">
                            <div class="col-md-12">
                                <i class="waves-effect waves-light light-btn waves-input-wrapper" style=""><asp:Button runat="server" ID="event_register_page" Text="Apply Now" OnClick="event_register_Click" /></i>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </div>
</section>
<!--SECTION EVENT REGISTER END-->

</asp:Content>
