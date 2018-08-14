<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="bloodbank.aspx.cs" Inherits="admin_bloodbank" %>

<%--<asp:Content ID="asfgadg" ContentPlaceHolderID="bb"  runat="server">active</asp:Content>--%>

<%--<asp:Content ID="Content8" ContentPlaceHolderID="donorlist"  runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="adddonor"  runat="server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="remove"  runat="server"></asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="request"  runat="server"></asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="accept"  runat="server"></asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="reject"  runat="server"></asp:Content>
--%>
<asp:Content ID="Content1" ContentPlaceHolderID="post" Runat="Server">

                <div class="row">
                    <div class="col col-md-6">
                        
                        <form runat="server">
                        
                        <table class="table">
                
                            <tr>
                                <td>Blood group </td>
                                <td>
                                  <%--  <select name="" id="" class="form-control">
                                        <option value="A+">A+</option>
                                        <option value="A-">A-</option>
                                        <option value="B+">B+</option>
                                        <option value="B-">B-</option>
                                        <option value="O+">O+</option>
                                        <option value="O-">O-</option>
                                        <option value="AB+">AB+</option>
                                        <option value="AB-">AB-</option>
                                    </select>--%>

                                 <asp:DropDownList ID="cmbbg" runat="server" CssClass="form-control">
                                <asp:ListItem Selected value="A+">A+</asp:ListItem>
                                <asp:ListItem value="A-">A-</asp:ListItem>
                                <asp:ListItem value="B+">B+</asp:ListItem>
                                <asp:ListItem value="B-">B-</asp:ListItem>
                                <asp:ListItem value="O+">O+</asp:ListItem>
                                <asp:ListItem value="O-">O-</asp:ListItem>
                                <asp:ListItem value="AB+">AB+</asp:ListItem>
                                <asp:ListItem value="AB-">AB-</asp:ListItem>
                            </asp:DropDownList>
                                </td>
                            </tr>
                            
                            <tr>
                                <td>Quantity Received</td>
                                <td>
                                    <%--<input type="text" class="form-control">--%>
                                    <asp:TextBox runat="server" ID="txtquantity" CssClass="form-control"></asp:TextBox>

                                </td>
                            </tr>
        
                            <tr>
                                <td class="text-center" colspan="2">
                                   <%-- <button class="btn btn-danger"> Add </button>--%>
                                    <asp:Button runat="server" ID="btnadd" CssClass="btn btn-danger" Text="Add" onclick="btnsubmit_Click" />
                                </td>
                            </tr>
                            
                        </table>
                       
                        <br><Br>

                        
                    </div>
                </div>

                <div class="row">
                    <br><Br>
                    <div class="col-md-12">

                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            DataSourceID="SqlDataSource1" CssClass="table table-striped" GridLines="None">
                            <Columns>
                         
                                <asp:BoundField DataField="bg" HeaderText="Blood group" />
                                <asp:BoundField DataField="quantity" HeaderText="Quantity" 
                                 />
                            </Columns>
                            
                        </asp:GridView>


                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:constr %>" 
                            SelectCommand="SELECT bg,quantity FROM [bloodbank] ">
                        </asp:SqlDataSource>



                    </div>
                </div>
                 </form>

                
</asp:Content>

