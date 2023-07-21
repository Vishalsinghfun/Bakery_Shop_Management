<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="ProductInfo.aspx.cs" Inherits="ProductInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
        .auto-style1 {
            text-align: center;
            height: 54px;
        }
         .auto-style2 {
             margin-right: 21px;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <h1 style="background-color:#fd6d6d" class="auto-style1">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:label runat="server" text="Product Information" ForeColor="Black" Font-Bold="True" Font-Size="XX-Large"></asp:label>
    </h1>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="pr_id" DataSourceID="SqlDataSource1" Font-Bold="True" Font-Size="Large" ForeColor="Black" GridLines="Vertical" Width="1300px" CssClass="auto-style2">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="pr_id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="pr_id" />
            <asp:BoundField DataField="pr_Name" HeaderText="Name" SortExpression="pr_Name" />
            <asp:BoundField DataField="pr_Type" HeaderText="Type" SortExpression="pr_Type" />
            <asp:BoundField DataField="pr_Price" HeaderText="Price" SortExpression="pr_Price" />
            <asp:BoundField DataField="pr_Description" HeaderText="Description" SortExpression="pr_Description" />
            <asp:BoundField DataField="pr_FoodType" HeaderText="FoodType" SortExpression="pr_FoodType" />
            <asp:ImageField DataImageUrlField="pr_Image" HeaderText="Image" >
                <ItemStyle Height="150px" HorizontalAlign="Center" VerticalAlign="Middle" Width="150px" />
            </asp:ImageField>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>
<br />
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DBCS %>" DeleteCommand="DELETE FROM [tbl_Product] WHERE [pr_id] = @original_pr_id AND (([pr_Name] = @original_pr_Name) OR ([pr_Name] IS NULL AND @original_pr_Name IS NULL)) AND (([pr_Type] = @original_pr_Type) OR ([pr_Type] IS NULL AND @original_pr_Type IS NULL)) AND (([pr_Price] = @original_pr_Price) OR ([pr_Price] IS NULL AND @original_pr_Price IS NULL)) AND (([pr_Description] = @original_pr_Description) OR ([pr_Description] IS NULL AND @original_pr_Description IS NULL)) AND (([pr_FoodType] = @original_pr_FoodType) OR ([pr_FoodType] IS NULL AND @original_pr_FoodType IS NULL)) AND (([pr_Image] = @original_pr_Image) OR ([pr_Image] IS NULL AND @original_pr_Image IS NULL))" InsertCommand="INSERT INTO [tbl_Product] ([pr_Name], [pr_Type], [pr_Price], [pr_Description], [pr_FoodType], [pr_Image]) VALUES (@pr_Name, @pr_Type, @pr_Price, @pr_Description, @pr_FoodType, @pr_Image)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tbl_Product] ORDER BY [pr_id] DESC" UpdateCommand="UPDATE [tbl_Product] SET [pr_Name] = @pr_Name, [pr_Type] = @pr_Type, [pr_Price] = @pr_Price, [pr_Description] = @pr_Description, [pr_FoodType] = @pr_FoodType, [pr_Image] = @pr_Image WHERE [pr_id] = @original_pr_id AND (([pr_Name] = @original_pr_Name) OR ([pr_Name] IS NULL AND @original_pr_Name IS NULL)) AND (([pr_Type] = @original_pr_Type) OR ([pr_Type] IS NULL AND @original_pr_Type IS NULL)) AND (([pr_Price] = @original_pr_Price) OR ([pr_Price] IS NULL AND @original_pr_Price IS NULL)) AND (([pr_Description] = @original_pr_Description) OR ([pr_Description] IS NULL AND @original_pr_Description IS NULL)) AND (([pr_FoodType] = @original_pr_FoodType) OR ([pr_FoodType] IS NULL AND @original_pr_FoodType IS NULL)) AND (([pr_Image] = @original_pr_Image) OR ([pr_Image] IS NULL AND @original_pr_Image IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_pr_id" Type="Int32" />
        <asp:Parameter Name="original_pr_Name" Type="String" />
        <asp:Parameter Name="original_pr_Type" Type="String" />
        <asp:Parameter Name="original_pr_Price" Type="String" />
        <asp:Parameter Name="original_pr_Description" Type="String" />
        <asp:Parameter Name="original_pr_FoodType" Type="String" />
        <asp:Parameter Name="original_pr_Image" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="pr_Name" Type="String" />
        <asp:Parameter Name="pr_Type" Type="String" />
        <asp:Parameter Name="pr_Price" Type="String" />
        <asp:Parameter Name="pr_Description" Type="String" />
        <asp:Parameter Name="pr_FoodType" Type="String" />
        <asp:Parameter Name="pr_Image" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="pr_Name" Type="String" />
        <asp:Parameter Name="pr_Type" Type="String" />
        <asp:Parameter Name="pr_Price" Type="String" />
        <asp:Parameter Name="pr_Description" Type="String" />
        <asp:Parameter Name="pr_FoodType" Type="String" />
        <asp:Parameter Name="pr_Image" Type="String" />
        <asp:Parameter Name="original_pr_id" Type="Int32" />
        <asp:Parameter Name="original_pr_Name" Type="String" />
        <asp:Parameter Name="original_pr_Type" Type="String" />
        <asp:Parameter Name="original_pr_Price" Type="String" />
        <asp:Parameter Name="original_pr_Description" Type="String" />
        <asp:Parameter Name="original_pr_FoodType" Type="String" />
        <asp:Parameter Name="original_pr_Image" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>

