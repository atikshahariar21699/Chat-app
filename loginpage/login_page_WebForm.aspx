<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login_page_WebForm.aspx.cs" Inherits="loginpage.login_page_WebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: xx-large;
            color: #FFFF66;
        }
        .auto-style2 {
            width: 100%;
            margin-bottom: 87px;
        }
        .auto-style3 {
            font-size: medium;
        }
        .auto-style4 {
            text-align: right;
        }
        .auto-style5 {
            text-align: right;
            width: 379px;
        }
        .auto-style6 {
            text-align: left;
            width: 261px;
        }
        .auto-style7 {
            margin-left: 0px;
        }
        .auto-style8 {
            text-align: justify;
            width: 261px;
        }
        .auto-style9 {
            width: 379px;
            height: 45px;
            text-align: right;
        }
        .auto-style10 {
            text-align: left;
            width: 261px;
            height: 45px;
        }
        .auto-style11 {
            text-align: right;
            height: 45px;
        }
        .auto-style12 {
            text-align: justify;
        }
        .auto-style13 {
            color: #006699;
            font-size: large;
            margin-left: 0px;
        }
        .auto-style14 {
            height: 1085px;
            margin-right: 0px;
        }
        .auto-style15 {
            text-align: right;
            width: 379px;
            color: #FFFF99;
        }
        .auto-style16 {
            color: #FF9999;
        }
    </style>
</head>
<body style="height: 742px">
    <form id="form1" runat="server" class="auto-style14" style="background-image: url('image/23SDac.jpg')">
        <div class="auto-style1">
            <strong>LOGIN </strong></div>
        <table class="auto-style2">
                <tr class="auto-style3">
                    <td class="auto-style15">USER NAME :</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style7" OnTextChanged="TextBox1_TextChanged" Width="250px"></asp:TextBox>
                    </td>
                    <td class="auto-style12">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="PLEASE ENTER USER NAME" ForeColor="Red" CssClass="auto-style16"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr class="auto-style3">
                    <td class="auto-style15">PASSWORD : </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="247px"></asp:TextBox>
                    </td>
                    <td class="auto-style12">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="PLEASE ENTER PASSWORD" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr class="auto-style3">
                    <td class="auto-style9"></td>
                    <td class="auto-style10"><strong>
                        <asp:Button ID="Button_Login" runat="server" CssClass="auto-style13" OnClick="Button_Login_Click" Text="LOG IN" Width="114px" />
                        </strong></td>
                    <td class="auto-style11"></td>
                </tr>
                <tr class="auto-style3">
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style6">
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style7" Height="27px" OnClick="Button1_Click" Text="Forget Password" Width="226px" />
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
            </table>
    </form>
</body>
</html>
