<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true" CodeFile="ViewDetails.aspx.cs" Inherits="ViewDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 385px;
            text-align: right;
        }
        .auto-style3 {
            width: 100%;
            height: 235px;
        }
        .auto-style4 {
            width: 292px;
        }
        .auto-style5 {
            width: 292px;
            text-align: right;
        }
        .auto-style6 {
             
            text-align: center;
            height: 54px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="background-color:#fd6d6d" class="auto-style6" >
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:label runat="server" text="Product Detail" ForeColor="Black" Font-Bold="True" Font-Size="XX-Large"></asp:label>
    </h1>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">
                <asp:Image ID="Image1" runat="server" Height="307px" Width="195px" />
            </td>
            <td>
                <table class="auto-style3">
                    <tr>
                        <td class="auto-style5">
                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" Text="Product Name:-"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblProductName" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" Text="Type:-"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblType" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Large" Text="Detail:-"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblDetails" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" Text="Price:-"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblPrice" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Large" Text="Food Type:-"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblFoodType" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                        </td>
                    </tr>
                  
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td>
                            <asp:Button ID="Button1" runat="server" BackColor="Black" BorderColor="#333333" Font-Bold="True" Font-Size="Medium" Text="Back" ForeColor="White" OnClick="Button1_Click" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

