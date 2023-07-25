<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 57%;
            height: 358px;
        }
        .style3
        {
            width: 336px;
            height: 67px;
        }
        .style5
        {
            height: 91px;
        }
        .style6
        {
            height: 31px;
        }
        .style7
        {
            height: 52px;
        }
        .style8
        {
            height: 67px;
        }
        .style9
        {
            width: 336px;
            height: 56px;
        }
        .style10
        {
            height: 56px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table align="center" class="style1">
        <tr>
            <td colspan="2" class="style5">
                <h1 align="center">
                Regitration Form
                </h1></td>
           
        </tr>
        <tr>
            <td class="style3" align="center">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="User Name"></asp:Label>
            </td>
            <td align="center" class="style8">
                <asp:TextBox ID="txtUname" runat="server" Width="171px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style9" align="center">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Password"></asp:Label>
            </td>
            <td class="style10" align="center">
                <asp:TextBox ID="txtPass" runat="server" Width="174px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center" class="style7">
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Medium" 
                    onclick="Button1_Click" Text="Register" Width="130px" />
            </td>
           
        </tr>
        <tr>
            <td colspan="2" align="center" class="style6">
                <asp:Label ID="Label3" runat="server" Font-Bold="True"></asp:Label>
            </td>
           
        </tr>
    </table>
    </form>
    </body>
</html>
