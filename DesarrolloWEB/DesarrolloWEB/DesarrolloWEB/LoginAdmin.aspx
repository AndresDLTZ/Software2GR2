<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LoginAdmin.aspx.cs" Inherits="DesarrolloWEB.LoginAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td style="width: 423px">Para iniciar sesión debe ingresar sus credenciales</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 423px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="text-center" style="width: 423px">Nombre de Usuario:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" style="color: #000000; " Width="172px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-center" style="width: 423px; height: 22px">Contraseña:</td>
            <td style="height: 22px">
                <asp:TextBox ID="TextBox2" runat="server" style="color: #000000; " Width="172px" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-center" style="width: 423px; height: 22px">&nbsp;</td>
            <td style="height: 22px">
                <asp:TextBox ID="TextBox3" runat="server" Enabled="False" style="color: #000000; " Visible="False" Width="172px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 423px">&nbsp;</td>
            <td>
                <asp:Button ID="BotonLogin" runat="server" Text="Aceptar" Width="75px" OnClick="BotonLogin_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
