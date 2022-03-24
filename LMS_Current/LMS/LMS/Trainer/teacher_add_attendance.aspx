<%@ Page Title="" Language="C#" MasterPageFile="~/Trainer/Teacher.Master" AutoEventWireup="true" CodeBehind="teacher_add_attendance.aspx.cs" Inherits="LMS.teacher_add_attendance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="sb2-2">
    <!--== breadcrumbs ==-->
    <div class="sb2-2-2">
        <ul>
            <li><a href="Teacher_Default.aspx"><i class="fa fa-home" aria-hidden="true"></i> Home</a>
            </li>
            <li class="active-bre"><a href="teacher_add_attendance.aspx">Learner Attendance</a>
            </li>
            <li class="page-back"><a href="/"><i class="fa fa-backward" aria-hidden="true"></i> Back</a>
            </li>
        </ul>
    </div>

    <!--== User Details ==-->
    <div class="sb2-2-3">
        <div class="row">
            <div class="col-md-12">
                <div class="box-inn-sp admin-form" aria-orientation="vertical">
                    <div class="inn-title">
                        <h4>Learner Attendance Details</h4>                        
                    </div>
                    <div class="tab-inn">
                        <form id="form1" runat="server">
                            <table>
                            <tr class="row">
                             <td class="input-field col s12">
                                 <center>
                                <asp:Calendar runat="server" BackColor="#99CCFF" BorderColor="#999999" BorderStyle="Solid" NextMonthText="Next" ShowGridLines="True" TitleFormat="Month" TitleStyle-BackColor="Silver" TodayDayStyle-BackColor="Yellow" SelectedDayStyle-BackColor="#666666" Height="161px" FirstDayOfWeek="Monday" NextPrevFormat="ShortMonth" PrevMonthText="Prev" Width="254px" DayHeaderStyle-BackColor="#336699" DayHeaderStyle-BorderColor="#336699" DayHeaderStyle-BorderWidth="1" Font-Bold="True" DayHeaderStyle-ForeColor="Black">
                                        <DayHeaderStyle BackColor="#336699" BorderColor="#336699" BorderWidth="1px" ForeColor="Black"></DayHeaderStyle>
                                        <SelectedDayStyle BackColor="#666666"></SelectedDayStyle>
                                        <TitleStyle BackColor="Silver"></TitleStyle>
                                        <TodayDayStyle BackColor="Yellow"></TodayDayStyle>
                                        <WeekendDayStyle ForeColor="Red"></WeekendDayStyle>
                                 </asp:Calendar>
                                     </center>
                                 </td>
                                 </tr>
                                <tr class="row">
                                    <td class="input-field col s4">
                                         <asp:TextBox ID="textlearner_name"  class="validate" runat="server" placeholder="Enter Learner Name" Font-Bold="True"></asp:TextBox>  
                                     </td>

                                    <td class="input-field col s4">
                                         <asp:TextBox ID="textcourse_name"  class="validate" runat="server" placeholder="Enter Course Name" Font-Bold="True"></asp:TextBox>  
                                     </td>
                                     
                                <td class="input-field col s4">
                                    <div class="waves-effect waves-light btn-large waves-input-wrapper">
                                     <asp:Button ID="search" class="waves-button-input" runat="server" Text="search" Font-Size="Medium" />
                                  </div>
                                </td>
                       
                                </tr>
                                </table>

                            <div class="table table-hover">
                            <asp:GridView ID="GridView1" runat="server" class="table table-hover" AutoGenerateColumns="false" CellPading="10" EditRowStyle-HorizontalAlign="Center" OnRowCommand="GridView1_RowCommand">
                         <HeaderStyle Font-Bold="true" Font-Size="Medium" BackColor="#9999FF" />
                                <Columns>
                                    <asp:TemplateField HeaderText="LEARNER ID">
                                        <ItemTemplate>
                                            <asp:Label ID="learner_id" runat="server" Text='<%# Eval("learner_id") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="LEARNER NAME">
                                        <ItemTemplate>
                                            <asp:Label ID="learner_name" runat="server" Text='<%# Eval("learner_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="COURSE NAME">
                                        <ItemTemplate>
                                            <asp:Label ID="course_name" runat="server" Text='<%# Eval("course_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="STATUS">
                                        <ItemTemplate>
                                            <asp:DropDownList ID="DropDownList1" runat="server">
                                                <asp:ListItem Text="Present"></asp:ListItem>
                                                <asp:ListItem Text="Absent"></asp:ListItem>
                                            </asp:DropDownList> 
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
</asp:Content>
