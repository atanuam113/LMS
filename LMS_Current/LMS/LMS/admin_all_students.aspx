<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="admin_all_students.aspx.cs" Inherits="LMS.admin_all_students" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!--== BODY INNER CONTAINER ==-->
    <div class="sb2-2">
        <!--== breadcrumbs ==-->
        <div class="sb2-2-2">
            <ul>
                <li><a href="Default.aspx"><i class="fa fa-home" aria-hidden="true"></i>Home</a>
                </li>
                <li class="active-bre"><a href="admin_all_students.aspx">Users(Learners)</a>
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
                            <h4>Learner Details</h4>
                        </div>
                        <div class="tab-inn">

                            <div class="table-responsive table-desi">
                                <form id="form1" runat="server">
                                    <div class="table table-hover">
                                        <asp:GridView ID="GridView1" runat="server" class="table table-hover" AutoGenerateColumns="false" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                            <HeaderStyle Font-Bold="true" Font-Size="Medium" BackColor="#9999FF" />
                                            <Columns>

                                                <asp:ImageField DataImageUrlField="l_pimage" HeaderText="Profile Image"  ItemStyle-Height="50px" ControlStyle-Width="50px" ControlStyle-CssClass="item_img"></asp:ImageField>
                                                <asp:BoundField DataField="learner_id" HeaderText="LEARNER ID" />
                                                <asp:BoundField DataField="f_name" HeaderText="FIRST NAME" />
                                                <asp:BoundField DataField="l_name" HeaderText="LAST NAME" />
                                                <asp:BoundField DataField="email_id" HeaderText="EMAIL ID" />
                                                <asp:BoundField DataField="password" HeaderText="PASSWORD" />
                                                <asp:BoundField DataField="l_gender" HeaderText="GENDER" />
                                                <asp:BoundField DataField="phone_no" HeaderText="PHONE NO." />
                                                <asp:BoundField DataField="city" HeaderText="CITY" />
                                                <asp:BoundField DataField="country" HeaderText="COUNTRY" />
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <asp:HyperLink ID="edit" runat="server" class="ad-st-view" NavigateUrl='admin_student_details'>EDIT</asp:HyperLink>
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
