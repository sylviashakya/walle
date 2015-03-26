<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>login</title>
     <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>

</head>
<body>
    <div class="container">
 <form id="form1" runat="server">
    <div class="jumbotron col-md-4 col-md-offset-4 col-sm-offset-1 login">
     <div class="h2">Login</div>
  
      <div class="form-group">
      <label for="exampleInputEmail1" class="h5">Username</label>
          <asp:TextBox class="form-control try" ID="txtusername" runat="server" placeholder="your name here"></asp:TextBox>
      </div>
 <div class="form-group">
    <label for="exampleInputPassword1" class="h5">Password</label>
    <asp:TextBox class="form-control" type="password" ID="txtpassword" runat="server" placeholder="Password plz"></asp:TextBox>
  </div>
      
   <p><asp:Button ID="Button1" runat="server" class="btn btn-success btn-lg" 
           Text="Login" onclick="Button1_Click"/></p>
      
</div>
 <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
   
   </form>
          </div>
</body>
</html>
