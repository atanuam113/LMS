<%@ Page Title="" Language="C#" MasterPageFile="~/Trainer/Teacher.Master" AutoEventWireup="true" CodeBehind="teacher_all_exam.aspx.cs" Inherits="LMS.teacher_all_exam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="sb2-2">
        <!--== breadcrumbs ==-->
        <div class="sb2-2-2">
            <ul>
                <li><a href="Teacher_Defaul.aspx"><i class="fa fa-home" aria-hidden="true"></i>Home</a>
                </li>
                <li class="active-bre"><a href="teacher_all_exam.aspx">All Exams</a>
                </li>
                <li class="page-back"><a href="/"><i class="fa fa-backward" aria-hidden="true"></i>Back</a>
                </li>
            </ul>
        </div>

        <!--== User Details ==-->
        <div class="sb2-2-3">
            <div class="row">
                <div class="col-md-12">
                    <div class="box-inn-sp">
                        <div class="inn-title">
                            <h4>Exams Time Table</h4>
                            <p>All about students like name, student id, phone, email, country, city and more</p>
                        </div>
                        <div class="tab-inn">
                            <div class="table-responsive table-desi">
                                <form id="form1" runat="server">
                                    <div class="table table-hover">
                                        <asp:GridView ID="GridView1" runat="server" class="table table-hover" AutoGenerateColumns="false" CellPading="10" EditRowStyle-HorizontalAlign="Center" OnRowCommand="GridView1_RowCommand">
                                            <HeaderStyle Font-Bold="true" Font-Size="Medium" BackColor="#9999FF" />
                                            <Columns>
                                                <asp:TemplateField HeaderText="EXAM ID">
                                                    <ItemTemplate>
                                                        <asp:Label ID="exam_id" runat="server" Text='<%# Eval("exam_id") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="EXAM NAME">
                                                    <ItemTemplate>
                                                        <asp:Label ID="e_name" runat="server" Text='<%# Eval("e_name") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="EXAM DATE">
                                                    <ItemTemplate>
                                                        <asp:Label ID="e_date" runat="server" Text='<%# Eval("e_date") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="EXAM TIME">
                                                    <ItemTemplate>
                                                        <asp:Label ID="start_time" runat="server" Text='<%# Eval("start_time") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="DURATION">
                                                    <ItemTemplate>
                                                        <asp:Label ID="e_duration" runat="server" Text='<%# Eval("end_time") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="COURSE">
                                                    <ItemTemplate>
                                                        <asp:Label ID="e_course" runat="server" Text='<%# Eval("e_course") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <asp:HyperLink ID="edit" runat="server" class="ad-st-view" NavigateUrl='admin_exam_details.aspx'>EDIT</asp:HyperLink>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
