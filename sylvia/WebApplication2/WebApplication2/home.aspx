<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="WebApplication2.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<form id="form1" runat="server">
   <div class="jumbotron">
  <h1>Hello <asp:Label ID="usern" runat="server" Text=""></asp:Label></h1>
       
  <p>You are <asp:Label ID="p1" runat="server" Text=""></asp:Label> and <asp:Label ID="p2" runat="server" Text=""></asp:Label>.</p>
       
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
</asp:Content>
