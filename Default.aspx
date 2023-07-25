<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1 {
            width: 47%;
            height: 274px;
        }
        .style2
        {
            width: 48%;
            height: 44px;
            font-weight: bold;
            text-align: center;
            font-size: large;
        }
        .style3
        {
            width: 54%;
            height: 44px;
        }
        .style5
        {
            width: 54%;
            height: 54px;
        }
        .style6
        {
            width: 48%;
            height: 54px;
            font-weight: bold;
            text-align: center;
            font-size: large;
        }
        .style8
        {
            width: 54%;
        }
    </style>
</head>
<body>
    
    <form id="form1" runat="server">
    <div>
    <h1 align="center" >
        Login Form</h1>
    </div>
    <table class="style1" align="center" >
        <tr>
            <td class="style6">
                User Name</td>
            <td class="style5" align="center">
                <asp:TextBox ID="TextBox1" runat="server" 
                    style="text-align: left; font-size: medium"></asp:TextBox>
&nbsp;
                </td>
        </tr>
        <tr>
            <td class="style2">
                Password</td>
            <td class="style3" align="center">
                <asp:TextBox ID="TextBox2" runat="server" 
                    style="text-align: left; font-size: medium"></asp:TextBox>
&nbsp;
                </td>
        </tr>
        <tr>
           
            <td align="center" class="style8" colspan="2">
                <asp:LinkButton ID="LinkButton1" runat="server" 
                    PostBackUrl="~/Registration.aspx">Don&#39;t Have Account Click Here</asp:LinkButton>
            </td>
           
        </tr>
        <tr>
           
            <td align="center" class="style8" colspan="2">
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Medium" 
                    onclick="Button1_Click" Text="LOGIN" Height="29px" Width="106px" />
            </td>
           
        </tr>
    </table>
    <p>
        &nbsp;</p>
    </form>
    </body>
</html>
