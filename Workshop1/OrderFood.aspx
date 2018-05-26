<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderFood.aspx.cs" Inherits="Workshop1.Form1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <br />
            Customer Name<br />
            <asp:TextBox ID="Txtbox_Customer" runat="server"></asp:TextBox>
            <br />
            <br />

        </div>
        <div>
            Dish<br />
            &nbsp;<asp:DropDownList ID="DDL_Dish" runat="server">
                <asp:ListItem>Chicken Rice</asp:ListItem>
                <asp:ListItem>Dumpling noodles</asp:ListItem>
                <asp:ListItem>Fish-and-chips</asp:ListItem>
            </asp:DropDownList>
            <br />
        </div>
        <p>
            Size<asp:RadioButtonList ID="RBL_DishSize" runat="server">
                <asp:ListItem>Small</asp:ListItem>
                <asp:ListItem>Regular</asp:ListItem>
                <asp:ListItem>Large</asp:ListItem>
            </asp:RadioButtonList>
        </p>
        <br />
        <div>
            Spices<br />
            <asp:CheckBoxList ID="CBL_Spices" runat="server">
                <asp:ListItem>Chilli</asp:ListItem>
                <asp:ListItem>Pepper</asp:ListItem>
                <asp:ListItem>More Salt</asp:ListItem>
            </asp:CheckBoxList>


        </div>
        <div>
            <asp:Button ID="Btn_Addtocart" runat="server" OnClick="Btn_Addtocart_Click" Text="Add to Cart" /><br />
        </div>
    </form>
    <div>
        <table style="width: 100%;">
            <thead>
                <tr>
                    <td>Dishname</td>
                    <td>DishSize</td>
                    <td>Spices</td>
                </tr>
            </thead>
            <tbody>
                <% foreach (var item in orderlist)
                    {  %>

                <tr>
                    <td><% = item.Dishname %>  </td>
                    <td><% = item.OrderSize %>  </td>
                    <td><%  foreach (var spice in item.Spices)
                            {%>
                        <% = spice + " " %>
                        <% }%>
                    </td>
                </tr>
                <%} %>
            </tbody>

        </table>
    </div>
</body>
</html>
