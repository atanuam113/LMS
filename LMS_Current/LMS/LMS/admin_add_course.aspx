<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="admin_add_course.aspx.cs" Inherits="LMS.admin_add_course" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="sb2-2">
        <!--== breadcrumbs ==-->
        <div class="sb2-2-2">
            <ul>
                <li><a href="Default.aspx"><i class="fa fa-home" aria-hidden="true"></i>Home</a>
                </li>
                <li class="active-bre"><a href="#">Add new course</a>
                </li>
                <li class="page-back"><a href="#"><i class="fa fa-backward" aria-hidden="true"></i>Back</a>
                </li>
            </ul>
        </div>

        <!--== User Details ==-->
        <div class="sb2-2-3">
            <div class="row">
                <div class="col-md-12">
                    <div class="box-inn-sp admin-form">
                        <div class="sb2-2-add-blog sb2-2-1">
                            <h2>Add New Course</h2>
                            <form runat="server">
                                <ul class="nav nav-tabs tab-list">
                                    <li class="active"><a data-toggle="tab" href="#home" aria-expanded="true"><i
                                        class="fa fa-info" aria-hidden="true"></i><span>Detail</span></a>
                                    </li>
                                    <li class=""><a data-toggle="tab" href="#menu1" aria-expanded="false"><i class="fa fa-bed"
                                        aria-hidden="true"></i><span>Course Syllabus</span></a>
                                    </li>
                                    <li class=""><a data-toggle="tab" href="#menu2" aria-expanded="false"><i
                                        class="fa fa-picture-o" aria-hidden="true"></i><span>Course Content</span></a>
                                    </li>
                                    <li class=""><a data-toggle="tab" href="#menu3" aria-expanded="false"><i class="fa fa-clock-o" aria-hidden="true"></i><span>Time table</span></a>
                                    </li>
                                    <li class=""><a data-toggle="tab" href="#menu4" aria-expanded="false"><i class="fa fa-align-justify" aria-hidden="true"></i><span>Exam Table</span></a>
                                    </li>
                                </ul>

                                <div class="tab-content">
                                    <div id="home" class="tab-pane fade active in">
                                        <div class="box-inn-sp">
                                            <div class="inn-title">
                                                <h4>Course Information</h4>
                                            </div>
                                            <div class="bor">

                                                <div class="row">
                                                    <div class="input-field col s12">
                                                        <asp:TextBox runat="server" ID="txtCourseName" CssClass="validate"></asp:TextBox>
                                                        <label for="list-title" class="">Course Name</label>
                                                    </div>
                                                    <div class="row">
                                                        <div class="input-field col s4">
                                                            <asp:DropDownList runat="server" ID="ddteacher">
                                                                <asp:ListItem Text="Select Course Teacher" Value=""></asp:ListItem>
                                                                <asp:ListItem Text="Atanu Mondal" Value="Atanu Mondal"></asp:ListItem>
                                                                <asp:ListItem Text="Nabanita Dutta" Value="Nabanita Dutta"></asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <label for="CStartDate" class="">Course Start Date</label>
                                                    <asp:TextBox ID="CStartDate" runat="server" Text='<%# Bind("CStartDate", "{0:yyyy-MM-dd}") %>' TextMode="Date"></asp:TextBox>

                                                </div>
                                                <div class="row">
                                                    <div class="input-field col s12">
                                                        <asp:TextBox runat="server" ID="txtCourseDesc" CssClass="materialize-textarea"></asp:TextBox>
                                                        <label>Course Descriptions:</label>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="input-field col s4">
                                                        <asp:DropDownList runat="server" ID="CourseStatus">
                                                            <asp:ListItem Text="Select Status" Value=""></asp:ListItem>
                                                            <asp:ListItem Text="Active" Value="Active"></asp:ListItem>
                                                            <asp:ListItem Text="De-Active" Value="De-Active"></asp:ListItem>
                                                        </asp:DropDownList>
                                                    </div>
                                                </div>
                                                <div class="file-field input-field">
                                                    <div class="btn admin-upload-btn">
                                                        <span>File</span>
                                                        <asp:FileUpload runat="server" ID="courseBanner" />
                                                    </div>
                                                    <div class="file-path-wrapper">
                                                        <input class="file-path validate" type="text"
                                                            placeholder="Upload course banner image">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div id="menu1" class="tab-pane fade">
                                        <div class="inn-title">
                                            <h4>Course Syllabus</h4>

                                        </div>
                                        <div class="bor ad-cou-deta-h4">
                                            <asp:GridView ID="CourseSyllabus" ShowFooter="true" runat="server" AutoGenerateColumns="false" OnSelectedIndexChanged="gvContacts_SelectedIndexChanged">
                                                <Columns>

                                                    <asp:TemplateField HeaderText="Module:">
                                                        <ItemTemplate>
                                                            <asp:TextBox ID="txtmodule" runat="server" CssClass="materialize-textarea"></asp:TextBox>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>

                                                    <asp:TemplateField HeaderText="Week:">
                                                        <ItemTemplate>
                                                            <asp:TextBox ID="txtweek" runat="server" CssClass="materialize-textarea"></asp:TextBox>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>

                                                    <asp:TemplateField HeaderText="Topic:">
                                                        <ItemTemplate>
                                                            <asp:TextBox ID="txtTopic" runat="server" CssClass="materialize-textarea"></asp:TextBox>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>

                                                    <asp:TemplateField HeaderText="Descriptions:">
                                                        <ItemTemplate>
                                                            <asp:TextBox ID="txtdesc" runat="server" CssClass="materialize-textarea"></asp:TextBox>
                                                        </ItemTemplate>
                                                        <FooterStyle HorizontalAlign="Right" />
                                                        <FooterTemplate>
                                                            <asp:Button ID="btnaddmodule" runat="server" Text="Add module" OnClick="gvContacts_SelectedIndexChanged" />

                                                        </FooterTemplate>
                                                    </asp:TemplateField>

                                                </Columns>
                                            </asp:GridView>

                                        </div>
                                    </div>

                                    <div id="menu2" class="tab-pane fade">
                                        <div class="inn-title">
                                            <h4>Course Content</h4>
                                        </div>
                                        <div class="bor ad-cou-deta-h4">
                                            <asp:GridView ID="GridModuleContent" ShowFooter="true" runat="server" AutoGenerateColumns="false" OnSelectedIndexChanged="GridModuleContent_SelectedIndexChanged">
                                                <Columns>

                                                    <asp:TemplateField HeaderText="Module_Topic:">
                                                        <ItemTemplate>                                                            
                                                            <asp:TextBox ID="CModuleTopic" runat="server" CssClass="materialize-textarea"></asp:TextBox>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>

                                                    <asp:TemplateField HeaderText="Module Type:">
                                                        <ItemTemplate>
                                                            <asp:DropDownList runat="server"  ID="CModuleType">
                                                                    <asp:ListItem Text="Select Module type" Value=""></asp:ListItem>
                                                                    <asp:ListItem Text="PDF" Value="PDF"></asp:ListItem>
                                                                    <asp:ListItem Text="VIDEO" Value="VIDEO"></asp:ListItem>
                                                                </asp:DropDownList>                                                            
                                                        </ItemTemplate>
                                                    </asp:TemplateField>

                                                    <asp:TemplateField HeaderText="Module Extension:">
                                                        <ItemTemplate>
                                                            <asp:DropDownList runat="server"  ID="CModule_Extension">
                                                                    <asp:ListItem Text="Select Module Extension" Value=""></asp:ListItem>
                                                                    <asp:ListItem Text=".pdf" Value=".pdf"></asp:ListItem>
                                                                    <asp:ListItem Text=".mp4" Value=".mp4"></asp:ListItem>
                                                                </asp:DropDownList> 
                                                        </ItemTemplate>
                                                    </asp:TemplateField>

                                                    <%--<asp:TemplateField HeaderText="Module Content:">
                                                        <ItemTemplate>
                                                            <asp:FileUpload ID="CModule_Content" runat="server"/>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>--%>
                                                    <asp:TemplateField HeaderText="Module Content:">
                                                        <ItemTemplate>
                                                             <div class="file-field input-field">
                                                    <div class="btn admin-upload-btn">
                                                        <span>File</span>
                                                        <asp:FileUpload runat="server" ID="CourseFile" />
                                                    </div>
                                                    <div class="file-path-wrapper">                                                       
                                                        <asp:TextBox runat="server" class="file-path validate" ID="Module_content" Text="upload Content">

                                                        </asp:TextBox>
                                                    </div>
                                                </div>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>

                                                    <asp:TemplateField HeaderText="Date:">
                                                        <ItemTemplate>
                                                            <asp:TextBox ID="Content_Date" runat="server" Text='<%# Bind("Content_Date", "{0:yyyy-MM-dd}") %>' TextMode="Date"></asp:TextBox>
                                                            <%--<asp:TextBox ID="CModule_Upload_Date" runat="server" Text='<%# Bind("CModule_Upload_Date", "{0:yyyy-MM-dd}") %>' TextMode="Date"></asp:TextBox>--%>
                                                        </ItemTemplate>
                                                        

                                                        <FooterStyle HorizontalAlign="Right"/>
                                                        <FooterTemplate>
                                                            <asp:Button ID="btnAddModuleContent" runat="server" Text="Add Content" OnClick="GridModuleContent_SelectedIndexChanged" />
                                                        </FooterTemplate>
                                                    </asp:TemplateField>

                                                </Columns>
                                            </asp:GridView>



                                            <%--<div class="row">
                                                <div class="input-field col s12">
                                                    <asp:TextBox runat="server" ID="txtmoduletopic" CssClass="validate"></asp:TextBox>
                                                    <label for="txtmoduletopic" class="">Module Topic</label>
                                                </div>
                                                <div class="row">
                                                    <div class="input-field col s4">
                                                        <asp:DropDownList runat="server" ID="ddmoduletype">
                                                            <asp:ListItem Text="Module Type" Value=""></asp:ListItem>
                                                            <asp:ListItem Text="PDF" Value="PDF"></asp:ListItem>
                                                            <asp:ListItem Text="Video" Value="Video"></asp:ListItem>
                                                        </asp:DropDownList>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="input-field col s4">
                                                    <asp:DropDownList runat="server" ID="DropDownList2">
                                                        <asp:ListItem Text="Module Extension" Value=""></asp:ListItem>
                                                        <asp:ListItem Text=".PDF" Value=".PDF"></asp:ListItem>
                                                        <asp:ListItem Text=".mp4" Value=".mp4"></asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>

                                            <div class="file-field input-field">
                                                <div class="btn admin-upload-btn">
                                                    <span>File</span>
                                                    <asp:FileUpload runat="server" ID="modulecontent" />
                                                </div>
                                                <div class="file-path-wrapper">
                                                    <input class="file-path validate" type="text"
                                                        placeholder="Upload course module content">
                                                </div>
                                            </div>

                                            <div class="row">
                                                <label for="moduledate" class="">Course module upload Date</label>
                                                <asp:TextBox ID="moduledate" runat="server" Text='<%# Bind("moduledate", "{0:yyyy-MM-dd}") %>' TextMode="Date"></asp:TextBox>

                                            </div>--%>

                                        </div>
                                    </div>

                                    <div id="menu3" class="tab-pane fade">
                                        <div class="inn-title">
                                            <h4>Time table</h4>
                                        </div>
                                        <div class="bor ad-cou-deta-h4">
                                            <asp:GridView ID="CourseTimeTable" ShowFooter="true" runat="server" AutoGenerateColumns="false" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                                                <Columns>

                                                    <asp:TemplateField HeaderText="Day:">
                                                        <ItemTemplate>
                                                            <asp:TextBox ID="txtday" runat="server" CssClass="materialize-textarea"></asp:TextBox>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>

                                                    <asp:TemplateField HeaderText="Date:">
                                                        <ItemTemplate>
                                                            <asp:TextBox ID="txtdate" runat="server" Text='<%# Bind("txtdate", "{0:yyyy-MM-dd}") %>' TextMode="Date"></asp:TextBox>

                                                        </ItemTemplate>
                                                    </asp:TemplateField>

                                                    <asp:TemplateField HeaderText="StartTime:">
                                                        <ItemTemplate>
                                                            <asp:TextBox ID="txtStartT" runat="server" CssClass="materialize-textarea"></asp:TextBox>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>

                                                    <asp:TemplateField HeaderText="EndTime:">
                                                        <ItemTemplate>
                                                            <asp:TextBox ID="txtEndT" runat="server" CssClass="materialize-textarea"></asp:TextBox>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>

                                                    <asp:TemplateField HeaderText="Topic:">
                                                        <ItemTemplate>
                                                            <asp:TextBox ID="txtclassTopic" runat="server" CssClass="materialize-textarea"></asp:TextBox>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>

                                                    <asp:TemplateField HeaderText="ClassLink:">
                                                        <ItemTemplate>
                                                            <asp:TextBox ID="txtclasslink" runat="server" CssClass="materialize-textarea"></asp:TextBox>
                                                        </ItemTemplate>
                                                        <FooterStyle HorizontalAlign="Right" />
                                                        <FooterTemplate>
                                                            <asp:Button ID="btnaddmodule" runat="server" Text="Add Class" OnClick="GridView2_SelectedIndexChanged" />
                                                        </FooterTemplate>
                                                    </asp:TemplateField>

                                                </Columns>
                                            </asp:GridView>

                                        </div>
                                    </div>
                                    <div id="menu4" class="tab-pane fade">
                                        <div class="inn-title">
                                            <h4>Exam table</h4>
                                        </div>
                                        <div class="bor ad-cou-deta-h4">
                                            <asp:GridView ID="CourseExamTable" ShowFooter="true" runat="server" AutoGenerateColumns="false" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                                <Columns>

                                                    <asp:TemplateField HeaderText="Exam Name:">
                                                        <ItemTemplate>
                                                            <asp:TextBox ID="txtExamName" runat="server" CssClass="materialize-textarea"></asp:TextBox>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>

                                                    <asp:TemplateField HeaderText="Exam Date:">
                                                        <ItemTemplate>
                                                            <asp:TextBox ID="ExamDate" runat="server" Text='<%# Bind("examDate", "{0:yyyy-MM-dd}") %>' TextMode="Date"></asp:TextBox>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>

                                                    <asp:TemplateField HeaderText="StartTime:">
                                                        <ItemTemplate>
                                                            <asp:TextBox ID="txtStartTime" runat="server" CssClass="materialize-textarea"></asp:TextBox>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>

                                                    <asp:TemplateField HeaderText="EndTime:">
                                                        <ItemTemplate>
                                                            <asp:TextBox ID="txtEndTime" runat="server" CssClass="materialize-textarea"></asp:TextBox>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>

                                                    <asp:TemplateField HeaderText="Exam Link:">
                                                        <ItemTemplate>
                                                            <asp:TextBox ID="txtExamLink" runat="server" CssClass="materialize-textarea"></asp:TextBox>
                                                        </ItemTemplate>
                                                        <FooterStyle HorizontalAlign="Right" />
                                                        <FooterTemplate>
                                                            <asp:Button ID="btnAddExam" runat="server" Text="Add Exam" OnClick="GridView1_SelectedIndexChanged" />
                                                        </FooterTemplate>
                                                    </asp:TemplateField>

                                                </Columns>
                                            </asp:GridView>


                                            <div class="row">
                                                <div class="input-field col s12">
                                                    <i class="waves-effect waves-light btn-large waves-input-wrapper">
                                                        <asp:Button runat="server" OnClick="btnSave_Click1" ID="Button1" Text="Submit" /></i>
                                                </div>
                                            </div>
                                        </div>
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
