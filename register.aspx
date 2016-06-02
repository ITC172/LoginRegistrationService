<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>

            <tr>
            <td>Venue Name</td>
            <td><asp:TextBox ID=VenueNameEntry runat="server"></asp:TextBox></td>
               <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="VenueNameEntry" ErrorMessage="Venue Name is Required"></asp:RequiredFieldValidator></td>
            </tr>
            <tr><td>Address</td><td><asp:TextBox ID=VenueAddressEntry runat="server"></asp:TextBox></td><td></td></tr>
            
            <tr><td>City</td><td><asp:TextBox ID=VenueCityEntry runat="server"></asp:TextBox></td><td></td></tr>
            
            <tr><td>State</td><td><asp:TextBox ID=VenueStateEntry runat="server"></asp:TextBox></td><td></td></tr>
            
            <tr><td>Zip</td><td><asp:TextBox ID=VenueZipEntry runat="server"></asp:TextBox></td><td></td></tr>
            

            <tr><td>Phone</td><td><asp:TextBox ID=VenuePhoneEntry runat="server"></asp:TextBox></td><td></td></tr>
            

            <tr><td class="auto-style1">Email</td><td class="auto-style1"><asp:TextBox ID=VenueEmailEntry runat="server"></asp:TextBox></td><td class="auto-style1">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"  ControlToValidate="VenueEmailEntry" ErrorMessage="Not a valid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator> </td></tr>
            
            <tr><td>Webpage</td><td><asp:TextBox ID=VenueWebEntry runat="server"></asp:TextBox></td><td></td></tr>
            
            <tr><td>Age Restriction</td><td><asp:TextBox ID=VenueAgeEntry runat="server"></asp:TextBox></td><td></td></tr>
            
            <tr><td>Username</td><td>
            <asp:TextBox ID=VenueUsernameEntry runat="server"></asp:TextBox></td><td></td></tr>

            <tr><td>Password</td><td>
            <asp:TextBox ID=VenuePasswordEntry runat="server"></asp:TextBox></td><td></td></tr>
            <tr><td>
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" /></td>
                <td>
                    <asp:Label ID="errorDisplay" runat="server" Text=""></asp:Label><td></td></td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
