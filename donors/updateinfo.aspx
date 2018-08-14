<%@ Page Title="" Language="C#" MasterPageFile="~/donors/donor.master" AutoEventWireup="true" CodeFile="updateinfo.aspx.cs" Inherits="donors_updateinfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="post" Runat="Server">

             <form id="form" runat="server">
                <table class="table">
                    <tr>
                        <td>Name </td>
                        <td>
                        <%--<input type="text" class="form-control">--%>
                        <asp:TextBox ID="txtname" runat="server" CssClass="form-control" ></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Date of birth </td>
                        
                        <td><asp:TextBox runat="server" ID="txtdob" type="date" class="form-control" ></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>Gender </td>
                        <td>
                           <%-- <select name="" id="" class="form-control"> 
                                <option value="male">Male</option>
                                <option value="female">Female</option>
                            </select>--%>
                            <asp:DropDownList ID="cmbGender" runat="server" CssClass="form-control">
                                <asp:ListItem Selected Value="male">Male</asp:ListItem>
                                <asp:ListItem Value="female">Female</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>   
                    <tr>
                        <td>Blood group </td>
                        <td>
                            <asp:DropDownList ID="cmbbg" runat="server" CssClass="form-control">
                                <asp:ListItem Selected value="1">A+</asp:ListItem>
                                <asp:ListItem value="2">A-</asp:ListItem>
                                <asp:ListItem value="3">B+</asp:ListItem>
                                <asp:ListItem value="4">B-</asp:ListItem>
                                <asp:ListItem value="7">O+</asp:ListItem>
                                <asp:ListItem value="8">O-</asp:ListItem>
                                <asp:ListItem value="5">AB+</asp:ListItem>
                                <asp:ListItem value="6">AB-</asp:ListItem>
                            </asp:DropDownList>

                        </td>
                    </tr>   
                    <tr>
                        <td>Address </td>
                        <td>
                            <%--<textarea id="txtaddress" runat="server" cols="30" rows="5" class="form-control"></textarea>--%>
                            <asp:TextBox runat="server" ID="txtaddress" TextMode="MultiLine" Columns="30" Rows="5" CssClass="form-control" ></asp:TextBox>
                        </td>

                    </tr>   
                    <tr>
                        <td>Mobile no. </td>
                        <td><%--<input type="text" class="form-control">--%>
                         <asp:TextBox ID="txtmobile" runat="server" CssClass="form-control" ></asp:TextBox></td>
                    </tr>   
                    <tr>
                        <td>Email </td>
                        <td><%--<input type="text" class="form-control">--%>
                         <asp:TextBox ID="txtemail" runat="server" CssClass="form-control" ></asp:TextBox>
                        </td>
                    </tr>   
                   
                </table>
                <br>

                <div class="row text-center">
                      <asp:Button ID="btnsubmit" CssClass="btn btn-danger" runat="server" 
                            Text="save" onclick="btnsubmit_Click"  />
                </div>
             
             </form>
</asp:Content>

