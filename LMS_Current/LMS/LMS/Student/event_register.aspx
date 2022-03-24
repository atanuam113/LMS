<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Site1.Master" AutoEventWireup="true" CodeBehind="event_register.aspx.cs" Inherits="LMS.Student.event_register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!--SECTION EVENT REGISTER START-->
<section class="c-all p-semi p-event">
    <div class="semi-inn">
        <div class="semi-com semi-left">
            <div class="all-title quote-title qu-new semi-text eve-reg-text">
                <h2>Digital India</h2>
                <p>MAKAUT is arranged a event on Digital India.</p>
                <%--<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>--%>
                <div class="semi-deta eve-deta">
                    <ul>
                        <li>DATE:<span>MAY 01, 2022</span></li>
                        <li>Time:<span>02:00 PM GMT</span></li>
                        <li>Topic:<span>Feature Technology</span></li>
                        <li>Location:<span>Kolkata, India</span></li>
                    </ul>
                </div>
                <p class="help-line">Join this for free!</p>
            </div>
        </div>
        <div class="semi-com semi-right">
            <div class="n-form-com semi-form">
                <div class="col s12">
                    <form class="form-horizontal">
                        <div class="form-group">
                            <div class="col-md-12">
                                <input type="text" class="form-control" placeholder="Name" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12">
                                <input type="number" class="form-control" placeholder="Phone number" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12">
                                <input type="email" class="form-control" placeholder="Email id" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12">
                                <input type="text" class="form-control" placeholder="City">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12">
                                <input type="text" class="form-control" placeholder="Country">
                            </div>
                        </div>
                        <div class="form-group mar-bot-0">
                            <div class="col-md-12">
                                <i class="waves-effect waves-light light-btn waves-input-wrapper" style=""><input type="submit" value="APPLY NOW" class="waves-button-input"></i>
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
