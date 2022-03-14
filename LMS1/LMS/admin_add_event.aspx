﻿<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="admin_add_event.aspx.cs" Inherits="LMS.admin_add_event" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<div class="sb2-2">
    <!--== breadcrumbs ==-->
    <div class="sb2-2-2">
        <ul>
            <li><a href="index-2.html"><i class="fa fa-home" aria-hidden="true"></i> Home</a>
            </li>
            <li class="active-bre"><a href="#"> Add New Event</a>
            </li>
            <li class="page-back"><a href="#"><i class="fa fa-backward" aria-hidden="true"></i> Back</a>
            </li>
        </ul>
    </div>

    <!--== User Details ==-->
    <div class="sb2-2-3">
        <div class="row">
            <div class="col-md-12">
            <div class="box-inn-sp admin-form">
                    <div class="inn-title">
                        <h4>Add Event</h4>
                        <p>Here you can edit your website basic details URL, Phone, Email, Address, User and password and more</p>
                    </div>
                    <div class="tab-inn">
                        <form>
                            <div class="row">
                                <div class="input-field col s12">
                                    <input type="text" value="" class="validate" required>
                                    <label class="">Event name</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s12">
                                    <textarea></textarea>
                                    <label class="">Event Descriptions</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s6">
                                    <input type="text" value="" class="validate" required>
                                    <label class="">Date</label>
                                </div>
                                <div class="input-field col s6">
                                    <input type="text" class="validate" value="" required>
                                    <label class="">Time</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s6">
                                    <input type="text" value="" class="validate">
                                    <label class="">City</label>
                                </div>
                                <div class="input-field col s6">
                                    <input type="text" value="" class="validate">
                                    <label class="">Country</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="file-field input-field col s12">
                                    <div class="btn admin-upload-btn">
                                        <span>File</span>
                                        <input type="file">
                                    </div>
                                    <div class="file-path-wrapper">
                                        <input class="file-path validate" type="text" placeholder="Event image">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s12">
                                    <i class="waves-effect waves-light btn-large waves-input-wrapper"><input type="submit" class="waves-button-input"></i>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


</asp:Content>