<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="removedonor.aspx.cs" Inherits="admin_removedonor" %>

<%--<asp:Content ID="asfgadg" ContentPlaceHolderID="remove"  runat="server">active</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="donorlist"  runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="adddonor"  runat="server"></asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="request"  runat="server"></asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="accept"  runat="server"></asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="reject"  runat="server"></asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="bb"  runat="server"></asp:Content>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="post" Runat="Server">
  <form id="Form1" runat="server">
                    <div class="row">
                          
                            
                            <div class="col col-md-6">
                                <table style="width:100%;">
                                    <tr>
                                        <td>Enter donor Id : </td>
                                        <td>
                                            <%--<input type="text" class="form-control">--%>
                                            <asp:TextBox runat="server" ID="txtid" CssClass="form-control" ></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            
                            <div class="col col-md-4">
                                <%--<button class="btn btn-danger">
                                    <span class="glyphicon glyphicon-search" style="margin-right:10px;"> </span>    search
                                </button>--%>
                                <asp:Button runat="server" ID="btnsearch" CssClass="btn btn-danger" 
                                    Text="search" onclick="btnsearch_Click" />
                                    <asp:Button  runat="server" ID="btnshowall" CssClass="btn btn-danger" 
                                    Text="Show all" onclick="btnshowall_Click"/>
                            </div>
                            
                            
                        </div>
        
                         <div class="row">
                    <br><Br>
                    <div class="col-md-12">

                        <asp:GridView ID="donorlist" runat="server" AutoGenerateColumns="False" CssClass="table table-striped" 
                            GridLines="None" AllowPaging="True" AllowSorting="True" >
                           
                            <Columns>
                             <asp:BoundField DataField="id" HeaderText="Id" SortExpression="name" />
                                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                                <asp:BoundField DataField="gender" HeaderText="gender" 
                                    SortExpression="gender" />
                                <asp:BoundField DataField="bg" HeaderText="Blood group" SortExpression="bg" />
                                <asp:BoundField DataField="number" HeaderText="number" 
                                    SortExpression="number" />
                             
                            </Columns>
                            
                            
                        </asp:GridView>


                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:constr %>" 
                               SelectCommand="SELECT d.[name], d.[gender], bb.[bg], d.[number] FROM [donors] d INNER JOIN bloodbank bb on d.bg = bb.id">
                        </asp:SqlDataSource>




                    </div>
                </div>
                 <div class="col col-md-12 text-center">
                                <%--<button class="btn btn-danger">Confirm remove</button>--%>
                                 <asp:Button runat="server" ID="btnconfirm" CssClass="btn btn-danger" 
                                    Text="Confirm remove" Visible="false" onclick="btnconfirm_Click" />
                                    
                            </div>
                        </form>
                
</asp:Content>

