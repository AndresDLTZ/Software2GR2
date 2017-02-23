<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DesarrolloWEB._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1 class="text-center"><span style="font-size: 26pt"><span style="color: #0066FF"><strong>Hotel San Francisco de Quito</strong></span> </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <a class="btn btn-default"  href="Reservas.aspx" ">Reservas &raquo;</a>
         
        </h1>
        		<div class="carousel slide" id="carousel-135244">
				<ol class="carousel-indicators">
					<li class="active" data-target="#carousel-135244" data-slide-to="0">
					</li>
					<li data-target="#carousel-135244" data-slide-to="1">
					</li>
					<li data-target="#carousel-135244" data-slide-to="2">
					</li>
				</ol>
				<div class="carousel-inner">
					<div class="item active" style="text-align: justify">
						<img alt="Carousel Bootstrap First" src="http://www.hotelesquito.com.ec/pictures/sanfrancisco_1.jpg" style="width: 429px" />
						<div class="carousel-caption">
							<h4>
								Zona Colonial
							</h4>
							<p>
								Hotel ubicado en el centro colonial de Quito, ofrece a sus huéspedes una inolvidable experiencia colonial.
							</p>
						</div>
					</div>
					<div class="item">
						<img alt="Carousel Bootstrap Second" src="https://www.galapagosislands.com/images/ecuador-hotels/quito-hotels/san-francisco/full/san-francisco-patio-01.jpg" />
						<div class="carousel-caption">
							<h4>
								Un Ambiente Total de Confort y Relax
							</h4>
							<p>
								EL hotel está ubicado en una zona tranquila, cerca de los atractivos turísticos de la Carita de Dios.
							</p>
						</div>
					</div>
					<div class="item">
						<img alt="Carousel Bootstrap Third" src="https://media-cdn.tripadvisor.com/media/photo-o/05/52/90/4b/hotel-san-francisco-de.jpg" />
						<div class="carousel-caption">
							<h4>
								La mejor calidad en Hospedaje
							</h4>
							<p>
								Disponemos de amplias y atractivas habitaciones para su confort.
							</p>
						</div>
					</div>
				</div> <a class="left carousel-control" href="#carousel-135244" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control" href="#carousel-135244" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
			</div>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Servicios</h2>
            <p>
                El Hotel dispone de sevicios especiales, que se pueden agragar a la reserva de la o las habitaciones, con el fin de brindar un servicio de excelente calidad.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301948">Detalles &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Habitaciones y Suites</h2>
            <p>
                El hotel pone a su disposición todo tipo de habitaciones con el más alto grado de confort y elegancia.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301949">Detalles &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Talento Humano</h2>
            <p>
                Para poder brindar una atención de alta calidad a nuestros clietes, nuestro personal tiene la más alta capacitación en el área social.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301950">Detalles &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
