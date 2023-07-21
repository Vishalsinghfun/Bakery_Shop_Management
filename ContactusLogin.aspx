<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageLogin.master" AutoEventWireup="true" CodeFile="ContactusLogin.aspx.cs" Inherits="ContactusLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
        .auto-style1 {
            text-align: center;
            height: 54px;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            height: 15px;
        }
        .auto-style4 {
            text-align: right;
            width: 534px;
        }
        .auto-style5 {
            height: 15px;
            width: 534px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="background-color:#fd6d6d" class="auto-style1">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:label runat="server" text="Contact Us" ForeColor="Black" Font-Bold="True" Font-Size="XX-Large"></asp:label>
    </h1>

    <table class="auto-style2">
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="#0033CC" Text="For any Query Please Contact Us on this Email &amp; Contact Number"></asp:Label>
            </td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="#0033CC" Text="Email Id:-"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="#0033CC" Text="gokulmehara316846@gmail.com"></asp:Label>
            </td>
        </tr>
         <tr>
            <td class="auto-style4">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="#0033CC" Text="Contact:-"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="#0033CC" Text="8104854829"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

