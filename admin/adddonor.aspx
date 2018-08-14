<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="adddonor.aspx.cs" Inherits="admin_adddonor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="post" Runat="Server">
    <form id="Form1" runat="server">

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
                        <td><asp:TextBox id="txtdob" runat="server" type="date" class="form-control" value="1993-01-01"></asp:TextBox></td>
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
                                <asp:ListItem value="5">O+</asp:ListItem>
                                <asp:ListItem value="7">O-</asp:ListItem>
                                <asp:ListItem value="8">AB+</asp:ListItem>
                                <asp:ListItem value="9">AB-</asp:ListItem>
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
                         <asp:TextBox ID="txtmobile" runat="server" CssClass="form-control" ></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="txtmobile" ErrorMessage="Please enter mobile number" 
                                ForeColor="Red" ></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ErrorMessage="Please enter valid mobile number" ControlToValidate="txtmobile" 
                                ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                                </td>
                          
                    </tr>   
                    <tr>
                        <td>Email </td>
                        <td><%--<input type="text" class="form-control">--%>
                         <asp:TextBox ID="txtemail" runat="server" CssClass="form-control" ></asp:TextBox>
                          <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                ControlToValidate="txtemail" ErrorMessage="Enter valid email address" 
                                ForeColor="Red" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>   
                    <tr>
                        <td>Password </td>
                        <td><%--<input type="password" class="form-control">--%>
                         <asp:TextBox ID="txtpassword" runat="server" CssClass="form-control" ></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtpassword" ErrorMessage="Please enter password" 
                                ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>   
                    <tr>
                        <td>Confirm password </td>
                        <td><%--<input type="password" class="form-control">--%>
                         <asp:TextBox ID="txtcpassword" runat="server" CssClass="form-control" ></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="txtcpassword" ErrorMessage="please enter password" 
                                ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                ControlToCompare="txtpassword" ControlToValidate="txtcpassword" 
                                ErrorMessage="Password does not match" ForeColor="Red"></asp:CompareValidator>
                        </td>
                    </tr>   
                </table>
                <br>

                    <div class="row text-center">
                        <%--<button class="btn btn-danger"> Register </button>--%>
                        <asp:Button ID="btnsubmit" CssClass="btn btn-danger" runat="server" 
                            Text="Register" onclick="btnsubmit_Click"/>
                    </div>
                    <br>
                </form>
</asp:Content>

