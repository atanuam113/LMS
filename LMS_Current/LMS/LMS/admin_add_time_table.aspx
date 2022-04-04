<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="admin_add_time_table.aspx.cs" Inherits="LMS.admin_add_time_table" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="sb2-2">
        <!--== breadcrumbs ==-->
        <div class="sb2-2-2">
            <ul>
                <li><a href="Default.aspx"><i class="fa fa-home" aria-hidden="true"></i>Home</a>
                </li>
                <li class="active-bre"><a href="#">Add course Time table</a>
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
                            <h2>Add Course Time Table</h2>                            

                                <div >
                                        <div class="inn-title">
                                            <h4>Time table</h4>
                                        </div>
                                    <form runat="server">
                                        <div class="bor ad-cou-deta-h4">   
                                             <div class="row">
                                                            <div class="input-field col s4">
                                                                <asp:DropDownList runat="server"  ID="ddteacher">
                                                                    <asp:ListItem Text="Select Course Name" Value=""></asp:ListItem>
                                                                    <asp:ListItem Text="Atanu Mondal" Value="Atanu Mondal"></asp:ListItem>
                                                                    <asp:ListItem Text="Nabanita Dutta" Value="Nabanita Dutta"></asp:ListItem>
                                                                </asp:DropDownList>                                                                
                                                            </div>
                                                     </div><br />
                                            <asp:GridView ID="newtimetable" ShowFooter="true" runat="server" AutoGenerateColumns="false" OnSelectedIndexChanged="newtimetable_SelectedIndexChanged">
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
                                                        <FooterStyle HorizontalAlign="Right"/>
                                                        <FooterTemplate>
                                                            <asp:Button ID="btnaddmodule" runat="server" Text="Add Class" OnClick="newtimetable_SelectedIndexChanged" />
                                                        </FooterTemplate>
                                                    </asp:TemplateField>

                                                </Columns>
                                            </asp:GridView>
                                           <%-- <div class="row">
                                               <div class="input-field col s12">

                                            <asp:Panel ID="Panel1" runat="server" Visible="true">
                                                <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click1" />
                                                <br />                                                
                                            </asp:Panel>
                                                   </div>
                                             </div>--%>

                                            <div class="row">
                                                <div class="input-field col s12">
                                                    <i class="waves-effect waves-light btn-large waves-input-wrapper">
                                                        <asp:Button runat="server" OnClick="btnSave_Click" ID="btnSave" Text="Submit"/></i>
                                                </div>
                                            </div>
                                            <%--</form>--%>
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
