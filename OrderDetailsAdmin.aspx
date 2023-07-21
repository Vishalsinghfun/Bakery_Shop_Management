<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="OrderDetailsAdmin.aspx.cs" Inherits="OrderDetailsAdmin" %>

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
        <asp:label runat="server" text="Order Information" ForeColor="Black" Font-Bold="True" Font-Size="XX-Large"></asp:label>
    </h1>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="odr_id,pr_id,regi_id" DataSourceID="SqlDataSource1" Font-Bold="True" Font-Size="Medium" ForeColor="Black" GridLines="Vertical" OnRowCommand="GridView1_RowCommand">
    <AlternatingRowStyle BackColor="#CCCCCC" />
    <Columns>
        <asp:BoundField DataField="odr_id" HeaderText="Order Id" InsertVisible="False" ReadOnly="True" SortExpression="odr_id">
        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:BoundField>
        <asp:BoundField DataField="regi_Fullname" HeaderText="Customer Name" SortExpression="regi_Fullname">
        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:BoundField>
        <asp:BoundField DataField="odr_date" HeaderText="Order Date" SortExpression="odr_date" />
        <asp:BoundField DataField="delivery_date" HeaderText="Delivery Date" SortExpression="delivery_date">
        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:BoundField>
        <asp:BoundField DataField="pr_Name" HeaderText="Product Name" SortExpression="pr_Name" />
        <asp:ImageField DataImageUrlField="pr_Image" HeaderText="Image">
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:ImageField>
        <asp:BoundField DataField="pr_FoodType" HeaderText="Food Type" SortExpression="pr_FoodType">
        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:BoundField>
        <asp:BoundField DataField="quantity" HeaderText="Quantity" SortExpression="quantity">
        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:BoundField>
        <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price">
        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:BoundField>
        <asp:TemplateField HeaderText="View Details">
            <ItemTemplate>
                <asp:Button ID="btnViewDetail" runat="server" CommandArgument='<%# Eval("odr_id")%>' CommandName="viewdetail" Text="View Detail" BackColor="Fuchsia" BorderColor="#FF66FF" />
            </ItemTemplate>
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Reply">
            <ItemTemplate>
                <asp:Button ID="btnReply" runat="server" CommandArgument='<%# Eval("odr_id")%>' CommandName="Reply" Text="Reply" Width="88px" BackColor="Fuchsia" BorderColor="#FF66FF" />
            </ItemTemplate>
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:TemplateField>
    </Columns>
    <FooterStyle BackColor="#CCCCCC" />
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="Gray" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>
<br />
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBCS %>" SelectCommand="SELECT tbl_Order.odr_id, tbl_Order.odr_date, tbl_Order.delivery_date, tbl_Order.quantity, tbl_Order.price, tbl_Order.pay_type, tbl_Order.product_id, tbl_Order.Cus_id, tbl_Product.pr_id, tbl_Product.pr_Name, tbl_Product.pr_Type, tbl_Product.pr_Price, tbl_Product.pr_Description, tbl_Product.pr_FoodType, tbl_Product.pr_Image, tbl_Registration.regi_id, tbl_Registration.regi_Fullname, tbl_Registration.regi_Username, tbl_Registration.regi_Email, tbl_Registration.regi_Password, tbl_Registration.regi_Gender, tbl_Registration.regi_DOB, tbl_Registration.regi_Contact, tbl_Registration.regi_Address FROM tbl_Order INNER JOIN tbl_Product ON tbl_Order.product_id = tbl_Product.pr_id INNER JOIN tbl_Registration ON tbl_Order.Cus_id = tbl_Registration.regi_id ORDER BY tbl_Order.odr_id DESC"></asp:SqlDataSource>
</asp:Content>

