<%@ Page Title="" Language="C#" MasterPageFile="~/donors/donor.master" AutoEventWireup="true" CodeFile="changepassword.aspx.cs" Inherits="donors_changepassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="post" Runat="Server">
<form runat="server">

                <table class="table">
                    
                    <tr>
                        <td>Old Password : </td>
                        <td>
                          <%--  <input type="text" class="form-control">--%>
                            <asp:TextBox runat="server" ID="txtoldpass" CssClass="form-control" ></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>New Password : </td>
                        <td>
                           <%-- <input type="text" class="form-control">--%>
                            <asp:TextBox runat="server" ID="txtpass" CssClass="form-control" ></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Confirm Password : </td>
                        <td>
                            <%--<input type="text" class="form-control">--%>
                            <asp:TextBox runat="server" ID="txtcpass" CssClass="form-control" ></asp:TextBox>
                        </td>
                    </tr>
                    
                </table>
                <br>

                <div class="row text-center">
                    <%--<button class="btn btn-danger"> update </button>--%>
                    <asp:Button runat="server" ID="btnsave" CssClass="btn btn-danger" Text="update" 
                        onclick="btnsave_Click" />
                </div>

</form>
</asp:Content>

