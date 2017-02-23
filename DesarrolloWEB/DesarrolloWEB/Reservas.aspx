<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Reservas.aspx.cs" Inherits="DesarrolloWEB.Reservas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        &nbsp;</p>
    <p class="text-center" style="font-size: 20pt; color: #0066FF">
        Busque las Habitaciones que desee para su reserva</p>
    <div class="carousel slide" id="carousel-135244">
				<div class="carousel-inner">
					<div class="item active" style="text-align: justify">
						<img alt="Carousel Bootstrap First" src="https://media-cdn.tripadvisor.com/media/photo-o/05/52/90/4b/hotel-san-francisco-de.jpg" />
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
            <td class="text-center" colspan="5" style="font-size: 18pt; color: #3399FF">Ingrese el número de habitaciones por Tipo de Habitación y sus dias de Reserva</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; width: 3%;">&nbsp;</td>
        </tr>
        <tr>
            <td class="text-center" colspan="5" style="font-size: 18pt; color: #3399FF">&nbsp;</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; width: 3%;">&nbsp;</td>
        </tr>
        <tr>
            <td class="text-center" style="font-size: 12pt; color: #000000; width: 13%">Fecha de: Ingreso</td>
            <td class="text-center" style="font-size: 12pt; color: #000000; ">
                <asp:Calendar ID="Calendar1" runat="server" OnDayRender="Calendar1_DayRender" DayNameFormat="Shortest" FirstDayOfWeek="Monday" Font-Size="8pt" Height="200px" OnSelectionChanged="Calendar1_SelectionChanged" Width="220px" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" Font-Names="Verdana" ForeColor="#663399" ShowGridLines="True">
                    <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                    <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                    <OtherMonthDayStyle ForeColor="#CC9966" />
                    <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                    <SelectorStyle BackColor="#FFCC66" />
                    <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                    <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                </asp:Calendar>
            </td>
            <td style="font-size: 12pt; color: #000000; width: 82px" class="text-left">&nbsp; Salida</td>
            <td style="font-size: 12pt; color: #000000; width: 23%">
                <asp:Calendar ID="Calendar2" runat="server" OnDayRender="Calendar2_DayRender" DayNameFormat="Shortest" FirstDayOfWeek="Monday" Font-Size="8pt" Height="200px" OnSelectionChanged="Calendar1_SelectionChanged" Width="220px" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" Font-Names="Verdana" ForeColor="#663399" ShowGridLines="True" Enabled="False">
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
            <td class="text-center" style="font-size: 12pt; color: #000000; ">&nbsp;</td>
            <td style="font-size: 12pt; color: #000000; width: 113px">
                &nbsp;</td>
            <td style="font-size: 12pt; color: #000000; width: 23%">&nbsp;</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; width: 3%;">
                &nbsp;</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; width: 3%;">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="text-center" style="font-size: 12pt; color: #000000; width: 13%; height: 21px;">Tipo de Habitación</td>
            <td class="text-center" style="font-size: 12pt; color: #000000; ">Número de Habitaciones</td>
            <td style="font-size: 12pt; color: #000000; width: 113px; height: 21px;"></td>
            <td style="font-size: 12pt; color: #000000; width: 23%; height: 21px;"></td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; width: 3%; height: 21px;">
                </td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; width: 3%; height: 21px;">
                </td>
        </tr>
        <tr>
            <td class="text-center" style="font-size: 12pt; color: #000000; width: 13%; height: 21px;">&nbsp;</td>
            <td class="text-center" style="font-size: 12pt; color: #000000; height: 21px;">&nbsp;</td>
            <td style="font-size: 12pt; color: #000000; width: 113px; height: 21px;">&nbsp;</td>
            <td style="font-size: 12pt; color: #000000; width: 23%; height: 21px;">&nbsp;</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; width: 3%; height: 21px;">
                &nbsp;</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; width: 3%; height: 21px;">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="text-center" style="font-size: 12pt; color: #000000; width: 13%; height: 28px;">Simple</td>
            <td class="text-center" style="font-size: 12pt; color: #000000; ">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="text-center" style="font-size: 12pt; color: #000000; height: 28px;">
                <asp:Button ID="Nueva" runat="server" OnClick="Nueva_Click" Text="Nueva Búsqueda" Visible="False" Width="225px" />
            </td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; height: 28px; width: 3%;">
                </td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; height: 28px; width: 3%;">
                </td>
        </tr>
        <tr>
            <td class="text-center" style="font-size: 12pt; color: #000000; width: 13%; height: 21px;">Doble</td>
            <td class="text-center" style="font-size: 12pt; color: #000000; height: 21px;">
                <asp:DropDownList ID="DropDownList5" runat="server">
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="text-left" style="font-size: 12pt; color: #000000; height: 21px;" colspan="2">
                &nbsp;</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; height: 21px; width: 3%;">
                &nbsp;</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; height: 21px; width: 3%;">
            </td>
        </tr>
        <tr>
            <td class="text-center" style="font-size: 12pt; color: #000000; width: 13%; height: 36px;">Twin</td>
            <td class="text-center" style="font-size: 12pt; color: #C0C0C0; width: 23%; height: 36px;">
                <asp:DropDownList ID="DropDownList6" runat="server">
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="text-center" style="font-size: 12pt; color: #C0C0C0; height: 36px; width: 113px;" colspan="2">
                <asp:Button ID="Buscar" runat="server" OnClick="Buscar_Click" Text="Buscar" />
            </td>
            <td class="text-center" style="font-size: 12pt; color: #C0C0C0; height: 36px; width: 3%;">
                &nbsp;</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; height: 36px; width: 3%;">
                </td>
        </tr>
        <tr>
            <td class="text-center" style="font-size: 12pt; color: #000000; width: 13%; height: 36px;">Triple</td>
            <td class="text-center" style="font-size: 12pt; color: #C0C0C0; width: 23%; height: 36px;">
                <asp:DropDownList ID="DropDownList7" runat="server">
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="text-center" style="font-size: 12pt; color: #C0C0C0; height: 36px; width: 113px;" colspan="2">
                &nbsp;</td>
            <td class="text-center" style="font-size: 12pt; color: #C0C0C0; height: 36px; width: 3%;">
                </td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; height: 36px; width: 3%;">
                </td>
        </tr>
        <tr>
            <td class="text-center" style="font-size: 12pt; color: #000000; width: 13%">&nbsp;</td>
            <td class="text-center" style="font-size: 18pt; color: #000000; width: 23%;">
                &nbsp;</td>
            <td style="font-size: 18pt; color: #3399FF; width: 113px;" colspan="2">
                &nbsp;</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; width: 3%;">
                &nbsp;</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; width: 3%;">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="text-center" style="font-size: 12pt; color: #000000; width: 13%; height: 21px;">Número de Personas</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; width: 23%;">
                <asp:DropDownList ID="DropDownList8" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
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
            <td class="text-center" style="font-size: 12pt; color: #000000; width: 13%; height: 21px;">&nbsp;</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; width: 23%;">
                &nbsp;</td>
            <td style="font-size: 18pt; color: #3399FF; width: 113px;" colspan="2">
                &nbsp;</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; width: 3%;">
                &nbsp;</td>
            <td class="text-center" style="font-size: 18pt; color: #3399FF; width: 3%;">
                &nbsp;</td>
        </tr>
        </table>
    <p style="color: #3399FF; font-size: large">
        <strong>Habitaciones Simples Disponibles</strong></p>
                <asp:GridView ID="GridView2" runat="server" Height="116px" Width="426px" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" HorizontalAlign="Center">
                </asp:GridView>
            <br />
    <span style="color: #3399FF; font-size: large"><strong>Habitaciones Dobles Disponibles</strong></span><asp:GridView ID="GridView3" runat="server" Height="125px" Width="426px" HorizontalAlign="Center">
                </asp:GridView>
            <br />
    <span style="color: #3399FF; font-size: large"><strong>Habitaciones Twin Disponibles</strong><asp:GridView ID="GridView6" runat="server" Height="125px" Width="426px" HorizontalAlign="Center">
                </asp:GridView>
            </span>
    <br />
    <span style="color: #3399FF; font-size: large"><strong>HabitacionesTriples Disponibles</strong><asp:GridView ID="GridView7" runat="server" Height="125px" Width="426px" HorizontalAlign="Center">
                </asp:GridView>
            <table class="nav-justified">
                <tr>
                    <td colspan="2">
                        <asp:Panel ID="Panel1" runat="server">
                        </asp:Panel>
                    </td>
                </tr>
                <tr>
                    <td>Subtotal</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" autocomplete="off" Enabled="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Impuestos</td>
                    <td>
    <span style="color: #3399FF; font-size: large">
                        <asp:TextBox ID="TextBox6" runat="server" autocomplete="off" Enabled="False"></asp:TextBox>
            </span></td>
                </tr>
                <tr>
                    <td>TOTAL</td>
                    <td>
    <span style="color: #3399FF; font-size: large">
                        <asp:TextBox ID="TextBox7" runat="server" autocomplete="off" Enabled="False"></asp:TextBox>
            </span></td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="BotonReservar" runat="server" Enabled="False" Text="Reservar" OnClick="BotonReservar_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">Porfavor para regsitrar la reserva, ingrese la información del responsable de la Reserva:</td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 526px; height: 22px"><span style="color: #CC3300">*</span>Nombre</td>
                    <td style="height: 22px">
                        <asp:TextBox ID="TextBox1" runat="server" autocomplete="off" Enabled="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 526px; height: 22px"><span style="color: #CC3300">*</span>Pasaporte</td>
                    <td style="height: 22px">
    <span style="color: #3399FF; font-size: large">
                        <asp:TextBox ID="TextBox2" runat="server" autocomplete="off" Enabled="False"></asp:TextBox>
            </span></td>
                </tr>
                <tr>
                    <td style="width: 526px; height: 22px"><span style="color: #CC3300">*</span>Número de Teléfono</td>
                    <td style="height: 22px">
    <span style="color: #3399FF; font-size: large">
                        <asp:TextBox ID="TextBox3" runat="server" autocomplete="off" Enabled="False"></asp:TextBox>
            </span></td>
                </tr>
                <tr>
                    <td style="width: 526px; height: 22px"><span style="color: #CC3300">*</span>Correo Electrónico</td>
                    <td style="height: 22px">
    <span style="color: #3399FF; font-size: large">
                        <asp:TextBox ID="TextBox4" runat="server" autocomplete="off" Enabled="False"></asp:TextBox>
            </span></td>
                </tr>
                <tr>
                    <td style="width: 526px; height: 22px">&nbsp;</td>
                    <td style="height: 22px">&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 526px; height: 22px"><span style="color: #CC3300">*</span>Número Tarjeta de Crédito</td>
                    <td style="height: 22px">
    <span style="color: #3399FF; font-size: large">
                        <asp:TextBox ID="TextBox8" runat="server" autocomplete="off" Enabled="False"></asp:TextBox>
            </span></td>
                </tr>
                <tr>
                    <td style="width: 526px; height: 22px"><span style="color: #CC3300"><strong>*</strong></span>Dígito Verificador</td>
                    <td style="height: 22px">
    <span style="color: #3399FF; font-size: large">
                        <asp:TextBox ID="TextBox9" runat="server" autocomplete="off" Enabled="False"></asp:TextBox>
            </span></td>
                </tr>
                <tr>
                    <td style="width: 526px; height: 22px">&nbsp;</td>
                    <td style="height: 22px">
                        <asp:TextBox ID="TextBox11" runat="server" autocomplete="off" Visible="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 526px; height: 22px">&nbsp;</td>
                    <td style="height: 22px">
    <span style="color: #3399FF; font-size: large">
                        <asp:TextBox ID="TextBox12" runat="server" autocomplete="off" Visible="False"></asp:TextBox>
            </span>
                    </td>
                </tr>
                <tr>
                    <td style="width: 526px; height: 22px">
    <span style="color: #3399FF; font-size: large">
                        <asp:Label ID="Label6" runat="server" Text="Huesped 2" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label9" runat="server" Text="*Nombre:" Visible="False" style="color: #000000"></asp:Label>
            </span>
                    </td>
                    <td style="height: 22px">
    <span style="color: #3399FF; font-size: large">
                        <asp:TextBox ID="TextBox10" runat="server" autocomplete="off" Visible="False"></asp:TextBox>
            </span></td>
                </tr>
                <tr>
                    <td style="width: 526px; height: 22px; color: #3399FF;" class="text-right">
    <span style="color: #3399FF; font-size: large">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label13" runat="server" Text="*Pasaporte:" Visible="False" style="color: #000000"></asp:Label>
            </span>
                    </td>
                    <td style="height: 22px">
    <span style="color: #3399FF; font-size: large">
                        <asp:TextBox ID="TextBox16" runat="server" autocomplete="off" Visible="False"></asp:TextBox>
            </span>
                    </td>
                </tr>
                <tr>
                    <td style="width: 526px; height: 22px">
    <span style="color: #3399FF; font-size: large">
                        <asp:Label ID="Label2" runat="server" Text="Huesped 3" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label10" runat="server" Text="*Nombre:" Visible="False" style="color: #000000"></asp:Label>
