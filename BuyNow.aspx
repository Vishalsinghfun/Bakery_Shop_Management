<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true" CodeFile="BuyNow.aspx.cs" Inherits="BuyNow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            height: 54px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <h1 style="background-color:#fd6d6d" class="auto-style1">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:label runat="server" text="Buy Now" ForeColor="Black" Font-Bold="True" Font-Size="XX-Large"></asp:label>
    </h1>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" Font-Bold="True" Font-Size="Large" ForeColor="Black" GridLines="Vertical" ShowFooter="True">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="sno" HeaderText="S.No" />
            <asp:BoundField DataField="pr_id" HeaderText="Product Id" />
            <asp:ImageField DataImageUrlField="pr_Image" HeaderText="Image">
            </asp:ImageField>
            <asp:BoundField DataField="pr_Name" HeaderText="Product Name" />
            <asp:BoundField DataField="pr_Type" HeaderText="Type" />
            <asp:BoundField DataField="pr_Price" HeaderText="Price" />
            <asp:BoundField DataField="quantity" HeaderText="Quantity" />
            <asp:BoundField DataField="totalprice" HeaderText="Total Price" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" Height="50px" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
     </asp:GridView>
     <asp:MultiView ID="MultiView1" runat="server">
         <asp:View ID="viewMeasurmentDetails" runat="server">
             <table class="auto-style1">
                 <tr>
                     <td class="auto-style15">
                         <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Order Detail"></asp:Label>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style16">
                         <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="Medium" Text="Ordering Date:-"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lblOrderingDate" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style16">
                         <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Size="Medium" Text="Delivery Date:-"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lblDeliveryDate" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style18">&nbsp;</td>
                     <td>
                         <asp:Button ID="btnGoToStep2" runat="server" onclick="btnGoToStep2_Click" Text="Step 2 &gt;&gt;" BackColor="#FF66FF" BorderColor="#FF99FF" />
                     </td>
                 </tr>
             </table>
         </asp:View>
         <asp:View ID="View2" runat="server">
             <table class="auto-style1">
                 <tr>
                     <td class="auto-style22">
                         <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Payment Detail"></asp:Label>
                     </td>
                     <td>&nbsp;</td>
                 </tr>
                 <tr>
                     <td class="auto-style21">
                         <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Size="Medium" Text="Payment Type:-"></asp:Label>
                     </td>
                     <td class="auto-style4">
                         <asp:Label ID="lblPayType" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
                     </td>
                 </tr>
                 
                 
                 <tr>
                     <td class="auto-style23">&nbsp;
                         <asp:Button ID="btnBackToStep1" runat="server" onclick="btnBackToStep1_Click" Text="&lt;&lt; Step 1" BackColor="#FF66FF" BorderColor="#FF99FF" />
                     </td>
                     <td>&nbsp;
                         <asp:Button ID="btnGoToStep3" runat="server" onclick="btnGoToStep3_Click" Text="Step 3 &gt;&gt;" BackColor="#FF66FF" BorderColor="#FF99FF" />
                     </td>
                 </tr>
             </table>
         </asp:View>
         <asp:View ID="View3" runat="server">
             <table class="auto-style1">
                 <tr>
                     <td class="auto-style27">
                         <asp:Label ID="Label20" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Order Details"></asp:Label>
                     </td>
                     <td>&nbsp;</td>
                 </tr>
                 <tr>
                     <td class="auto-style27">
                         <asp:Label ID="Label21" runat="server" Font-Bold="True" Font-Size="Medium" Text="Order Date:-"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lblorderdate" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
                     </td>
                 
                 <tr>
                     <td class="auto-style26">
                         <asp:Label ID="Label23" runat="server" Font-Bold="True" Font-Size="Medium" Text="Delivery Date:-"></asp:Label>
                     </td>
                     <td class="auto-style24">
                         <asp:Label ID="lblcomplitiondate" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style26">
                         <asp:Label ID="Label24" runat="server" Font-Bold="True" Font-Size="Medium" Text="Payment Type:-"></asp:Label>
                     </td>
                     <td class="auto-style24">
                         <asp:Label ID="lblPaymentby" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
                     </td>
                 </tr>
                 
                 <tr>
                     <td class="auto-style27">&nbsp;<asp:Button ID="Button2" runat="server" onclick="Button1_Click" Text="&lt;&lt; Step 2" BackColor="#FF66FF" BorderColor="#FF99FF" />
                     </td>
                     <td>&nbsp;<asp:Button ID="Button3" runat="server" onclick="Button2_Click" Text="Submit &gt;&gt;" BackColor="#FF66FF" BorderColor="#FF66FF" />
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style27">&nbsp;</td>
                     <td>&nbsp;<asp:Label ID="lblStatus" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#006600"></asp:Label>
                     </td>
                 </tr>
             </table>
         </asp:View>
     </asp:MultiView>
     <br />
</asp:Content>

