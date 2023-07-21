<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true" CodeFile="Category.aspx.cs" Inherits="Category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
       .auto-style1 {
            text-align: center;
            height: 54px;
        }
        .auto-style2 {
            width: 100%;
            margin-right: 0px;
        }
        .auto-style3 {
            width: 350px;
            height: 350px;
        }
        .auto-style5 {
            width: 350px;
            height: 350px;
        }
        .auto-style6 {
            width: 350px;
            height: 350px;
        }
        .auto-style7 {
            width: 350px;
            height: 350px;
        }
        .auto-style8 {
           width: 350px;
            height: 350px;
        }
        .auto-style9 {
            width: 350px;
            height: 350px;
        }
        .auto-style10 {
            width: 350px;
            height: 350px;
        }
        .auto-style11 {
            width: 350px;
            height: 350px;
        }
        .auto-style12 {
            width: 350px;
            height: 350px;
        }
    .auto-style14 {
        width: 375px;
        text-align: center;
    }
    .auto-style15 {
        width: 424px;
        height: 400px;
        text-align: center;
    }
    .auto-style16 {
        text-align: center;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="background-color:#fd6d6d" class="auto-style1">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:label runat="server" text="Category" ForeColor="Black" Font-Bold="True" Font-Size="XX-Large"></asp:label>
    </h1>

    <table class="auto-style2">
        <tr>
            <td class="auto-style14">
                <br />
                <img alt="" class="auto-style6" src="Online%20Bckery/easter-nest-cake.jpg" /><br />
                <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" Font-Size="Large" OnClick="LinkButton2_Click">Eggless</asp:LinkButton>
            </td>
            <td class="auto-style15">
                <img alt="" class="auto-style3" src="Online%20Bckery/1-9.jpg" /><br />
                <asp:LinkButton ID="LinkButton10" runat="server" Font-Bold="True" Font-Size="Large" OnClick="LinkButton10_Click">Pudding</asp:LinkButton>
            </td>
            <td class="auto-style16">
                <img alt="" class="auto-style5" src="Online%20Bckery/baron-bagels-articleLarge.jpg" /><br />
                <asp:LinkButton ID="LinkButton13" runat="server" Font-Bold="True" Font-Size="Large" OnClick="LinkButton13_Click">Bagels</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">
                <img alt="" class="auto-style7" src="Online%20Bckery/Pie_splet_on_pie.0.0.jpg" /><br />
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Size="Large" OnClick="LinkButton1_Click">Pie</asp:LinkButton>
            </td>
            <td class="auto-style15">
                <img alt="" class="auto-style8" src="Online%20Bckery/IMG_5127.jpg" /><br />
                <asp:LinkButton ID="LinkButton11" runat="server" Font-Bold="True" Font-Size="Large" OnClick="LinkButton11_Click">Tarts</asp:LinkButton>
            </td>
            <td class="auto-style16">
                <img alt="" class="auto-style9" src="Online%20Bckery/chocolate-and-pastry-tour-paris.jpg" /><br />
                <asp:LinkButton ID="LinkButton6" runat="server" Font-Bold="True" Font-Size="Large" OnClick="LinkButton6_Click">Pastry</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">
                <img alt="" class="auto-style10" src="Online%20Bckery/bread.jpg" /><asp:LinkButton ID="LinkButton7" runat="server" Font-Bold="True" Font-Size="Large" OnClick="LinkButton7_Click">Breads</asp:LinkButton>
            </td>
            <td class="auto-style15">
                <img alt="" class="auto-style11" src="Online%20Bckery/Doughnuts-740x555.jpg" /><br />
                <asp:LinkButton ID="LinkButton12" runat="server" Font-Bold="True" Font-Size="Large" OnClick="LinkButton12_Click">Doughnut</asp:LinkButton>
            </td>
            <td class="auto-style16">
                <img alt="" class="auto-style12" src="Online%20Bckery/Pound_layer_cake.jpg" /><br />
                <asp:LinkButton ID="LinkButton9" runat="server" Font-Bold="True" Font-Size="Large" OnClick="LinkButton9_Click">Cake</asp:LinkButton>
            </td>
        </tr>
        
    </table>

</asp:Content>

