<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="passwordrecovery.aspx.cs" Inherits="loginpage.passwordrecovery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 1071px;
            width: 1792px;
        }
        .auto-style2 {
            color: #FFFF99;
            font-size: x-large;
        }
        .auto-style3 {
            color: #FFFF00;
            font-size: x-large;
        }
        .auto-style4 {
            font-size: medium;
        }
    </style>
</head>
<body style="height: 665px">
    <form id="form1" runat="server" class="auto-style1" style="background-image: url('image/microsoft password forgot help.jpg')">
        <div>
            <br class="auto-style2" />
            <span class="auto-style2">Please Write Down Your User Name And We will Send </span><span class="auto-style3">You An Email With Your Recovery Password</span></div>
        <p>
            <asp:TextBox ID="TextBox1" runat="server" Height="29px" Width="629px"></asp:TextBox>
        </p>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style4" OnClick="Button1_Click" Text="Recover password" Width="405px" />
    </form>
</body>
</html>
