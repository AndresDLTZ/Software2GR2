<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ConsultaReserva.aspx.cs" Inherits="DesarrolloWEB.ConsultaReserva" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p style="font-size: x-large; color: #3399FF">
        <strong>CONSULTA DE RESERVAS</strong><table class="nav-justified">
            <tr>
                <td style="height: 18px; width: 512px">&nbsp;</td>
                <td style="height: 18px">
                    <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
                </td>
            </tr>
        </table>
        <p>
            <asp:Button ID="BotonBuscar" runat="server" OnClick="BotonBuscar_Click" Text="Buscar" />
        </p>
        <p>
            Última Reserva Realizada</p>
        <p>
            <asp:GridView ID="GridView1" runat="server" HorizontalAlign="Center" Width="443px">
            </asp:GridView>
        </p>
        <p>
            Detalla de la Reserva</p>
        <asp:GridView ID="GridView2" runat="server" HorizontalAlign="Center" Width="443px">
        </asp:GridView>
    </p>
    <p style="font-size: x-large; color: #3399FF">
        Lista de Huéspedes de la Reserva</p>
    <asp:GridView ID="GridView3" runat="server" HorizontalAlign="Center" Width="443px">
    </asp:GridView>
</asp:Content>
