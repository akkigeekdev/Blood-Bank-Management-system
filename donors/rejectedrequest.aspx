<%@ Page Title="" Language="C#" MasterPageFile="~/donors/donor.master" AutoEventWireup="true" CodeFile="rejectedrequest.aspx.cs" Inherits="donors_rejectedrequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="post" Runat="Server">
  
                <form runat="server" >
                
                <div class="row">
                   
                    <div class="col col-md-6">
                        <table style="width:100%;">
                            <tr>
                                    <td >Enter request ID : </td>
                                <td>
                                    <%--<input type="text" class="form-control">--%>
                                    <asp:TextBox runat="server" ID="txtid" CssClass="form-control" ></asp:TextBox>
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

                

                <div class="row">
                    <br><Br>
                    <div class="col-md-12">

                        
                       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-striped" 
                            GridLines="None" AllowPaging="True" AllowSorting="True" 
                           
                            CellPadding="2"  >
                            <Columns>
                             <asp:BoundField DataField="id" HeaderText="Request Id" 
                             />
                            <asp:BoundField DataField="bg" HeaderText="bg" />
                            <asp:BoundField DataField="req_quantity" HeaderText="req_quantity" 
                             />
                            <asp:BoundField DataField="req_date" HeaderText="req_date" 
                              />
                            <asp:BoundField DataField="status" HeaderText="status" 
                               />
                            <asp:BoundField DataField="status_date" HeaderText="status_date" 
                             />
                        </Columns>
                         
                        </asp:GridView>

                    </div>
                </div>
                </form>
</asp:Content>

