﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaypalProcess.aspx.cs" Inherits="AspNetWithPaypal.PaypalProcess" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="scripts/jquery.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            setTimeout(function () {
                //alert('this form is about to be submitted...');
                $('#frmPaypal').submit();
            }, 1000);
        });
    </script>

    <style type="text/css">
        .auto-style1
        {
            width: 100%;
        }

        .ajaxloader_style
        {
            text-align: center;
        }

        .auto-style2
        {
            width: 486px;
        }
    </style>
</head>
<body>
    <form id="frmPaypal" method="post" action="https://www.paypal.com/cgi-bin/webscr" runat="server">
        <input type="hidden" name="cmd" value="_xclick" />
        <input type="hidden" name="business" value="<%= this.BusinessValue %>" />
        <input type="hidden" name="item_name" value="<%= this.ItemNameValue %>" />
        <input type="hidden" name="item_number" value="<%= this.ItemNumberValue %>" />
        <input type="hidden" name="amount" value="<%= this.AmountValue %>" />
        <input type="hidden" name="no_shipping" value="<%= this.NoShippingValue %>" />
        <input type="hidden" name="quantity" value="<%= this.QuantityValue %>" />
    </form>

    <table class="auto-style1">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <img class="ajaxloader_style" src='<%=ResolveUrl("~/images/ajax_loader.gif")%>' width="100" height="100" /></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</body>
</html>
