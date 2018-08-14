<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="request.aspx.cs" Inherits="admin_request" %>


<asp:Content ID="Content8" ContentPlaceHolderID="donorlist"  runat="server"></asp:Content>




<asp:Content ID="Content1" ContentPlaceHolderID="post" Runat="Server">
<form id="Form1" runat="server">
<div class="row">
<style>
.glyphicon{ margin:0 !important}
</style>

                    <!-- <br><Br> -->
                    <div class="col-md-12">

                        Total requests : <strong> <asp:Label runat="server" ID="lblcount"></asp:Label> </strong>
                        <br><br>

                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-striped" 
                            GridLines="None" AllowPaging="True" AllowSorting="True" 
                            onrowcommand="GridView1_RowCommand"   >
                           
                            <Columns>
                            <asp:BoundField DataField="id" HeaderText="Request ID"  />
                            <asp:BoundField DataField="name" HeaderText="Name"  />
                            <asp:BoundField DataField="bg" HeaderText="Blood group" />
                            <asp:BoundField DataField="req_date" HeaderText="Request Date" />
                            <asp:BoundField DataField="req_quantity" HeaderText="Request Quantity" />
                            <asp:templatefield headertext="Action" FooterStyle-Wrap="False">
                            <itemtemplate>
                                <asp:LinkButton  id="FirstNameLabel"
                                CssClass="btn btn-success"    
                                CommandName = '<%# "Accept :" + Eval("id") + "," +   Eval("req_quantity")%>'
                                CommandArgument='<%# ((GridViewRow) Container).RowIndex %>'
                                runat="server">
                                <span aria-hidden="true" class="glyphicon glyphicon-ok"></span>
                                </asp:LinkButton > 

                                <asp:LinkButton  id="LinkButton1"
                                CssClass="btn btn-danger"    
                                 CommandName = '<%# "Reject :" + Eval("id") + "," +   Eval("req_quantity") %>'
                                CommandArgument='<%# ((GridViewRow) Container).RowIndex %>'
                                runat="server">
                                <span aria-hidden="true" class="glyphicon glyphicon-remove"></span>
                                </asp:LinkButton > 
                                
                            </itemtemplate>
                            </asp:templatefield>
                        </Columns>
                            
                            
                        </asp:GridView>


<%--                        <table class="table table-striped">
                            <tr>
                                <th >Request ID</th>
                                <th>Name</th>
                                <th>Date</th>
                                <th>Quantity(in litre)</th>
                                <th style="width:150px;">Action</th>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>Gnana Akilan</td>
                                <td>21-02-2018</td>
                                <td>100</td>
                                <td>
                                    <button class="btn btn-success btn-sm"><span class="glyphicon glyphicon-ok"></span></button>
                                    <button class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-remove"></span></button>
                                </td>
                        </table>--%>

                    </div>
                </div>
                </form>
</asp:Content>

