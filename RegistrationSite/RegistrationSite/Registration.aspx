<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="RegistrationSite.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            text-align: right;
            width: 175px;
        }

        .auto-style3 {
            width: 175px;
        }

        .auto-style4 {
            text-align: left;
            width: 221px;
        }

        .auto-style5 {
            width: 221px;
        }

        .auto-style6 {
            text-align: center;
            width: 221px;
        }

        #btnReset {
            width: 70px;
        }
        .auto-style7 {
            font-size: x-large;
        }
        .auto-style8 {
            font-size: small;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="font-family: Arial, Helvetica, sans-serif">
        <span class="auto-style7"><strong>Registration Page</strong></span><br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" style="font-family: Arial, Helvetica, sans-serif">&nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" style="font-family: Arial, Helvetica, sans-serif">User Name:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtUserName" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldUserName" runat="server" ControlToValidate="txtUserName" ErrorMessage="User name is required" ForeColor="Red" CssClass="auto-style8"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="font-family: Arial, Helvetica, sans-serif">E-Mail:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtEmail" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="E-mail is required" ForeColor="Red" CssClass="auto-style8"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please enter a valid e-mail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="auto-style8"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="font-family: Arial, Helvetica, sans-serif">Password:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required" ForeColor="Red" CssClass="auto-style8"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="font-family: Arial, Helvetica, sans-serif">Confirm Password</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldConfirm" runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="Confirm password is required" ForeColor="Red" CssClass="auto-style8"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" ErrorMessage="Passwords do not match" ForeColor="Red" style="font-size: small"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style6">&nbsp;<asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" Width="70px" />
                    &nbsp;&nbsp;

                   <asp:Button ID="btnReset" runat="server" OnClick="btnReset_Click" Text="Reset" Width="70px" UseSubmitBehavior="False" /></td>

                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>