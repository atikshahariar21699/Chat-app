<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user_page_webform.aspx.cs" Inherits="loginpage.user_page_webform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 449px;
        }
        .auto-style3 {
            height: 874px;
            width: 1309px;
            margin-right: 292px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style3" style="background-image: url('image/c5c8c1d31ac4d41c1683cacd574e-1449429.jpg')">
            <asp:Label ID="Label1" runat="server" Text="WELCOME...."></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="VISIT THE WEBSITE" />
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="LOGOUT AND GO TO REGISTER" Width="251px" />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="LOG OUT &amp; LOGIN AGAIN" Width="254px" />
            <br />
            <br />
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Start PUBLIC Chat" style="height: 29px" />
        </div>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p class="auto-style1">
            &nbsp;</p>
    </form>
</body>
</html>
