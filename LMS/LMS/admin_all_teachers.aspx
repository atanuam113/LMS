<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="admin_all_teachers.aspx.cs" Inherits="LMS.admin_all_teachers" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="sb2-2">
    <!--== breadcrumbs ==-->
    <div class="sb2-2-2">
        <ul>
            <li><a href="Default.aspx"><i class="fa fa-home" aria-hidden="true"></i> Home</a>
            </li>
            <li class="active-bre"><a href="#"> Trainer</a>
            </li>
            <li class="page-back"><a href="Default.aspx"><i class="fa fa-backward" aria-hidden="true"></i> Back</a>
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
                     <asp:GridView ID="GridView1" runat="server" class="table table-hover" AutoGenerateColumns="false" CellPading="10">
                         <Columns>
                             <asp:ImageField DataImageUrlField="t_pimage" HeaderText="Profile Image"></asp:ImageField>
                             <asp:BoundField DataField="t_id" HeaderText="Trainer Id"  />
                             <asp:BoundField DataField="f_name" HeaderText="First Name" />
                             <asp:BoundField DataField="l_name" HeaderText="Last Name" />
                             <asp:BoundField DataField="email_id" HeaderText="Email Id" />
                             <asp:BoundField DataField="password" HeaderText="Password" />
                             <asp:BoundField DataField="phone_no" HeaderText="Phone No." />
                             <asp:BoundField DataField="city" HeaderText="City" />
                             <asp:BoundField DataField="country" HeaderText="Country" />
                             <asp:TemplateField>
                                 <ItemTemplate>
                                     <asp:Button ID="view" runat="server" class="ad-st-view" Text="view" />
                                 </ItemTemplate>
                             </asp:TemplateField>
                             
                         </Columns>
                         <HeaderStyle Font-Bold="false" />
                     </asp:GridView>
                          <!--  <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>User</th>
                                        <th>Name</th>
                                        <th>Phone</th>
                                        <th>Email</th>
                                        <th>Country</th>
                                        <th>Id</th>
                                        <th>Date of birth</th>
                                        <th>Status</th>
                                        <th>View</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><span class="list-img"><img src="{% static 'Edu_Master/images/user/1.png' %}" alt=""></span>
                                        </td>
                                        <td><a href="/admin_teacher_details"><span class="list-enq-name">Marsha Hogan</span><span class="list-enq-city">Illunois, United States</span></a>
                                        </td>
                                        <td>+01 3214 6522</td>
                                        <td>chadengle@dummy.com</td>
                                        <td>united states</td>
                                        <td>ST17241</td>
                                        <td>03 Jun 1990</td>
                                        <td>
                                            <span class="label label-success">Active</span>
                                        </td>
                                        <td><a href="/admin_teacher_details" class="ad-st-view">View</a></td>
                                    </tr>                                   
                                </tbody>
                            </table>-->
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