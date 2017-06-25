<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AspNetWithPaypal.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        function DoThis(form) {
            alert('this form is about to be submitted...');
            form.submit();
        }
    </script>
    <style type="text/css">
        .imgSize
        {
            width: 150px;
            height: 150px;
        }

        table
        {
            border-collapse: collapse;
        }

        table, th, td
        {
            border: 1px solid green;
        }

        .auto-style6
        {
            height: 24px;
        }

        .auto-style7
        {
            height: 36px;
            text-align: center;
            font-weight: 700;
        }

        .auto-style8
        {
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="auto-style1">
        <tr>
            <td class="auto-style7" colspan="5">OUR BOOKS</td>
        </tr>

        <tr>
            <td>
                <img alt="" class="imgSize" src="images/1.jpg" /></td>
            <td>
                <img alt="" class="imgSize" src="images/2.jpg" /></td>
            <td>
                <img alt="" class="imgSize" src="images/3.jpg" /></td>
            <td>
                <img alt="" class="imgSize" src="images/4.jpg" /></td>
            <td>
                <img alt="" class="imgSize" src="images/5.jpg" /></td>
        </tr>
        <tr>
            <td class="auto-style6">Star Trek Into Darkness<br />
                Price: <span class="auto-style8">$12.65</span></td>
            <td>The 5 Love Languages<br />
                Price:&nbsp; <span class="auto-style8">$8.99</span></td>
            <td>The Outsider: A Memoir<br />
                Price:&nbsp; <span class="auto-style8">$17.85</span></td>
            <td>Championship Tennis<br />
                Price:&nbsp; <span class="auto-style8">$13.98</span></td>
            <td>The Best Tennis of Your Life<br />
                Price:&nbsp; <span class="auto-style8">$13.17</span></td>
        </tr>
        <tr>
            <td>
                <asp:ImageButton ID="btnPaypal1" runat="server" ImageUrl="~/images/paypal.png" OnClick="btnPaypal1_Click" /></td>
            <td>
                <asp:ImageButton ID="btnPaypal2" runat="server" ImageUrl="~/images/paypal.png" OnClick="btnPaypal2_Click" /></td>
            <td>
                <asp:ImageButton ID="btnPaypal3" runat="server" ImageUrl="~/images/paypal.png" OnClick="btnPaypal3_Click" /></td>
            <td>
                <asp:ImageButton ID="btnPaypal4" runat="server" ImageUrl="~/images/paypal.png" OnClick="btnPaypal4_Click" /></td>
            <td>
                <asp:ImageButton ID="btnPaypal5" runat="server" ImageUrl="~/images/paypal.png" OnClick="btnPaypal5_Click" /></td>
        </tr>
    </table>

</asp:Content>
