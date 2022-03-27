<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="admin_all_teachers.aspx.cs" Inherits="LMS.admin_all_teachers" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="sb2-2">
        <!--== breadcrumbs ==-->
        <div class="sb2-2-2">
            <ul>
                <li><a href="Default.aspx"><i class="fa fa-home" aria-hidden="true"></i>Home</a>
                </li>
                <li class="active-bre"><a href="#">Trainer</a>
                </li>
                <li class="page-back"><a href="Default.aspx"><i class="fa fa-backward" aria-hidden="true"></i>Back</a>
                </li>
            </ul>
        </div>

        <!--== User Details ==-->
        <div class="sb2-2-3">
            <div class="row">
                <div class="col-md-12">
                    <div class="box-inn-sp">
                        <div class="inn-title">
                            <h4>Trainer Details</h4>
                        </div>
                        <div class="tab-inn">
                            <div class="table-responsive table-desi">
                                <form id="form1" runat="server">
                                    <div class="table table-hover">
                                        <asp:GridView ID="GridView1" runat="server" class="table table-hover" AutoGenerateColumns="false" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                            <HeaderStyle Font-Bold="true" Font-Size="Medium" BackColor="#9999FF" />
                                            <Columns>
                                                <asp:ImageField DataImageUrlField="t_pimage" HeaderText="Profile Image" ItemStyle-Height="50px" ControlStyle-Width="50px"></asp:ImageField>
                                                <asp:BoundField DataField="trainer_id" HeaderText="Trainer Id" />
                                                <asp:BoundField DataField="f_name" HeaderText="First Name" />
                                                <asp:BoundField DataField="l_name" HeaderText="Last Name" />
                                                <asp:BoundField DataField="email_id" HeaderText="Email Id" />                                                
                                                <asp:BoundField DataField="phone_no" HeaderText="Phone No." />
                                                <asp:BoundField DataField="city" HeaderText="City" />
                                                <asp:BoundField DataField="country" HeaderText="Country" />
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <asp:Button ID="view" runat="server" class="ad-st-view" Text="view" />
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
