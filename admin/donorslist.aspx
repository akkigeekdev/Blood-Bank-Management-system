<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="donorslist.aspx.cs" Inherits="admin_donorslist" %>

<%--<asp:Content ID="asfgadg" ContentPlaceHolderID="donorlist"  runat="server">active</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="adddonor"  runat="server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="remove"  runat="server"></asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="request"  runat="server"></asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="accept"  runat="server"></asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="reject"  runat="server"></asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="bb"  runat="server"></asp:Content>


--%>



<asp:Content ID="Content1" ContentPlaceHolderID="post" Runat="Server">
     
                <form runat="server">
                    <div class="row">
                    <div class="col col-md-4">
                        <table style="width:100%;">
                            <tr>
                                <td>Search by : </td>
                                <td>
                                  
                                    <asp:DropDownList runat="server" ID="cmbsearchby" CssClass="form-control" >
                                        <asp:ListItem value="id">ID</asp:ListItem>
                                        <asp:ListItem value="name">Name</asp:ListItem>
                                        <asp:ListItem value="bloodgroup">Blood Group</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="col col-md-6">
                        <table style="width:100%;">
                            <tr>
                                <td >Enter search value : </td>
                                <td>
                                  
                                    <asp:TextBox runat="server" ID="txtvalue" CssClass="form-control" ></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="col col-md-2">
                       
                        <asp:Button runat="server" ID="btnsearch" CssClass="btn btn-danger" 
                            Text="search" onclick="btnsearch_Click" />
                    </div>
                </div>
                
                <div class="row">
                    <br><Br>
                    <div class="col-md-12">

                        <asp:GridView ID="donorlist" runat="server" AutoGenerateColumns="False" CssClass="table table-striped" 
                            GridLines="None" AllowPaging="True" AllowSorting="True" >
                     
                            <Columns>
                            <asp:BoundField DataField="id" HeaderText="ID" SortExpression="name" />
                                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                                <asp:BoundField DataField="gender" HeaderText="gender" 
                                    SortExpression="Gender" />
                                <asp:BoundField DataField="bg" HeaderText="Blood group" SortExpression="bg" />
                                <asp:BoundField DataField="number" HeaderText="Mobile" 
                                    SortExpression="number" />
                            </Columns>
                           
                            
                        </asp:GridView>


                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:constr %>" 
                               SelectCommand="SELECT d.[id], d.[name], d.[gender], bb.[bg], d.[number] FROM [donors] d INNER JOIN bloodbank bb on d.bg = bb.id">
                        </asp:SqlDataSource>



                       <%-- <table class="table table-striped">
                            <tr>
                                <th >ID</th>
                                <th>Name</th>
                                <th style="width:200px;">Blood Group</th>
                                <th style="width:200px;">Mobile Number</th>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>Gnana Akilan</td>
                                <td>B-</td>
                                <td>
                                    9029233381
                                </td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>Gnana Akilan</td>
                                <td>B-</td>
                                <td>
                                    9029233381
                                </td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>Gnana Akilan</td>
                                <td>B-</td>
                                <td>
                                    9029233381
                                </td>
                            </tr>
                            
                        </table>--%>

                    </div>
                </div>
                
                </form>

                </asp:Content>

