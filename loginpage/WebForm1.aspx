<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="loginpage.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 247px;
            text-align: right;
        }
        .auto-style3 {
            width: 247px;
            height: 26px;
            text-align: right;
        }
        .auto-style4 {
            height: 26px;
        }
        .auto-style5 {
            width: 270px;
        }
        .auto-style6 {
            height: 26px;
            width: 270px;
        }
        .auto-style7 {
            width: 231px;
            text-align: right;
        }
        .auto-style8 {
            font-size: x-large;
        }
        .auto-style9 {
            color: #003300;
        }
        .auto-style11 {
            font-size: medium;
        }
        .auto-style12 {
            width: 257px;
            text-align: right;
        }
        .auto-style13 {
            width: 145px;
            font-weight: bold;
            font-size: medium;
        }
        .auto-style14 {
            width: 247px;
            text-align: right;
            height: 48px;
        }
        .auto-style15 {
            width: 270px;
            height: 48px;
        }
        .auto-style16 {
            height: 48px;
        }
        .auto-style17 {
            width: 100%;
            height: 26px;
        }
        .auto-style18 {
            height: 740px;
        }
    </style>
</head>
<body style="height: 954px">
    <form id="form1" runat="server" style="background-color: #66CCFF; background-image: url('image/c5c8c1d31ac4d41c1683cacd574e-1449429.jpg');" class="auto-style18">
        <table class="auto-style1">
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td><strong><span class="auto-style8"><span class="auto-style9">SIGN UP</span>:</span></strong></td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">USER_NAME:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox1" runat="server" Width="269px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="USERNAME REQUIRED" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">EMAIL:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox2" runat="server" Width="268px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox2" ErrorMessage="EMAIL ADDRESS REQUIRED" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="NOT A VALID  EMAIL" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">PASSWORD:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" Width="267px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox3" ErrorMessage="PASSWORD REQUIRED" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">CONFIRM_PASSWORD:</td>
                <td class="auto-style15">
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" Width="267px"></asp:TextBox>
                </td>
                <td class="auto-style16">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="RETYPE THE PASSWORD AGAIN" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox4" ErrorMessage="BOTH PASSWORD MUST BE SAME" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">GENDER:</td>
                <td class="auto-style6">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="275px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>MALE</asp:ListItem>
                        <asp:ListItem>FEMALE</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList1" ErrorMessage="GENDEAR REQUIRED" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">COUNTRY:</td>
                <td class="auto-style5">
                    <asp:DropDownList ID="DropDownList2" runat="server" Width="276px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>AFRICA</asp:ListItem>
                        <asp:ListItem>BANGLADESH</asp:ListItem>
                        <asp:ListItem>CANADA</asp:ListItem>
                        <asp:ListItem>DENMArK</asp:ListItem>
                        <asp:ListItem>ENGLAND</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownList2" ErrorMessage="COUNTRY REQUIRED" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">OCCUPATION:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox5" runat="server" Width="268px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox5" ErrorMessage="OCCUPATION REQUIRED" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <table class="auto-style17">
            <tr>
                <td class="auto-style12">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style11" OnClick="Button1_Click" Text="SUBMIT" Width="160px" />
                </td>
                <td><strong>
                    <input id="Reset1" class="auto-style13" type="reset" value="RESET" /></strong></td>
            </tr>
        </table>
    </form>
</body>
</html>
