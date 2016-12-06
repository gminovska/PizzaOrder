<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderDetails.aspx.cs" Inherits="ITC110Assignment10.OrderDetails"  %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Thank you</title>
        <link href="StyleSheet.css" rel="stylesheet" />

</head>
<body>
    <div class="container">
        <h1> Thank you for your order</h1>
        <div id="summary">
        <h2>Order summary</h2>
        <div>
        <span>Pizza size: </span>
        <asp:Label ID="DisplayPizzaSize" runat="server" Text=""></asp:Label>
            </div>
        <div>
        <span>Toppings:</span>
        <asp:Label ID="DisplayPizzaToppings" runat="server" Text=""></asp:Label>
        </div>
        <div>
        <span>Total due:</span>
        <asp:Label ID="DisplayTotal" runat="server" Text=""></asp:Label>
    </div>
            </div>
        <a href="PizzaOrder.aspx">Order Another Pizza</a>
    </div>
</body>
</html>
