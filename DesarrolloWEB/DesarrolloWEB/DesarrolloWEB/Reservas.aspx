<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Reservas.aspx.cs" Inherits="DesarrolloWEB.Reservas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        &nbsp;</p>
    <p class="text-center" style="font-size: 20pt; color: #0066FF">
        Busque las Habitaciones que desee para su reserva</p>
    <div class="carousel slide" id="carousel-135244">
				<div class="carousel-inner">
					<div class="item active" style="text-align: justify">
						<img alt="Carousel Bootstrap First" src="http://images.channels.nl/images/hotel/max500/500/5004241.jpg" />
						</div>
					<div class="item">
						<img alt="Carousel Bootstrap Second" src="https://media-cdn.tripadvisor.com/media/photo-o/05/52/90/4b/hotel-san-francisco-de.jpg" />
						
					</div>
					<div class="item">
						<img alt="Carousel Bootstrap Third" src="http://aff.bstatic.com/images/hotel/max500/794/79426876.jpg" />
						
					</div>
                    <div class="item">
						<img alt="Carousel Bootstrap Fourth" src="https://aff.bstatic.com/images/hotel/org/794/79426953.jpg" />
						
					</div>

				</div> <a class="left carousel-control" href="#carousel-135244" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control" href="#carousel-135244" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
			</div>

    <table class="nav-justified">
        <tr>
            <td colspan="2">&nbsp;</td>
            <td colspan="2" style="width: 113px">&nbsp;</td>
            <td style="width: 3%">&nbsp;</td>
            <td style="width: 3%">&nbsp;</td>
        </tr>
        <tr>
            <td class="text-center" colspan="5" style="font-size: 18pt; color: #3399FF">Ingrese el número de habitaciones por Tipo de Habitación</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; width: 3%;">&nbsp;</td>
        </tr>
        <tr>
            <td class="text-center" style="font-size: 12pt; color: #000000; width: 13%">Fecha de Ingreso</td>
            <td class="text-center" style="font-size: 12pt; color: #000000; ">
                <asp:Calendar ID="Calendar1" runat="server" DayNameFormat="Shortest" FirstDayOfWeek="Monday" Font-Size="8pt" Height="200px" OnSelectionChanged="Calendar1_SelectionChanged" Width="220px" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" Font-Names="Verdana" ForeColor="#663399" ShowGridLines="True">
                    <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                    <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                    <OtherMonthDayStyle ForeColor="#CC9966" />
                    <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                    <SelectorStyle BackColor="#FFCC66" />
                    <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                    <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                </asp:Calendar>
            </td>
            <td style="font-size: 12pt; color: #000000; width: 82px">Fecha de Salida</td>
            <td style="font-size: 12pt; color: #000000; width: 23%">
                <asp:Calendar ID="Calendar2" runat="server" DayNameFormat="Shortest" FirstDayOfWeek="Monday" Font-Size="8pt" Height="200px" OnSelectionChanged="Calendar1_SelectionChanged" Width="220px" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" Font-Names="Verdana" ForeColor="#663399" ShowGridLines="True">
                    <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                    <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                    <OtherMonthDayStyle ForeColor="#CC9966" />
                    <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                    <SelectorStyle BackColor="#FFCC66" />
                    <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                    <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                </asp:Calendar>
            </td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; width: 3%;">
                &nbsp;</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; width: 3%;">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="text-center" style="font-size: 12pt; color: #000000; width: 13%">&nbsp;</td>
            <td class="text-center" style="font-size: 12pt; color: #000000; ">Número de Habitaciones</td>
            <td style="font-size: 12pt; color: #000000; width: 113px">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="font-size: 12pt; color: #000000; width: 23%">&nbsp;</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; width: 3%;">
                &nbsp;</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; width: 3%;">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="text-center" style="font-size: 12pt; color: #000000; width: 13%; height: 21px;"></td>
            <td class="text-center" style="font-size: 12pt; color: #000000; height: 21px;"></td>
            <td style="font-size: 12pt; color: #000000; width: 113px; height: 21px;"></td>
            <td style="font-size: 12pt; color: #000000; width: 23%; height: 21px;"></td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; width: 3%; height: 21px;">
                </td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; width: 3%; height: 21px;">
                </td>
        </tr>
        <tr>
            <td class="text-center" style="font-size: 12pt; color: #000000; width: 13%; height: 28px;">Tipo de Habitación</td>
            <td class="text-center" style="font-size: 12pt; color: #000000; height: 28px;" colspan="2">
                <asp:CheckBoxList ID="CheckBoxList1" runat="server" Width="222px">
                    <asp:ListItem>Simple</asp:ListItem>
                    <asp:ListItem>Doble</asp:ListItem>
                    <asp:ListItem>Twin</asp:ListItem>
                    <asp:ListItem>Triple</asp:ListItem>
                </asp:CheckBoxList>
            </td>
            <td class="text-center" style="font-size: 12pt; color: #000000; height: 28px;">
                &nbsp;</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; height: 28px; width: 3%;">
                </td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; height: 28px; width: 3%;">
                </td>
        </tr>
        <tr>
            <td class="text-center" style="font-size: 12pt; color: #000000; width: 13%; height: 21px;"># de Personas</td>
            <td class="text-center" style="font-size: 12pt; color: #000000; height: 21px;">
                <asp:TextBox ID="TextBox10" runat="server" style="font-size: 17pt" OnTextChanged="TextBox10_TextChanged"></asp:TextBox>
            </td>
            <td class="text-left" style="font-size: 12pt; color: #000000; height: 21px;" colspan="2">
                &nbsp;</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; height: 21px; width: 3%;">
                &nbsp;</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; height: 21px; width: 3%;">
            </td>
        </tr>
        <tr>
            <td class="text-center" style="font-size: 12pt; color: #000000; width: 13%; height: 36px;">Presupuesto</td>
            <td class="text-center" style="font-size: 12pt; color: #C0C0C0; width: 23%; height: 36px;">
                <asp:TextBox ID="TextBox5" runat="server" style="font-size: 17pt" OnTextChanged="TextBox5_TextChanged"></asp:TextBox>
            </td>
            <td class="text-center" style="font-size: 12pt; color: #C0C0C0; height: 36px; width: 113px;" colspan="2">
                <asp:TextBox ID="TextBox6" runat="server" style="font-size: 17pt"></asp:TextBox>
            </td>
            <td class="text-center" style="font-size: 12pt; color: #C0C0C0; height: 36px; width: 3%;">
                &nbsp;</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; height: 36px; width: 3%;">
                </td>
        </tr>
        <tr>
            <td class="text-center" style="font-size: 12pt; color: #000000; width: 13%; height: 36px;"></td>
            <td class="text-center" style="font-size: 12pt; color: #C0C0C0; width: 23%; height: 36px;"></td>
            <td class="text-center" style="font-size: 12pt; color: #C0C0C0; height: 36px; width: 113px;" colspan="2">
                </td>
            <td class="text-center" style="font-size: 12pt; color: #C0C0C0; height: 36px; width: 3%;">
                </td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; height: 36px; width: 3%;">
                </td>
        </tr>
        <tr>
            <td class="text-center" style="font-size: 12pt; color: #000000; width: 13%">Tipo de Habitación</td>
            <td class="text-center" style="font-size: 18pt; color: #000000; width: 23%;">
                <asp:DropDownList ID="DropDownList3" runat="server">
                    <asp:ListItem>Simple</asp:ListItem>
                    <asp:ListItem>Doble</asp:ListItem>
                    <asp:ListItem>Twin</asp:ListItem>
                    <asp:ListItem>Triple</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="font-size: 18pt; color: #3399FF; width: 113px;" colspan="2">
                &nbsp;</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; width: 3%;">
                &nbsp;</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; width: 3%;">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="text-center" style="font-size: 12pt; color: #000000; width: 13%; height: 21px;"># de Personas</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; width: 23%;">
                <asp:TextBox ID="TextBox9" runat="server" style="font-size: 17pt"></asp:TextBox>
            </td>
            <td style="font-size: 18pt; color: #3399FF; width: 113px;" colspan="2">
                &nbsp;</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; width: 3%;">
                &nbsp;</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; width: 3%;">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="text-center" style="font-size: 12pt; color: #000000; width: 13%; height: 36px;">Presupuesto</td>
            <td class="text-center" style="font-size: 12pt; color: #C0C0C0; width: 23%; height: 36px;">
                <asp:TextBox ID="TextBox7" runat="server" style="font-size: 17pt"></asp:TextBox>
            </td>
            <td class="text-center" style="font-size: 12pt; color: #C0C0C0; height: 36px; width: 113px;" colspan="2">
                <asp:TextBox ID="TextBox8" runat="server" style="font-size: 17pt"></asp:TextBox>
            </td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; width: 3%;">
                &nbsp;</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; width: 3%;">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="text-right" style="font-size: 17pt; color: #000000; width: 13%">
                &nbsp;</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; width: 23%;">
                &nbsp;</td>
            <td style="font-size: 18pt; color: #3399FF; width: 113px;" colspan="2">
                <asp:Button ID="Buscar" runat="server" OnClick="Buscar_Click" Text="Buscar" />
            </td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; width: 3%;">&nbsp;</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; width: 3%;">&nbsp;</td>
        </tr>
        <tr>
            <td class="text-right" style="font-size: 17pt; color: #000000; width: 13%; height: 34px"></td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; height: 34px; width: 23%;"></td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; height: 34px; width: 113px;" colspan="2">&nbsp;</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; height: 34px; width: 3%;">&nbsp;</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; height: 34px; width: 3%;">&nbsp;</td>
        </tr>
        <tr>
            <td class="text-right" style="font-size: 17pt; color: #000000; width: 13%; height: 34px">
                <asp:GridView ID="GridView1" runat="server" Height="120px" Width="428px">
                </asp:GridView>
            </td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; height: 34px; width: 23%;">&nbsp;</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; height: 34px; width: 113px;" colspan="2">&nbsp;</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; height: 34px; width: 3%;">&nbsp;</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; height: 34px; width: 3%;">&nbsp;</td>
        </tr>
        <tr>
            <td class="text-right" style="font-size: 17pt; color: #000000; width: 13%; height: 34px">&nbsp;</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; height: 34px; width: 23%;">&nbsp;</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; height: 34px; width: 113px;" colspan="2">&nbsp;</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; height: 34px; width: 3%;">&nbsp;</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; height: 34px; width: 3%;">&nbsp;</td>
        </tr>
        <tr>
            <td class="text-right" style="font-size: 17pt; color: #000000; width: 13%; height: 34px">&nbsp;</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; height: 34px; width: 23%;">
                <asp:DropDownList ID="DropDownList4" runat="server">
                </asp:DropDownList>
            </td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; height: 34px; width: 113px;" colspan="2">
                <asp:Button ID="Buscar1" runat="server" OnClick="Buscar_Click" Text="Agregar Habitación" />
            </td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; height: 34px; width: 3%;">&nbsp;</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; height: 34px; width: 3%;">&nbsp;</td>
        </tr>
        <tr>
            <td class="text-right" style="font-size: 17pt; color: #000000; width: 13%; height: 34px">&nbsp;</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; height: 34px; width: 23%;">&nbsp;</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; height: 34px; width: 113px;" colspan="2">&nbsp;</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; height: 34px; width: 3%;">&nbsp;</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; height: 34px; width: 3%;">&nbsp;</td>
        </tr>
        <tr>
            <td class="text-right" style="font-size: 17pt; color: #000000; width: 13%; height: 34px">
                <asp:GridView ID="GridView5" runat="server" Height="34px" Width="458px">
                </asp:GridView>
            </td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; height: 34px; width: 23%;">&nbsp;</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; height: 34px; width: 113px;" colspan="2">&nbsp;</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; height: 34px; width: 3%;">&nbsp;</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; height: 34px; width: 3%;">&nbsp;</td>
        </tr>
        <tr>
            <td class="text-right" style="font-size: 17pt; color: #000000; width: 13%; height: 34px">&nbsp;</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; height: 34px; width: 23%;">&nbsp;</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; height: 34px; width: 113px;" colspan="2">&nbsp;</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; height: 34px; width: 3%;">&nbsp;</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; height: 34px; width: 3%;">&nbsp;</td>
        </tr>
        <tr>
            <td class="text-right" style="font-size: 17pt; color: #000000; width: 13%; height: 34px">&nbsp;</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; height: 34px; width: 23%;">&nbsp;</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; height: 34px; width: 113px;" colspan="2">
                <asp:Button ID="Buscar0" runat="server" OnClick="Buscar_Click" Text="Continuar con la Reserva" />
            </td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; height: 34px; width: 3%;">&nbsp;</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; height: 34px; width: 3%;">&nbsp;</td>
        </tr>
        <tr>
            <td class="text-right" style="font-size: 17pt; color: #000000; width: 13%; height: 34px">&nbsp;</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; height: 34px; width: 23%;">&nbsp;</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; height: 34px; width: 113px;" colspan="2">&nbsp;</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; height: 34px; width: 3%;">&nbsp;</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; height: 34px; width: 3%;">&nbsp;</td>
        </tr>
        <tr>
            <td class="text-right" style="font-size: 17pt; color: #000000; width: 13%; height: 34px">&nbsp;</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; height: 34px; width: 23%;">&nbsp;</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; height: 34px; width: 113px;" colspan="2">&nbsp;</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; height: 34px; width: 3%;">&nbsp;</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; height: 34px; width: 3%;">&nbsp;</td>
        </tr>
    </table>
    <table class="nav-justified">
        <tr>
            <td>Habitaciones Simples Disponibles</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Habitaciones Dobles Disponibles</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView2" runat="server" Height="116px" Width="426px" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 20px">Habitaciones Twin Disponibles</td>
        </tr>
        <tr>
            <td style="height: 20px">
                <asp:GridView ID="GridView3" runat="server" Height="125px" Width="426px">
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td style="height: 20px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 20px">Habitaciones Triples Disponibles</td>
        </tr>
        <tr>
            <td style="height: 20px">
                <asp:GridView ID="GridView4" runat="server" Height="116px" Width="425px">
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