&nbsp;</span></td>
                    <td style="height: 22px">
    <span style="color: #3399FF; font-size: large">
                        <asp:TextBox ID="TextBox13" runat="server" autocomplete="off" Visible="False"></asp:TextBox>
            </span>
                    </td>
                </tr>
                <tr>
                    <td style="width: 526px; height: 22px">
    <span style="color: #3399FF; font-size: large">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label8" runat="server" style="text-align: right; color: #000000;" Text="*Pasaporte:" Visible="False"></asp:Label>
            </span>
                    </td>
                    <td style="height: 22px">
    <span style="color: #3399FF; font-size: large">
                        <asp:TextBox ID="TextBox17" runat="server" autocomplete="off" Visible="False"></asp:TextBox>
            </span>
                    </td>
                </tr>
                <tr>
                    <td style="width: 526px; height: 22px">
    <span style="color: #3399FF; font-size: large">
                        <asp:Label ID="Label3" runat="server" Text="Huesped 4" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label11" runat="server" Text="*Nombre:" Visible="False" style="color: #000000"></asp:Label>
&nbsp;</span></td>
                    <td style="height: 22px">
    <span style="color: #3399FF; font-size: large">
                        <asp:TextBox ID="TextBox14" runat="server" autocomplete="off" Visible="False"></asp:TextBox>
            </span>
                    </td>
                </tr>
                <tr>
                    <td style="width: 526px; height: 22px">
    <span style="color: #3399FF; font-size: large">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label14" runat="server" style="text-align: right; color: #000000;" Text="*Pasaporte:" Visible="False"></asp:Label>
            </span>
                    </td>
                    <td style="height: 22px">
    <span style="color: #3399FF; font-size: large">
                        <asp:TextBox ID="TextBox18" runat="server" autocomplete="off" Visible="False"></asp:TextBox>
            </span>
                    </td>
                </tr>
                <tr>
                    <td style="width: 526px; height: 22px">
    <span style="color: #3399FF; font-size: large">
                        <asp:Label ID="Label4" runat="server" Text="Huesped 5" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label12" runat="server" Text="*Nombre:" Visible="False" style="color: #000000"></asp:Label>
