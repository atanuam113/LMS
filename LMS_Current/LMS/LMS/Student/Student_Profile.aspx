<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Site1.Master" AutoEventWireup="true" CodeBehind="Student_Profile.aspx.cs" Inherits="LMS.Student.Student_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">   

        <!--SECTION START-->
        <section>
            <div class="pro-cover" style="background-image: url(../fonts/images/pro-bg.jpg)">
            </div>
            <div class="pro-menu">
                <div class="container">
                    <div class="col-md-9 col-md-offset-3">
                        <ul>
                            <li><a href="Student_Dashboard.aspx" class="pro-act">My Dashboard</a></li>
                            <li><a href="Student_Profile.aspx">Profile</a></li>
                            <li><a href="Student_Course.aspx">Courses</a></li>
                            <li><a href="Student_Exam.aspx">Exams</a></li>
                            <li><a href="Student_Class_Time.aspx">Time Line</a></li>
                            <%--<li><a href="#">Entry</a></li>--%>
                            <li><a href="#">Notifications</a></li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="stu-db">
                <div class="container pg-inn">
                    <div class="col-md-3">
                        <asp:DataList runat="server" ID="profile_details">
                            <ItemTemplate>
                                <div class="pro-user">
                                    <img src="<%#Eval("l_pimage") %>" alt="user">
                                </div>
                                <div class="pro-user-bio">
                                    <ul>
                                        <li>
                                            <h4><%#Eval("f_name") %> <%#Eval("l_name") %></h4>
                                        </li>
                                        <li>Student Id: <%#Eval("learner_id") %></li>
                                        <li>Email ID: <%#Eval("email_id") %></li>
                                        <li>Date Of Birth: <%#Eval("date") %></li>
                                        <li>Status: <%#Eval("l_status") %></li>
                                    </ul>
                                </div>
                            </ItemTemplate>
                        </asp:DataList>
                    </div>

                    <div class="col-md-9">
                        <div class="udb">
                            <h4>
                                            <img src="../fonts/images/icon/db1.png" alt="" />
                                            My Profile</h4>
                            <form runat="server">
                                <asp:DataList runat="server" ID="datalist1" OnItemCommand="datalist1_ItemCommand" OnUpdateCommand="datalist1_UpdateCommand" OnCancelCommand="datalist1_CancelCommand" OnEditCommand="datalist1_EditCommand">
                                <EditItemTemplate>
                                    <div class="udb-sec udb-prof">                                        
                                        <div class="sdb-tabl-com sdb-pro-table">
                                            <%--<form runat="server">--%>
                                            <%--<asp:Label runat="server" ID="txtphone" Text="Phone: "></asp:Label>
                                            <asp:TextBox runat="server" ID="txtphoneNo" Text='<%#Eval("phone_no") %>'></asp:TextBox>--%>
                                            <table class="responsive-table bordered">
                                                <tbody>
                                                                                                       
                                                    
                                                    <tr>
                                                        <td>Phone</td>
                                                        <td>:</td>                                                        
                                                        <td><asp:TextBox runat="server" ID="edit_phone" Text='<%#Eval("phone_no") %>' Font-Size="20px"></asp:TextBox></td>
                                                    </tr>
                                                    
                                                    <tr>
                                                        <td>City</td>
                                                        <td>:</td>
                                                        <td><asp:TextBox runat="server" ID="edit_city" Text='<%#Eval("city") %>' Font-Size="20px"></asp:TextBox></td>
                                                        
                                                    </tr>
                                                    <tr>
                                                        <td>Country</td>
                                                        <td>:</td>
                                                        <td><asp:TextBox runat="server" ID="edit_country" Text='<%#Eval("country") %>' Font-Size="20px"></asp:TextBox></td>
                                                        
                                                    </tr>
                                                    <tr>
                                                        <td>Profile Picture</td>
                                                        <td>:</td>
                                                        <td><asp:Image runat="server" ID="edit_img" ImageUrl='<%#Eval("l_pimage") %>' class="item_img"/></td>
                                                        
                                                    </tr>
                                                    <tr>
                                                        <td>Change Profile Picture</td>
                                                        <td>:</td>
                                                        <td><asp:FileUpload ID="upload_img" runat="server" /></td>
                                                        
                                                    </tr>
                                                    
                                                </tbody>
                                            </table>
                                            <%--<div class="sdb-bot-edit">
                                                <a href="#" >
                                                    

                                                </a>
                                            </div>  --%>
                                            <div class="sdb-bot-edit">
                                                <div class="waves-effect waves-light btn-large sdb-btn">
                                                    <i class="fa fa-pencil"></i><asp:Button runat="server" ID="Update" CommandName="Update" Text="Update Profile" />
                                                </div>
                                                <div class="waves-effect waves-light btn-large sdb-btn" >
                                                    <i class="fa fa-pencil"></i><asp:Button runat="server" ID="cancel" CommandName="Cancel" Text="Cancel" />
                                                </div>                                                                                                    
                                            </div>
                                        </div>
                                    </div>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LMSConnectionString2 %>" SelectCommand="SELECT [l_pimage], [phone_no], [city], [country] FROM [learnerDtl]"></asp:SqlDataSource>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <div class="udb-sec udb-prof">                                        
                                        <div class="sdb-tabl-com sdb-pro-table">
                                            <%--<form runat="server">--%>

                                            <table class="responsive-table bordered">
                                                <tbody>
                                                    <%--<tr>
                                                        <td>Student Name</td>
                                                        <td>:</td>
                                                        <td><%#Eval("f_name") %> <%#Eval("l_name") %></td>
                                                    </tr>--%>                                                    
                                                    
                                                    <tr>
                                                        <td>Phone</td>
                                                        <td>:</td>
                                                        <td style="font-size:20px"><%#Eval("phone_no") %></td>
                                                    </tr>
                                                    
                                                    <tr>
                                                        <td>City</td>
                                                        <td>:</td>
                                                        <td style="font-size:20px"><%#Eval("city") %></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Country</td>
                                                        <td>:</td>
                                                        <td style="font-size:20px"><%#Eval("country") %></td>
                                                    </tr>
                                                    
                                                </tbody>
                                            </table>
                                            <div class="sdb-bot-edit">                                                                                             
                                                <div class="waves-effect waves-light btn-large sdb-btn ">
                                                    <i class="fa fa-pencil"></i> <asp:Button runat="server" ID="editprofile" CommandName="Edit" Text="Edit my profile" ToolTip="CLICK TO EDIT PROFILE"/>    
                                                </div>                                                
                                            </div>            
                                            
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:DataList>

                            </form>
                            
                        </div>
                    </div>


                </div>
                <asp:Label runat="server" ID="std_profile"></asp:Label>
            </div>

        </section>
        <!--SECTION END-->

    

</asp:Content>
