<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PizzaOrder.aspx.cs" Inherits="ITC110Assignment10.PizzaOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pizza Order</title>
    <link href="StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
    <h1>Welcome to Pizza Order</h1>
        <img src="http://res.cloudinary.com/codeococcus/image/upload/c_scale,w_1800/v1480988809/pizza_cpvteh.jpg" alt="Image of Pizza" />
    <form id="PizzaOrder" runat="server" method="post" action="OrderDetails.aspx">
    <div class ="left">
    <h3>Choose your size</h3>
        <asp:RadioButtonList ID="PizzaSizeRadioButtonList" runat="server">
            <asp:ListItem Text="Small - $6" Value="Small" />
            <asp:ListItem Text="Medium - $8" Selected="True" Value="Medium" />
            <asp:ListItem Text ="Large - $10" Value="Large" />
        </asp:RadioButtonList>
        </div>
        <div class="right">
        <h3>Choose your toppings</h3>
        <p>*Each pizza comes with a base of sauce and cheese</p>
        
        <p><input type="checkbox" name="ToppingsCheckBox" value="Ham"/>Ham +$1</p>
        <p><input type="checkbox" name="ToppingsCheckBox" value="Tomatoes"/>Tomatoes +$1</p>
        <p><input type="checkbox" name="ToppingsCheckBox" value="Basil"/>Basil +$1</p>
        <p><input type="checkbox" name="ToppingsCheckBox" value="Mushrooms"/>Mushrooms +$1</p>
        <p><input type="checkbox" name="ToppingsCheckBox" value="Peppers"/>Peppers +$1</p>
        
    </div>
<p><input type="submit" value="Place your order" /></p>
    </form>
</div>
</body>
</html>
