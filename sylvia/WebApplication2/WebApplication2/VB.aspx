<%@ Page Language="VB" AutoEventWireup="false" CodeFile="VB.aspx.vb" Inherits="VB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>GridView Paging Example</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:GridView ID="GridView1" runat="server" 
        AutoGenerateColumns = "false" Font-Names = "Arial" 
        Font-Size = "11pt" AlternatingRowStyle-BackColor = "#C2D69B"  
        HeaderStyle-BackColor = "green" AllowPaging ="true"   
        OnPageIndexChanging = "OnPaging" 
        PageSize = "10" >
       <Columns>
        <asp:BoundField ItemStyle-Width = "150px" DataField = "CustomerID" HeaderText = "CustomerID" />
        <asp:BoundField ItemStyle-Width = "150px" DataField = "City" HeaderText = "City"/>
        <asp:BoundField ItemStyle-Width = "150px" DataField = "Country" HeaderText = "Country"/>
        <asp:BoundField ItemStyle-Width = "150px" DataField = "PostalCode" HeaderText = "PostalCode"/>
       </Columns> 
       <AlternatingRowStyle BackColor="#C2D69B"  />
    </asp:GridView>     
    </div>
    </form>
</body>
</html>
