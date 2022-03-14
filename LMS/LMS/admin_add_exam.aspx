<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="admin_add_exam.aspx.cs" Inherits="LMS.admin_add_exam" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<div class="sb2-2">
    <!--== breadcrumbs ==-->
    <div class="sb2-2-2">
        <ul>
            <li><a href="Default.aspx"><i class="fa fa-home" aria-hidden="true"></i> Home</a>
            </li>
            <li class="active-bre"><a href="admin_add_exam"> Add New Exam</a>
            </li>
            <li class="page-back"><a href="Default.aspx"><i class="fa fa-backward" aria-hidden="true"></i> Back</a>
            </li>
        </ul>
        
    </div>

    <!--== User Details ==-->
    <div class="sb2-2-3">
        <div class="row">
            <div class="col-md-12">
                <div class="box-inn-sp admin-form">
                    <div class="sb2-2-add-blog sb2-2-1">
                        <h2>New Exam</h2>                        

                        <!--<ul class="nav nav-tabs tab-list">
                            <li class="active"><a data-toggle="tab" href="#home" aria-expanded="true"><i
                                        class="fa fa-sticky-note-o" aria-hidden="true"></i> <span>Exam 1</span></a>
                            </li>
                            <li class=""><a data-toggle="tab" href="#menu1" aria-expanded="false"><i
                                        class="fa fa-sticky-note-o" aria-hidden="true"></i> <span>Exam 2</span></a>
                            </li>
                            <li class=""><a data-toggle="tab" href="#menu2" aria-expanded="false"><i
                                        class="fa fa-sticky-note-o" aria-hidden="true"></i> <span>Exam 3</span></a>
                            </li>
                            <li class=""><a data-toggle="tab" href="#menu3" aria-expanded="false"><i
                                        class="fa fa-sticky-note-o" aria-hidden="true"></i> <span>Exam 4</span></a>
                            </li>
                            <li class=""><a data-toggle="tab" href="#menu4" aria-expanded="false"><i
                                        class="fa fa-sticky-note-o" aria-hidden="true"></i> <span>Exam 5</span></a>
                            </li>
                        </ul>-->

                        <div class="tab-content">
                            <div id="home" class="tab-pane fade active in">
                                <div class="box-inn-sp">
                                    <div class="inn-title">
                                        <h4>Exam Details</h4>
                                        <p>Airtport Hotels The Right Way To Start A Short Break Holiday</p>
                                    </div>
                                    <div class="bor">
                                        <form id="form1" runat="server">
                                            <div class="row">
                                                <div class="input-field col s12">
                                              <!--      <input type="text" value="" class="validate">
                                                    <label class="">Main exam name</label>-->
                                                     <asp:TextBox ID="textexam_name"  class="validate" runat="server" placeholder="Exam Name" Font-Bold="True"></asp:TextBox>
                                                </div>
                                                <!--<div class="input-field col s12">
                                                    <input type="text" value="" class="validate">
                                                    <label>Exam name</label>
                                                     <asp:TextBox ID="textcourse_name"  class="validate" runat="server" placeholder="Main Exam Name"></asp:TextBox>
                                                </div>-->
                                                <div class="input-field col s12">
                                                    <!--<input type="text" value="" class="validate">
                                                    <label>Date</label>-->
                                                     <asp:TextBox ID="textexam_date"  class="validate" runat="server" placeholder="Event Date" ForeColor="#CCCCCC" Font-Bold="True" TextMode="Date"></asp:TextBox>
                                                </div>
                                                <div class="input-field col s12">
                                                   <!-- <input type="text" value="" class="validate">
                                                    <label>Start time</label>-->
                                                     <asp:TextBox ID="textstart_time"  class="validate" runat="server" placeholder="Start Time" ForeColor="#CCCCCC" Font-Bold="True" TextMode="Time"></asp:TextBox>
                                                </div>
                                                <div class="input-field col s6">
                                                   <!-- <input type="text" value="" class="validate">
                                                    <label>Duration</label>-->
                                                     <asp:TextBox ID="textduration"  class="validate" runat="server" placeholder="Duration- hr:min:sec" Font-Bold="True"></asp:TextBox>
                                                </div>
                                           </div>
                                            <div class="row">
                                                <div class="input-field col s6">
                                                   <!-- <select>
                                                        <option value="" disabled selected>Select Status</option>
                                                        <option value="1">Active</option>
                                                        <option value="2">De-Active</option>
                                                        <option value="3">Delete</option>
                                                    </select>-->
                                                  <asp:DropDownList ID="DropDownListcourse" runat="server" Font-Bold="True">
                                                      <asp:ListItem Value="SELECT COURSE"></asp:ListItem>
                                                      <asp:ListItem Value="PHP"></asp:ListItem>
                                                      <asp:ListItem Value="Python"></asp:ListItem>
                                                      <asp:ListItem Value="Angular"></asp:ListItem>
                                                      <asp:ListItem Value="JAVA"></asp:ListItem>
                                                  </asp:DropDownList>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="input-field col s12">
                                                    <div class="waves-effect waves-light btn-large waves-input-wrapper">
                                                   <!-- <i class="waves-effect waves-light btn-large waves-input-wrapper"
                                                        ><input type="submit" class="waves-button-input"
                                                            value="Submit"></i>-->
                                                      <asp:Button ID="submit" class="waves-button-input" runat="server" Text="submit" Font-Size="Medium" OnClick="submit_Click" />
                                               <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                                    </div>
                                                        </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                           <!-- <div id="menu1" class="tab-pane fade">
                                <div class="inn-title">
                                    <h4>Exam Details</h4>
                                    <p>Airtport Hotels The Right Way To Start A Short Break Holiday</p>
                                </div>
                                <div class="bor ad-cou-deta-h4">
                                    <form>
                                        <div class="row">
                                            <div class="input-field col s12">
                                                <input type="text" value="Semester 1" class="validate">
                                                <label class="">Main exam name</label>
                                            </div>
                                            <div class="input-field col s12">
                                                <input type="text" value="Board Exam Training Classes" class="validate">
                                                <label>Exam name</label>
                                            </div>
                                            <div class="input-field col s12">
                                                <input type="text" value="12 may 2018" class="validate">
                                                <label>Date</label>
                                            </div>
                                            <div class="input-field col s12">
                                                <input type="text" value="10:00AM" class="validate">
                                                <label>Start time</label>
                                            </div>
                                            <div class="input-field col s12">
                                                <input type="text" value="03:00hrs" class="validate">
                                                <label>Duration</label>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="input-field col s12">
                                                <select>
                                                    <option value="" disabled selected>Select Status</option>
                                                    <option value="1">Active</option>
                                                    <option value="2">De-Active</option>
                                                    <option value="3">Delete</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="input-field col s12">
                                                <i class="waves-effect waves-light btn-large waves-input-wrapper"
                                                    ><input type="submit" class="waves-button-input"
                                                        value="Submit"></i>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div id="menu2" class="tab-pane fade">
                                <div class="inn-title">
                                    <h4>Exam Details</h4>
                                    <p>Airtport Hotels The Right Way To Start A Short Break Holiday</p>
                                </div>
                                <div class="bor">
                                    <form>
                                        <div class="row">
                                            <div class="input-field col s12">
                                                <input type="text" value="Semester 1" class="validate">
                                                <label class="">Main exam name</label>
                                            </div>
                                            <div class="input-field col s12">
                                                <input type="text" value="Board Exam Training Classes" class="validate">
                                                <label>Exam name</label>
                                            </div>
                                            <div class="input-field col s12">
                                                <input type="text" value="12 may 2018" class="validate">
                                                <label>Date</label>
                                            </div>
                                            <div class="input-field col s12">
                                                <input type="text" value="10:00AM" class="validate">
                                                <label>Start time</label>
                                            </div>
                                            <div class="input-field col s12">
                                                <input type="text" value="03:00hrs" class="validate">
                                                <label>Duration</label>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="input-field col s12">
                                                <select>
                                                    <option value="" disabled selected>Select Status</option>
                                                    <option value="1">Active</option>
                                                    <option value="2">De-Active</option>
                                                    <option value="3">Delete</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="input-field col s12">
                                                <i class="waves-effect waves-light btn-large waves-input-wrapper"
                                                    ><input type="submit" class="waves-button-input"
                                                        value="Submit"></i>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div id="menu3" class="tab-pane fade">
                                <div class="inn-title">
                                    <h4>Exam Details</h4>
                                    <p>Airtport Hotels The Right Way To Start A Short Break Holiday</p>
                                </div>
                                <div class="bor ad-cou-deta-h4">
                                    <form>
                                        <div class="row">
                                            <div class="input-field col s12">
                                                <input type="text" value="Semester 1" class="validate">
                                                <label class="">Main exam name</label>
                                            </div>
                                            <div class="input-field col s12">
                                                <input type="text" value="Board Exam Training Classes" class="validate">
                                                <label>Exam name</label>
                                            </div>
                                            <div class="input-field col s12">
                                                <input type="text" value="12 may 2018" class="validate">
                                                <label>Date</label>
                                            </div>
                                            <div class="input-field col s12">
                                                <input type="text" value="10:00AM" class="validate">
                                                <label>Start time</label>
                                            </div>
                                            <div class="input-field col s12">
                                                <input type="text" value="03:00hrs" class="validate">
                                                <label>Duration</label>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="input-field col s12">
                                                <select>
                                                    <option value="" disabled selected>Select Status</option>
                                                    <option value="1">Active</option>
                                                    <option value="2">De-Active</option>
                                                    <option value="3">Delete</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="input-field col s12">
                                                <i class="waves-effect waves-light btn-large waves-input-wrapper"
                                                    ><input type="submit" class="waves-button-input"
                                                        value="Submit"></i>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div id="menu4" class="tab-pane fade">
                                <div class="inn-title">
                                    <h4>Exam Details</h4>
                                    <p>Airtport Hotels The Right Way To Start A Short Break Holiday</p>
                                </div>
                                <div class="bor">
                                    <form>
                                        <div class="row">
                                            <div class="input-field col s12">
                                                <input type="text" value="Semester 1" class="validate">
                                                <label class="">Main exam name</label>
                                            </div>
                                            <div class="input-field col s12">
                                                <input type="text" value="Board Exam Training Classes" class="validate">
                                                <label>Exam name</label>
                                            </div>
                                            <div class="input-field col s12">
                                                <input type="text" value="12 may 2018" class="validate">
                                                <label>Date</label>
                                            </div>
                                            <div class="input-field col s12">
                                                <input type="text" value="10:00AM" class="validate">
                                                <label>Start time</label>
                                            </div>
                                            <div class="input-field col s12">
                                                <input type="text" value="03:00hrs" class="validate">
                                                <label>Duration</label>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="input-field col s12">
                                                <select>
                                                    <option value="" disabled selected>Select Status</option>
                                                    <option value="1">Active</option>
                                                    <option value="2">De-Active</option>
                                                    <option value="3">Delete</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="input-field col s12">
                                                <i class="waves-effect waves-light btn-large waves-input-wrapper"
                                                    ><input type="submit" class="waves-button-input"
                                                        value="Submit"></i>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>-->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</asp:Content>