<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="RegistrationSite.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }

        .auto-style2 {
            width: 100%;
        }

        .auto-style4 {
            width: 219px;
            font-size: medium;
            text-align: right;
        }

        .auto-style5 {
            width: 133px;
            text-align: center;
        }

        #btnSubmit {
        }

        #btnLoginSubmit {
            width: 80px;
        }

        #btnLogin {
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">

            <strong style="font-family: Arial, Helvetica, sans-serif">Login Page<br />
            </strong>
            <table class="auto-style2" style="font-family: Arial, Helvetica, sans-serif">
                <tr>
                    <td class="auto-style4" style="font-family: Arial, Helvetica, sans-serif">UserName:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtLoginUserName" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldLoginUserName" runat="server" ControlToValidate="txtLoginUserName" ErrorMessage="Please enter username" ForeColor="Red" Style="font-size: small"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" style="font-family: Arial, Helvetica, sans-serif">Password:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtLoginPassword" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldLoginPassword" runat="server" ControlToValidate="txtLoginPassword" ErrorMessage="Please enter password" ForeColor="Red" Style="font-size: small"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" style="font-family: Arial, Helvetica, sans-serif">&nbsp;</td>
                    <td class="auto-style5">

                        <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" Width="129px" Height="25px" />
                        <br />
                    </td>

                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <table class="auto-style2">
            <tr>
                <td style="text-align: center; font-family: Arial, Helvetica, sans-serif;">
                    <asp:HyperLink ID="HyperLinkRegister" runat="server" NavigateUrl="~/Registration.aspx" style="font-size: small">Register here</asp:HyperLink>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>