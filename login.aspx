<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>
<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Blood Bank Management</title>
    <!-- <link rel="stylesheet" href="~/../css/bootstrap.css" > -->
    <link rel="stylesheet" href="css/bootstrap.css">
    <style>
        header{
            padding: 10px 20px;
            background-color: #e74c3c;
            color: white;
        }
        .btn.btn-danger{background-color: #e74c3c}

        .login{
            box-shadow: 0 0 1px #e74c3c;
            padding: 50px;
        }
        .title{
            
            color: #e74c3c;
        }
        
    </style>
</head>
<body>
    
    <header>
        <h2>Blood Bank Management System</h2>
    </header>

    <section>
        <br><Br><Br>

        <div class="row">
            <div class="col col-md-4"></div>
            <div class="col-md-4 login">
                <form runat="server">
                    <div class="row title text-center" >
                        <span style="font-size: xx-large;">Save a life </span>
                        <br>
                        Give blood
                    
                    </div> <br>
                    <asp:TextBox ID="username" CssClass="form-control" runat="server" placeholder="user name" ></asp:TextBox> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="username" ErrorMessage="Please enter a name" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="password" CssClass="form-control" runat="server" placeholder="password" type="password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="password" ErrorMessage="Please enter password" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                    <br>
                    <center>
                        <asp:Button runat="server" CssClass="btn btn-danger" Text="Login" id="btnLogin" 
                            onclick="btnLogin_Click" />
                        </center>
                </form>
                <div class="row text-center">
                    <br>
                    <a href="register.aspx" class=""><span class="glyphicon glyphicon-user"> </span> Register now as Donor</a>
                </div>
            </div>

        </div>
        
    </section>

</body>
</html>
