<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="acceptedrequest.aspx.cs" Inherits="admin_acceptedrequest" %>




<asp:Content ID="Content8" ContentPlaceHolderID="donorlist"  runat="server"></asp:Content>



<asp:Content ID="Content1" ContentPlaceHolderID="post" Runat="Server">

<form runat="server">

   <div class="row">
                    
                    <div class="col col-md-6">
                        <table style="width:100%;">
                            <tr>
                                    <td >Enter request ID : </td>
                                <td>
                                   <%-- <input type="text" class="form-control">--%>
                                    <asp:TextBox runat="server" ID="txtvalue" CssClass="form-control" ></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="col col-md-2">
                        <%--<button class="btn btn-danger">
                            <span class="glyphicon glyphicon-search" style="margin-right:10px;"> </span>    search
                        </button>--%>

                        <asp:Button runat="server" ID="btnsearch" Text="search" 
                            CssClass="btn btn-danger" onclick="btnsearch_Click" />
                    </div>
                    



                              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-striped" 
                            GridLines="None" AllowPaging="True" AllowSorting="True" >
                          
                            <Columns>
                            <asp:BoundField DataField="id" HeaderText="brequest ID" />
                               <asp:BoundField DataField="name" HeaderText="Name" 
                                />
                            <asp:BoundField DataField="bg" HeaderText="Blood group"  />
                         
                            <asp:BoundField DataField="req_quantity" HeaderText="req_quantity" 
                                />
                            <asp:BoundField DataField="req_date" HeaderText="req_date" 
                                />
                            <asp:BoundField DataField="status_date" HeaderText="Accepted Date" 
                                />
                        </Columns>
                           
                            
                        </asp:GridView>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:constr %>" 
                        SelectCommand="SELECT [bg], [req_quantity], [req_date], [status], [status_date] FROM [request] WHERE ([status] = @status)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="0" Name="status" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>

</form>


              
</asp:Content>

