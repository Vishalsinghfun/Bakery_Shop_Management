<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="ViewOrderDetailAdmin.aspx.cs" Inherits="ViewOrderDetailAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 454px;
            height: 15px;
        }
        .auto-style3 {
            width: 454px;
            text-align: center;
            height: 256px;
        }
        .auto-style4 {
            text-align: right;
            width: 170px;
        }
        .auto-style5 {
            height: 15px;
        }
        .auto-style6 {
            height: 256px;
        }
        .auto-style7 {
           text-align: center;
            height: 54px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="background-color:#fd6d6d" class="auto-style7" >
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:label runat="server" text="Order Detail" ForeColor="Black" Font-Bold="True" Font-Size="XX-Large"></asp:label>
    </h1>

    <table class="auto-style1">
        <tr>
            <td class="auto-style3">
                <asp:Image ID="Image1" runat="server" Height="252px" Width="247px" />
            </td>
            <td class="auto-style6">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#FF66FF" Text="Product Detail"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" Text="Product Name:-"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblProdutName" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" Text="Product Price:-"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblProductPrice" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" Text="Order Date:-"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblOrderDate" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" Text="Delivery Date:-"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblDeliveryDate" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                        </td>
                    </tr>
                     <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Large" Text="Quantity:-"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblQuantity" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                        </td>
                    </tr>
                     <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Large" Text="Product Type:-"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblProductType" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                        </td>
                    </tr>
                     <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Large" Text="Food Type:-"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblProductFoodType" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                        </td>
                    </tr>
                     <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Size="Large" Text="Description:-"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblDescription" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style5"><table class="auto-style1">
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#FF66FF" Text="Customer Detail"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="Large" Text="CustomerName:-"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblCustomerName" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="Large" Text="Address:-"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblAddress" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Size="Large" Text="Customer Number:-"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblCustomerContact" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                        </td>

                    </tr>
                
                    
                </table>

                <br />
                <asp:Button ID="Button1" runat="server" BackColor="Fuchsia" BorderColor="#FF66FF" Font-Bold="True" Font-Size="Medium" Text="Back" OnClick="Button1_Click" />

            </td>
        </tr>
    </table>

</asp:Content>

