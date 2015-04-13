<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="score.aspx.cs" Inherits="WebApplication2.score" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<form id="Form1" runat="server">
<div class="col-md-3 col-md-offset-1">
<div class="row">
    <div class="thumbnail define">
    <div class="img_wrapper">
      <img src="images/Shego.jpg" height="230px" width="275px" alt="sylvia"></div>
      <div class="caption">
        <h3 class="text-center">Sylvia</h3>
        <br />
        <div class="input-group input-group-lg">
  <div class="input-group-btn">
    <asp:Button ID="Button1" runat="server" Text="<<" class="btn btn-default" 
          onclick="Button1_Click"/>
  </div>
  <asp:TextBox ID="snum" runat="server" type="text" class="form-control input-lg" 
  ></asp:TextBox>
  <div class="input-group-btn">
    <asp:Button ID="Button2" runat="server" Text=">>" class="btn btn-default" 
          onclick="Button2_Click"/>
  </div>
</div>
         
       
      </div>
    </div>
</div>
</div>
<div class="col-md-3"><img src="images/versus.png" height="300px" width="250px" /></div>
<div class="col-md-3">
<div class="row">

    <div class="thumbnail define" >
    <div class="img_wrapper">
      <img src="images/BrokenBat.png" height="230px" width="275px" alt="achyut"></div>
      <div class="caption">
        <h3 class="text-center">Achyut</h3>
        <br />
         <div class="input-group input-group-lg">
  <div class="input-group-btn">
    <asp:Button ID="Button3" runat="server" Text="<<" class="btn btn-default" 
          onclick="Button3_Click"/>
  </div>
  <asp:TextBox ID="anum" runat="server" type="text" class="form-control input-lg" 
                 ></asp:TextBox>
    <div class="input-group-btn">
    <asp:Button ID="Button4" runat="server" Text=">>" class="btn btn-default" 
            onclick="Button4_Click"/>
  </div>
        
      
      </div>
    </div>
    
</div>
</div>
<div class="clearfix"></div>
</div>

</form>

</asp:Content>
