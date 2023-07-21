<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageLogin.master" AutoEventWireup="true" CodeFile="RegistrationUser.aspx.cs" Inherits="RegistrationUser" %>

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
            text-align: right;
            width: 612px;
        }
        .auto-style4 {
            width: 612px;
        }
        .auto-style5 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="background-color:#fd6d6d" class="auto-style1">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:label runat="server" text="SignUp" ForeColor="Black" Font-Bold="True" Font-Size="XX-Large"></asp:label>
    </h1>

    <table class="auto-style2">
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Text="Full Name:-"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtboxFullName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtboxFullName" ErrorMessage="Enter Full Name" ForeColor="Red" style="font-size: medium"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtboxFullName" ErrorMessage="Only Characters are allowed" ForeColor="Red" style="font-size: small" ValidationExpression="[a-zA-Z' ]+"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" Text="UserName:-"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtboxUsername" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txtboxUsername" ErrorMessage="Enter UserName" ForeColor="Red" 
                            style="font-size: medium"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                            ControlToValidate="txtboxUsername" ErrorMessage="Only Characters are allowed" 
                            ForeColor="Red" style="font-size: small" ValidationExpression="[a-zA-Z1-9]+"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" Text="Email:-"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtboxemail" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="txtboxemail" ErrorMessage="Enter Email" ForeColor="Red" 
                            style="font-size: medium"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="txtboxemail" ErrorMessage="Invalid Email" ForeColor="Red" 
                            style="font-size: small" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" Text="Password:-"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtboxPassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ControlToValidate="txtboxPassword" ErrorMessage="Enter Password" ForeColor="Red" 
                            style="font-size: medium"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" Text="Confirm Password:-"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtboxConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                            ControlToValidate="txtboxConfirmPassword" ErrorMessage="*" ForeColor="Red" 
                            style="font-size: medium"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator2" runat="server" 
                            ControlToCompare="txtboxPassword" ControlToValidate="txtboxConfirmPassword" 
                            ErrorMessage="Password should match" ForeColor="Red" 
                            style="font-size: small"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Large" Text="Gender:-"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownListGender" runat="server">
                    <asp:ListItem Value="-1">Select Gender</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownListGender" ErrorMessage="Select Gender" ForeColor="Red" style="font-size: medium" InitialValue="-1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Large" Text="Date Of Birth:-"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtboxDOB" runat="server" TextMode="Date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtboxDOB" ErrorMessage="Enter Date of Birth" ForeColor="Red" style="font-size: medium"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="Large" Text="Contact:-"></asp:Label>
            </td>
            <td><asp:TextBox ID="TxtCon" runat="server" Height="25px" 
                            Width="140px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                            ControlToValidate="TxtCon" ErrorMessage="*" ForeColor="Red" 
                            style="font-size: medium"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                            ControlToValidate="TxtCon" ErrorMessage="InvalidNumber" ForeColor="Red" 
                            style="font-size: small" ValidationExpression="^([7-9]{1})([0-9]{9})$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Large" Text="Address:-"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtboxAdderss" runat="server" Height="47px" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtboxAdderss" ErrorMessage="Enter Address" ForeColor="Red" style="font-size: medium"></asp:RequiredFieldValidator>

            </td>
        </tr>

        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" BackColor="#33CC33" BorderColor="#66FF33" Text="Submit" Font-Bold="True" Font-Size="Medium" OnClick="Button1_Click" />

            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>
                <asp:Label ID="lblstatus" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
            </td>
        </tr>
    </table>

</asp:Content>

