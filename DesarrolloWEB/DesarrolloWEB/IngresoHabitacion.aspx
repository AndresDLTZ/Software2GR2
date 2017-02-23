<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="IngresoHabitacion.aspx.cs" Inherits="DesarrolloWEB.IngresoHabitacion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td class="text-center" colspan="2" style="font-size: 20pt">&nbsp;</td>
        </tr>
        <tr>
            <td class="text-center" colspan="2" style="font-size: 20pt; color: #0066FF"><strong>Información de Habitación</strong></td>
        </tr>
        <tr>
            <td class="text-left" colspan="2" style="font-size: 20pt">
                <asp:Button ID="BotonNuevo" runat="server" Height="31px" OnClick="BotonNuevo_Click" Text="Nuevo" Visible="False" />
            </td>
        </tr>
        <tr>
            <td class="text-right" style="font-size: 20pt; width: 528px; height: 36px">
                <asp:Label ID="Label1" runat="server" style="color: #CC0000; font-size: 18pt" Text="*" Visible="False"></asp:Label>
                <span style="color: #0066FF"><font size="5">Tipo de Habitación</font></span></td>
            <td class="text-center" style="font-size: 20pt; height: 36px">
                <asp:DropDownList ID="DropDownList1" runat="server" style="font-size: 18pt" Width="273px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem Value="1">Simple</asp:ListItem>
                    <asp:ListItem Value="2">Doble</asp:ListItem>
                    <asp:ListItem Value="3">Twin</asp:ListItem>
                    <asp:ListItem Value="4">Triple</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="font-size: 20pt; width: 528px; height: 38px;">
                <asp:Label ID="Label2" runat="server" style="color: #CC0000; font-size: 18pt" Text="*" Visible="False"></asp:Label>
                <span style="color: #0066FF"><font size="5">Número de Habitación</font></span></td>
            <td class="text-center" style="font-size: 20pt; height: 38px;">
                <asp:TextBox ID="TextBox1" runat="server" style="font-size: 18pt" OnTextChanged="TextBox1_TextChanged">0</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="font-size: 20pt; width: 528px">
                <asp:Label ID="Label3" runat="server" style="color: #CC0000; font-size: 18pt" Text="*" Visible="False"></asp:Label>
                <span style="color: #0066FF"><font size="5">Precio de Habitación</font></span></td>
            <td class="text-center" style="font-size: 20pt">
                <asp:TextBox ID="TextBox2" runat="server" style="font-size: 18pt">0</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="font-size: 20pt; width: 528px">
                <asp:Label ID="Label4" runat="server" style="color: #CC0000; font-size: 18pt" Text="*" Visible="False"></asp:Label>
                <span style="color: #0066FF"><font size="5">Descripción de Habitación</font></span></td>
            <td class="text-center" style="font-size: 20pt">
                <asp:TextBox ID="TextBox3" runat="server" style="font-size: 18pt">0</asp:TextBox>
      

            </td>
        </tr>
        <tr>
            <td class="text-right" style="font-size: 20pt; width: 528px">
                <asp:Label ID="Label5" runat="server" style="color: #CC0000; font-size: 18pt" Text="*" Visible="False"></asp:Label>
                <span style="color: #0066FF"><font size="5">Número de Piso</font></span></td>
            <td class="text-center" style="font-size: 20pt">
                <asp:TextBox ID="TextBox4" runat="server" style="font-size: 18pt" OnTextChanged="TextBox4_TextChanged">0</asp:TextBox>
                
            </td>
        </tr>
        <tr>
            <td class="text-right" style="font-size: 20pt; width: 528px">
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
            <td class="text-center" style="font-size: 20pt">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="text-right" style="font-size: 20pt; width: 528px">
                &nbsp;</td>
            <td class="text-center" style="font-size: 20pt">&nbsp;</td>
        </tr>
        <tr>
            <td class="text-right" style="font-size: 20pt; width: 528px">
                <asp:Button ID="BotonGuardar" runat="server" Text="Guardar" OnClick="BotonGuardar_Click" />
            </td>
            <td class="text-center" style="font-size: 20pt">
                <asp:TextBox ID="TextBox5" runat="server" Enabled="False" style="color: #CC0000; font-size: 12pt" Width="469px" Visible="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="font-size: 20pt; width: 528px">
                &nbsp;</td>
            <td class="text-center" style="font-size: 20pt">
                <asp:Label ID="Label6" runat="server" style="color: #CC0000; font-size: 18pt" Text="*" Visible="False"></asp:Label>
                <asp:TextBox ID="TextBox6" runat="server" style="font-size: 12pt; color: #FF9933" Visible="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="font-size: 20pt; width: 528px">
                <asp:Button ID="BotonBuscar" runat="server" OnClick="BotonBuscar_Click" Text="Buscar" Width="149px" />
            </td>
            <td class="text-left" style="font-size: 20pt">
                <asp:Button ID="BotonActualizar" runat="server" OnClick="BotonActualizar_Click" Text="Actualizar" Width="137px" />
            </td>
        </tr>
    </table>
</asp:Content>
