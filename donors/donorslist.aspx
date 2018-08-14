<%@ Page Title="" Language="C#" MasterPageFile="~/donors/donor.master" AutoEventWireup="true" CodeFile="donorslist.aspx.cs" Inherits="donors_donorslist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="post" Runat="Server">
  

  <form runat="server">
  
  <div class="row">
                    <div class="col col-md-4">
                        <table style="width:100%;">
                            <tr>
                                <td>Search by : </td>
                                <td>
                                    <%--<select name="" id="" class="form-control">
                                        <option value="id">ID</option>
                                        <option value="name">Name</option>
                                        <option value="bloodgroup">Blood Group</option>
                                    </select>--%>
                                    <asp:DropDownList runat="server" ID="cmbsearch" >
                                        <asp:ListItem value="id" Selected>ID</asp:ListItem>
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
                                    <%--<input type="text" class="form-control">--%>
                                    <asp:TextBox runat="server" ID="txtvalue" CssClass="form-control" ></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="col col-md-2">
                        <%--<button class="btn btn-danger">
                            <span class="glyphicon glyphicon-search" style="margin-right:10px;"> </span>    search
                        </button>--%>
                        <asp:Button runat="server" ID="btnsearch" CssClass="btn btn-danger" Text="search" />
                    </div>
                </div>
  
  
  </form>

                <div class="row">
                    <br><Br>
                    <div class="col-md-12">

                        <table class="table table-striped">
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
                            
                        </table>

                    </div>
                </div>
</asp:Content>

