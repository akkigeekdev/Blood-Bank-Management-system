<%@ Page Title="" Language="C#" MasterPageFile="~/donors/donor.master" AutoEventWireup="true" CodeFile="request.aspx.cs" Inherits="donors_request" %>

<asp:Content ID="Content1" ContentPlaceHolderID="post" Runat="Server">
<div class="row">
                    
                    <div class="col col-md-6">
                        <form runat="server">
                        <table class="table">
                            <tr>
                                <td >Blood group : </td>
                                <td>
                                   <%-- <select  class="form-control" >  
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
                                <asp:ListItem Selected value="1">A+</asp:ListItem>
                                <asp:ListItem value="2">A-</asp:ListItem>
                                <asp:ListItem value="3">B+</asp:ListItem>
                                <asp:ListItem value="4">B-</asp:ListItem>
                                <asp:ListItem value="5">O+</asp:ListItem>
                                <asp:ListItem value="7">O-</asp:ListItem>
                                <asp:ListItem value="8">AB+</asp:ListItem>
                                <asp:ListItem value="9">AB-</asp:ListItem>
                            </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>Quantity </td>
                                <td>
                                    <%--<input type="text" class="form-control" >--%>
                                    <asp:TextBox runat="server" ID="txtquantity" CssClass="form-control" 
                                        MaxLength="3" ></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ControlToValidate="txtquantity" ErrorMessage="Please enter a value" 
                                        ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>Remarks</td>
                                <td>
                                    <%--<textarea rows="5" class="form-control"></textarea>--%>
                                    <asp:TextBox runat="server" ID="txtremarks" CssClass="form-control" TextMode="MultiLine" Rows="5"></asp:TextBox>
                                    
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                        ControlToValidate="txtremarks" ErrorMessage="Please enter remark" 
                                        ForeColor="Red"></asp:RequiredFieldValidator>
                                    
                                </td>
                            </tr>
                            <tr> 
                                <td colspan="2" class="text-center">
                                    <%--<button class="btn btn-danger">
                                        <!-- <span class="glyphicon glyphicon-search"></span> -->
                                        Send Request
                                    </button>--%>
                                    <asp:Button runat="server" ID="btnsubmit" CssClass="btn btn-danger" 
                                        Text="send Request" onclick="btnsubmit_Click" />
                                </td>
                            </tr>
                        </table>
                        
                        </form>
                    </div>
                </div>
</asp:Content>