&nbsp;</span></td>
                    <td style="height: 22px">
    <span style="color: #3399FF; font-size: large">
                        <asp:TextBox ID="TextBox15" runat="server" autocomplete="off" Visible="False"></asp:TextBox>
            </span>
                    </td>
                </tr>
                <tr>
                    <td style="width: 526px; height: 22px">
    <span style="color: #3399FF; font-size: large">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label15" runat="server" style="text-align: right; color: #000000;" Text="*Pasaporte:" Visible="False"></asp:Label>
            </span>
                    </td>
                    <td style="height: 22px">
    <span style="color: #3399FF; font-size: large">
                        <asp:TextBox ID="TextBox19" runat="server" autocomplete="off" Visible="False"></asp:TextBox>
            </span>
                    </td>
                </tr>
                </table>
    <table class="nav-justified">
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
    <span style="color: #3399FF; font-size: large">
                        <asp:Button ID="BotonAceptar" runat="server" Enabled="False" Text="Aceptar" OnClick="BotonAceptar_Click" Visible="False" />
            </span>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
    <span style="color: #3399FF; font-size: large">
                        <asp:TextBox ID="TextBox20" runat="server" Enabled="False" Visible="False" Width="486px"></asp:TextBox>
            </span></td>
        </tr>
    </table>
            </span>
</asp:Content>
