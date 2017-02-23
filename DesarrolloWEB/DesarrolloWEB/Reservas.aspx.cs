using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace DesarrolloWEB
{
    public partial class Reservas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //Componentes del Form
        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            Calendar2.Enabled = true;
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {

            if ((e.Day.Date.Day < DateTime.Today.Day) || (e.Day.Date.Month < DateTime.Today.Month) || (e.Day.Date.Year < DateTime.Today.Year))
            {
                e.Day.IsSelectable = false;
            }

            if ((e.Day.Date.Day < DateTime.Today.Day) && (e.Day.Date.Month > DateTime.Today.Month) && (e.Day.Date.Year >= DateTime.Today.Year))
            {
                e.Day.IsSelectable = true;
            }

        }

        protected void Calendar2_DayRender(object sender, DayRenderEventArgs e)
        {

            if ((e.Day.Date.Day < Calendar1.SelectedDate.Day) || (e.Day.Date.Month < Calendar1.SelectedDate.Month) || (e.Day.Date.Year < Calendar1.SelectedDate.Year))
            {
                e.Day.IsSelectable = false;
            }

            if ((e.Day.Date.Day < Calendar1.SelectedDate.Day) && (e.Day.Date.Month > Calendar1.SelectedDate.Month) && (e.Day.Date.Year >= Calendar1.SelectedDate.Year))
            {
                e.Day.IsSelectable = true;
            }

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox10_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {

        }

        //Botón Buscar
        protected void Buscar_Click(object sender, EventArgs e)
        {
            BotonReservar.Enabled = true;

            string fechainicio = Calendar1.SelectedDate.ToString();
            string fachafin = Calendar2.SelectedDate.ToString();

            
            ConsultasBaseDatos consu = new ConsultasBaseDatos();              
            string consulta = "select top "+DropDownList1.SelectedValue+ " numerohabitacion as 'Numero de la habitacion', numeropiso as Piso,descripcionhabitacion as 'Descripción',preciohabitacion as precio, idhabitacion as cod from habitacion where estadohabitacion = 'Disponible' and idtipohabitacion='1' and idhabitacion not in (select idhabitacion from reserva a, detallereserva b where a.idreserva = b.idreserva and fechainicio between '" + Calendar1.SelectedDate.ToString("MM/dd/yyyy HH:MM:ss") + "'  and '" + Calendar2.SelectedDate.ToString("MM/dd/yyyy HH:MM:ss") + "')";
            string consulta1 = "select top " + DropDownList5.SelectedValue + " numerohabitacion as 'Numero de la habitacion',numeropiso as Piso,descripcionhabitacion as 'Descripción',preciohabitacion as precio, idhabitacion as cod from habitacion where estadohabitacion = 'Disponible' and idtipohabitacion='2' and idhabitacion not in (select idhabitacion from reserva a, detallereserva b where a.idreserva = b.idreserva and fechainicio between '" + Calendar1.SelectedDate.ToString("MM/dd/yyyy HH:MM:ss") + "'  and '" + Calendar2.SelectedDate.ToString("MM/dd/yyyy HH:MM:ss") + "')";
            string consulta2 = "select top " + DropDownList6.SelectedValue + " numerohabitacion as 'Numero de la habitacion',numeropiso as Piso,descripcionhabitacion as 'Descripción',preciohabitacion as precio, idhabitacion as cod from habitacion where estadohabitacion = 'Disponible' and idtipohabitacion='3' and idhabitacion not in (select idhabitacion from reserva a, detallereserva b where a.idreserva = b.idreserva and fechainicio between '" + Calendar1.SelectedDate.ToString("MM/dd/yyyy HH:MM:ss") + "'  and '" + Calendar2.SelectedDate.ToString("MM/dd/yyyy HH:MM:ss") + "')";
            string consulta3 = "select top " + DropDownList7.SelectedValue + " numerohabitacion as 'Numero de la habitacion',numeropiso as Piso,descripcionhabitacion as 'Descripción',preciohabitacion as precio, idhabitacion as cod from habitacion where estadohabitacion = 'Disponible' and idtipohabitacion='4' and idhabitacion not in (select idhabitacion from reserva a, detallereserva b where a.idreserva = b.idreserva and fechainicio between '" + Calendar1.SelectedDate.ToString("MM/dd/yyyy HH:MM:ss") + "'  and '" + Calendar2.SelectedDate.ToString("MM/dd/yyyy HH:MM:ss") + "')";
            DataTable consultaregreso, consultaregreso1, consultaregreso2, consultaregreso3;

            //Simples
            consultaregreso = consu.consultar(consulta);
            this.GridView2.DataSource = consultaregreso;
            GridView2.Visible = true;
            this.GridView2.DataBind();

            //Dobles
           consultaregreso1 = consu.consultar(consulta1);
           this.GridView3.DataSource = consultaregreso1;
            GridView3.Visible = true;
            this.GridView3.DataBind();

            //Dobles
            consultaregreso2 = consu.consultar(consulta2);
            this.GridView6.DataSource = consultaregreso2;
            GridView6.Visible = true;
            this.GridView6.DataBind();

            //Dobles
            consultaregreso3 = consu.consultar(consulta3);
            this.GridView7.DataSource = consultaregreso3;
            GridView7.Visible = true;
            this.GridView7.DataBind();

            //Total Simples
            double suma = GridView2.Rows.Cast<GridViewRow>().Sum(x => Convert.ToDouble(x.Cells[3].Text));

            //Total Dobles
            double suma1 = GridView3.Rows.Cast<GridViewRow>().Sum(x => Convert.ToDouble(x.Cells[3].Text));

            //Total Twin
            double suma2 = GridView6.Rows.Cast<GridViewRow>().Sum(x => Convert.ToDouble(x.Cells[3].Text));

            //Total Triples
            double suma3 = GridView7.Rows.Cast<GridViewRow>().Sum(x => Convert.ToDouble(x.Cells[3].Text));

            double total = suma + suma1 + suma2 + suma3;
            double Impuesto = 14;
            double calculoImpuesto = ((Impuesto * total) / 100);
            double subtotal = total - calculoImpuesto;

            TextBox5.Text = Convert.ToString(subtotal).Replace(",", ".");
            TextBox6.Text = Convert.ToString(calculoImpuesto).Replace(",", ".");
            TextBox7.Text = Convert.ToString(total).Replace(",", ".");

          

        }

        private bool IsNumeric(string num)
        {
            try
            {
                double x = Convert.ToDouble(num);
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        //Botón Reservar
        protected void BotonReservar_Click(object sender, EventArgs e)
        {
           
            Nueva.Visible = true;
            BotonAceptar.Visible = true;
            Buscar.Enabled = false;
            BotonAceptar.Enabled = true;
            TextBox1.Enabled = true;
            TextBox2.Enabled = true;
            TextBox3.Enabled = true;
            TextBox4.Enabled = true;
            TextBox8.Enabled = true;
            TextBox9.Enabled = true;
            if (DropDownList8.SelectedValue == "2")
            {
                Label6.Visible = true;
                TextBox10.Visible = true;
                TextBox16.Visible = true;
                Label9.Visible = true;
                Label13.Visible = true;


            }

            else if (DropDownList8.SelectedValue == "3")
            {
                Label6.Visible = true;
                TextBox10.Visible = true;
                Label2.Visible = true;
                TextBox13.Visible = true;
                TextBox16.Visible = true;
                TextBox17.Visible = true;
                Label9.Visible = true;
                Label10.Visible = true;
                Label13.Visible = true;
                Label8.Visible = true;

            }
            else if (DropDownList8.SelectedValue == "4")
            {
                Label6.Visible = true;
                TextBox10.Visible = true;
                Label2.Visible = true;
                TextBox13.Visible = true;
                Label3.Visible = true;
                TextBox14.Visible = true;
                TextBox16.Visible = true;
                TextBox17.Visible = true;
                TextBox18.Visible = true;
                Label10.Visible = true;
                Label11.Visible = true;
                Label9.Visible = true;
                Label13.Visible = true;
                Label8.Visible = true;
                Label14.Visible = true;


            }
            else if (DropDownList8.SelectedValue == "5")
            {
                Label6.Visible = true;
                TextBox10.Visible = true;
                Label2.Visible = true;
                TextBox13.Visible = true;
                Label3.Visible = true;
                TextBox14.Visible = true;
                Label4.Visible = true;
                TextBox15.Visible = true;
                TextBox16.Visible = true;
                TextBox17.Visible = true;
                TextBox18.Visible = true;
                TextBox19.Visible = true;
                Label10.Visible = true;
                Label11.Visible = true;
                Label12.Visible = true;
                Label9.Visible = true;
                Label13.Visible = true;
                Label8.Visible = true;
                Label14.Visible = true;
                Label15.Visible = true;




            }
        }

        //Boton Aceptar
        protected void BotonAceptar_Click(object sender, EventArgs e)
        {
            
            
            string ingresar1 = "insert into cliente values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')";
            string consulta = "select max(idreserva) as max from reserva";
            string consulta1 = "select max(dicliente) as max from cliente";
            ConsultasBaseDatos consu = new ConsultasBaseDatos();

            if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "" || TextBox8.Text == "" || TextBox9.Text == "")

            {

                TextBox20.Visible = true;
                TextBox20.Text = "Todos los campos son obligatorios";

            }

            else if (IsNumeric(TextBox2.Text) == false || IsNumeric(TextBox3.Text) == false || IsNumeric(TextBox8.Text) == false || IsNumeric(TextBox9.Text) == false)
            {
                TextBox20.Visible = true;
                TextBox20.Text = "Solo valores numericos";

            }
          
            else
            {
                BotonReservar.Enabled = false;
                Nueva.Visible = true;
                BotonAceptar.Enabled = false;
                consu.counsultaTodoTipo(ingresar1);
                DataTable consultaregreso1;
                consultaregreso1 = consu.consultar(consulta1);
                if (consultaregreso1.Rows.Count > 0)
                {
                    DataRow row = consultaregreso1.Rows[0];
                    TextBox12.Text = row["max"].ToString();

                }
                string ingresar = "insert into reserva values (" + TextBox12.Text + ",'" + DateTime.Now.ToString("MM/dd/yyyy HH:MM:ss") + "'," + TextBox5.Text + ", " + TextBox6.Text + ", " + TextBox7.Text + ", '" + Calendar1.SelectedDate.ToString("MM/dd/yyyy HH:MM:ss") + "', '" + Calendar2.SelectedDate.ToString("MM/dd/yyyy HH:MM:ss") + "', " + DropDownList8.SelectedValue + ")";
                 consu.counsultaTodoTipo(ingresar);

                DataTable consultaregreso;
                consultaregreso = consu.consultar(consulta);
                if (consultaregreso.Rows.Count > 0)
                {
                    DataRow row = consultaregreso.Rows[0];
                    TextBox11.Text = row["max"].ToString();

                }

                    TextBox20.Visible = true;
                TextBox20.Text = "Reserva Registrada";
                TextBox1.Enabled = false;
                TextBox2.Enabled = false;
                TextBox3.Enabled = false;
                TextBox4.Enabled = false;
                TextBox8.Enabled = false;
                TextBox9.Enabled = false;


              

               if (GridView2.Rows.Count == 1)
                {
                    SqlConnection conexion = new SqlConnection("Server=tcp:servidorbaseweb.database.windows.net,1433;Initial Catalog=baseWeb;Persist Security Info=False;User ID=sw;Password=Proyecto1;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
                    conexion.Open();
                    SqlCommand agregar = new SqlCommand("insert into detallereserva  values (@idreserva,@idhabitacion);", conexion);

                  

                    foreach (GridViewRow row in GridView2.Rows)
                    {
                        agregar.Parameters.Clear();
                        agregar.Parameters.AddWithValue("@idreserva", Convert.ToInt32(TextBox11.Text));
                        agregar.Parameters.AddWithValue("@idhabitacion", Convert.ToInt32(row.Cells[4].Text));

                        agregar.ExecuteNonQuery();

                    }
                    conexion.Close();
                }

                if (GridView3.Rows.Count == 1)
                {

                    SqlConnection conexion = new SqlConnection("Server=tcp:servidorbaseweb.database.windows.net,1433;Initial Catalog=baseWeb;Persist Security Info=False;User ID=sw;Password=Proyecto1;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
                    conexion.Open();
                    SqlCommand agregar = new SqlCommand("insert into detallereserva  values (@idreserva,@idhabitacion);", conexion);
                    foreach (GridViewRow row in GridView3.Rows)
                    {
                        agregar.Parameters.Clear();
                        agregar.Parameters.AddWithValue("@idreserva", Convert.ToInt32(TextBox11.Text));
                        agregar.Parameters.AddWithValue("@idhabitacion", Convert.ToInt32(row.Cells[4].Text));

                        agregar.ExecuteNonQuery();

                    }
                    conexion.Close();
                }


                if (GridView6.Rows.Count == 1)
                {

                    SqlConnection conexion = new SqlConnection("Server=tcp:servidorbaseweb.database.windows.net,1433;Initial Catalog=baseWeb;Persist Security Info=False;User ID=sw;Password=Proyecto1;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
                    conexion.Open();
                    SqlCommand agregar = new SqlCommand("insert into detallereserva  values (@idreserva,@idhabitacion);", conexion);
                    foreach (GridViewRow row in GridView6.Rows)
                    {
                        agregar.Parameters.Clear();
                        agregar.Parameters.AddWithValue("@idreserva", Convert.ToInt32(TextBox11.Text));
                        agregar.Parameters.AddWithValue("@idhabitacion", Convert.ToInt32(row.Cells[4].Text));

                        agregar.ExecuteNonQuery();

                    }
                    conexion.Close();
                }

                if (GridView7.Rows.Count == 1)
                {

                    SqlConnection conexion = new SqlConnection("Server=tcp:servidorbaseweb.database.windows.net,1433;Initial Catalog=baseWeb;Persist Security Info=False;User ID=sw;Password=Proyecto1;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
                    conexion.Open();
                    SqlCommand agregar = new SqlCommand("insert into detallereserva  values (@idreserva,@idhabitacion);", conexion);
                    foreach (GridViewRow row in GridView7.Rows)
                    {
                        agregar.Parameters.Clear();
                        agregar.Parameters.AddWithValue("@idreserva", Convert.ToInt32(TextBox11.Text));
                        agregar.Parameters.AddWithValue("@idhabitacion", Convert.ToInt32(row.Cells[4].Text));

                        agregar.ExecuteNonQuery();

                    }
                    conexion.Close();
                }

                if (TextBox10.Visible.Equals(true) && TextBox13.Visible.Equals(true) && TextBox14.Visible.Equals(true) && TextBox15.Visible.Equals(true))
                {
                    string cliente2 = "insert into clienteasociado values (" + TextBox12.Text + ", '"+TextBox10.Text+"', '"+TextBox16.Text+"')";
                    string cliente3 = "insert into clienteasociado values (" + TextBox12.Text + ", '" + TextBox13.Text + "', '" + TextBox17.Text + "')";
                    string cliente4 = "insert into clienteasociado values (" + TextBox12.Text + ", '" + TextBox14.Text + "', '" + TextBox18.Text + "')";
                    string cliente5 = "insert into clienteasociado values (" + TextBox12.Text + ", '" + TextBox15.Text + "', '" + TextBox19.Text + "')";

                    consu.counsultaTodoTipo(cliente2);
                    consu.counsultaTodoTipo(cliente3);
                    consu.counsultaTodoTipo(cliente4);
                    consu.counsultaTodoTipo(cliente5);
                }

                else if (TextBox10.Visible.Equals(true) && TextBox13.Visible.Equals(true) && TextBox14.Visible.Equals(true))
                {
                    string cliente2 = "insert into clienteasociado values (" + TextBox12.Text + ", '" + TextBox10.Text + "', '" + TextBox16.Text + "')";
                    string cliente3 = "insert into clienteasociado values (" + TextBox12.Text + ", '" + TextBox13.Text + "', '" + TextBox17.Text + "')";
                    string cliente4 = "insert into clienteasociado values (" + TextBox12.Text + ", '" + TextBox14.Text + "', '" + TextBox18.Text + "')";
                  
                    consu.counsultaTodoTipo(cliente2);
                    consu.counsultaTodoTipo(cliente3);
                    consu.counsultaTodoTipo(cliente4);             
                }

                else if (TextBox10.Visible.Equals(true) && TextBox13.Visible.Equals(true))
                {
                    string cliente2 = "insert into clienteasociado values (" + TextBox12.Text + ", '" + TextBox10.Text + "', '" + TextBox16.Text + "')";
                    string cliente3 = "insert into clienteasociado values (" + TextBox12.Text + ", '" + TextBox13.Text + "', '" + TextBox17.Text + "')";
                  
                    consu.counsultaTodoTipo(cliente2);
                    consu.counsultaTodoTipo(cliente3);                 
                }

                else
                {
                    string cliente2 = "insert into clienteasociado values (" + TextBox12.Text + ", '" + TextBox10.Text + "', '" + TextBox16.Text + "')";              
                    consu.counsultaTodoTipo(cliente2);                 
                }


            }

        }

        //Boton Nueva Busqueda
        protected void Nueva_Click(object sender, EventArgs e)
        {
            Response.Redirect("Reservas.aspx");

        }
      

       
    }
}