<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true" CodeFile="Tarts.aspx.cs" Inherits="Tarts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            height: 54px;
        }
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            text-align: center;
            width: 247px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="background-color:#fd6d6d" class="auto-style1">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:label runat="server" text="Tart" ForeColor="Black" Font-Bold="True" Font-Size="XX-Large"></asp:label>
    </h1>
    <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyField="pr_id" DataSourceID="SqlDataSource1" Font-Bold="True" Font-Size="Large" ForeColor="Black" GridLines="Vertical" OnItemCommand="DataList1_ItemCommand" RepeatColumns="4" RepeatDirection="Horizontal" Width="1300px">
        <AlternatingItemStyle BackColor="#CCCCCC" />
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
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
                        <asp:Button ID="Button1" runat="server" BackColor="#FFFF66" BorderColor="#FFFF99" CommandArgument='<%# Eval("pr_id")%>' CommandName="addtocart" Font-Bold="True" Font-Size="Medium" Text="Add To Cart " />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Button ID="Button2" runat="server" BackColor="#66CCFF" BorderColor="#CCFFFF" CommandArgument='<%# Eval("pr_id")%>' CommandName="viewdetail" Font-Bold="True" Font-Size="Medium" Text="View Detail" />
                    </td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBCS %>" SelectCommand="select * from tbl_Product where pr_Type='Tarts' order by  pr_id  desc"></asp:SqlDataSource>
</asp:Content>

