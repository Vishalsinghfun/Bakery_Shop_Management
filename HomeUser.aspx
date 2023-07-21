<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true" CodeFile="HomeUser.aspx.cs" Inherits="HomeUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            height: 54px;
        }
    .auto-style2 {
        margin-right: 0px;
    }
    .auto-style3 {
        width: 100%;
        height: 236px;
    }
    .auto-style4 {
        text-align: center;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <h1 style="background-color:#fd6d6d" class="auto-style1">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:label runat="server" text="Home" ForeColor="Black" Font-Bold="True" Font-Size="XX-Large"></asp:label>
    </h1>
    <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style2" DataKeyField="pr_id" DataSourceID="SqlDataSource1" Font-Bold="True" Font-Size="Large" GridLines="Vertical" RepeatColumns="4" RepeatDirection="Horizontal" Width="1300px" OnItemCommand="DataList1_ItemCommand">
        <AlternatingItemStyle BackColor="#DCDCDC" />
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#EEEEEE" ForeColor="Black" />
        <ItemTemplate>
            <table border="1" class="auto-style3">
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("pr_Name") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("pr_Image") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label2" runat="server" Text="Price:-"></asp:Label>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("pr_Price") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label4" runat="server" Text="Quantity:-"></asp:Label>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList>
                        <asp:Label ID="Label5" runat="server" Text="in Kgs"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        
                        <asp:Label ID="Label6" runat="server" Text="Type:-"></asp:Label>
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("pr_Type") %>'></asp:Label>
                        
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Button ID="Button1" runat="server" BackColor="#FFFF66" BorderColor="#FFFF99" Font-Bold="True" Font-Size="Medium" Text="Add To Cart " CommandArgument='<%# Eval("pr_id")%>' CommandName="addtocart" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Button ID="Button2" runat="server" BackColor="#66CCFF" BorderColor="#CCFFFF" Font-Bold="True" Font-Size="Medium" Text="View Detail" CommandArgument='<%# Eval("pr_id")%>' CommandName="viewdetail" />
                    </td>
                </tr>
            </table>
            <br />
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
</asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBCS %>" SelectCommand="SELECT * FROM [tbl_Product] ORDER BY [pr_id] DESC"></asp:SqlDataSource>
</asp:Content>

