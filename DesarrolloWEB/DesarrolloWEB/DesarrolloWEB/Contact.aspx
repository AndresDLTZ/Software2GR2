<%@ Page Title="Para mayor información contáctenos" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="DesarrolloWEB.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Dirección:</h3>
    <address>
        <span class="_Xbe">Sucre 0e3-17 y Guayaquil, Ave Jose de Sucre Oe3-17, Quito</address>

    <asp:Panel ID="Panel2" runat="server">
        <img alt="Mapa" src="Imagenes/Captura.JPG" style="width: 1366px; height: 580px; margin-right: 0px;" />
    </asp:Panel>

    <asp:Panel ID="Panel1" runat="server">
        Teléfonos: <span class="_Xbe _ZWk kno-fv">(02) 228-7758</span></asp:Panel>
    <address>
        </span>
    </address>

    <address>
        <strong>Gerente:</strong>   <a href="mailto:Support@example.com">jhon.arias@epn.edu.ec</a><br />
        <strong>Recepción:</strong> <a href="mailto:Marketing@example.com">hotelsanfranciscodequito@hsq.ec</a>
    </address>
</asp:Content>
