<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ATIK_SHAHARIAR.aspx.cs" Inherits="loginpage.Friend_list" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 1308px;
        }
        
        .auto-style2 {
            font-size: xx-large;
            color: #0066FF;
        }
        .auto-style3 {
            font-size: x-large;
            color: #993300;
            text-decoration: underline;
        }
        
        .auto-style4 {
            color: #993300;
        }
        
        .auto-style5 {
            color: #CC3300;
        }
        
    </style>
    
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1" style="background-image: url('image/82847.jpg')">
            <br />
            <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text="Welcome..."></asp:Label>
             <br />
            <br />
            <img class="img p" src="A.png" alt="Avatar" style="width:350px">
             <br />
            <br />
            <br />
            <br />
            <span class="auto-style3">FRIEND LIST:</span><br />
             <br />
             <img class="img p" src="R.png" alt="Avatar" style="width:100px">
            <br />
            <span class="auto-style5">Mirazul_Islam</span><br />
             <asp:Button ID="Button1" runat="server" Text="Send_Message" OnClick="Button1_Click" />
             <br />
             <br />
             <br />
            <img class="img p" src="O.png" alt="Avatar" style="width:100px">
            <br />
            <span class="auto-style4">Ovishake_Sen</span><br />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Send_Message" />
        </div>
    </form>
</body>
</html>
