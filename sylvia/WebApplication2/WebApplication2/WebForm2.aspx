<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication2.WebForm2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>page</title>
     <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
       <script src="js/jquery-1.11.2.js" type="text/javascript"></script>
        <script src="js/bootstrap.js" type="text/javascript"></script>
</head>
<body class="page_body">
    
    <div class="container" >
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
  <!-- Brand and toggle get grouped for better mobile display -->
  <div class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
      <span class="sr-only">Toggle navigation</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
    <a class="navbar-brand" href="#">Acylv</a>
  </div>

  <!-- Collect the nav links, forms, and other content for toggling -->
  <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li><a href="#">Post</a></li>
        <li><a href="#">Todo List</a></li>
        <li><a href="#">Check this out</a></li>
        <li><a href="#">Rubik's cube scoreboard</a></li>
     </ul>
  
    
  </div><!-- /.navbar-collapse -->
</nav>
<form id="form1" runat="server">
   <div class="jumbotron">
  <h1>Hello <asp:Label ID="usern" runat="server" Text=""></asp:Label></h1>
       
  <p>Your are <asp:Label ID="p1" runat="server" Text=""></asp:Label> and <asp:Label ID="p2" runat="server" Text=""></asp:Label>.</p>
       
  <p><asp:Button ID="Button1" runat="server" CssClass="btn btn-primary btn-lg" 
          Text="Logout" onclick="Button1_Click" /></p>
</div>
   <div class="block_wrapper col-md-3">
   <div class="block_header row text-center">
   To Do List
   </div>
   <div class="block">
   <ul class="list-group">
  <li class="list-group-item">Cras justo odio</li>
  <li class="list-group-item">Dapibus ac facilisis in</li>
  <li class="list-group-item">Morbi leo risus</li>
  <li class="list-group-item">Porta ac consectetur ac</li>
  <li class="list-group-item">Vestibulum at eros</li>
</ul>
   </div>
   
   </div>
    <div class="block_wrapper col-md-5">
    <div class="block_header row text-center">
   Posts
   </div>
   <div class="block">
   <div class="well">Post</div>
   </div>
   
   </div>
    <div class="block_wrapper col-md-3">
    <div class="block_header row text-center">
   Check this out!
   </div>
   <div class="block">
   <ul class="list-group">
  <li class="list-group-item">Cras justo odio</li>
  <li class="list-group-item">Dapibus ac facilisis in</li>
  <li class="list-group-item">Morbi leo risus</li>
  <li class="list-group-item">Porta ac consectetur ac</li>
  <li class="list-group-item">Vestibulum at eros</li>
</ul>
   </div>
   
   </div>
   </form>
    </div>
    
</body>
</html>
