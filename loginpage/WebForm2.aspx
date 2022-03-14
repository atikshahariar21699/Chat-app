<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="loginpage.WebForm2" %>

<form id="form1" runat="server">

<div style="font-family: Arial">
<table>
    <tr>
        <td colspan="2">
            <h1>This is WebForm2</h1>
        </td>
    </tr>
    <tr>
        <td>
            <b>Name</b>
        </td>
        <td>
            :<asp:Label ID="lblName" runat="server">
            </asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <b>Email</b>
        </td>
        <td>
            :<asp:Label ID="lblEmail" runat="server">
            </asp:Label>
        </td>
    </tr>
</table>
</div>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
</form>

