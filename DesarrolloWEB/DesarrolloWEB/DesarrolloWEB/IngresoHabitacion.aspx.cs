using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace DesarrolloWEB
{
    public partial class IngresoHabitacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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
        

        //Boton Guardar
        protected void BotonGuardar_Click(object sender, EventArgs e)
        {
            int numpiso = int.Parse(TextBox4.Text);
            Label1.Visible = false;
            Label2.Visible = false;
            Label3.Visible = false;
            Label4.Visible = false;
            Label5.Visible = false;
            TextBox5.Text = "";
            TextBox5.Visible = false;

            //Comando SQL Insert para la base de datos
          
            string ingresar = "insert INTO HABITACION (IDTIPOHABITACION,NUMEROHABITACION,PRECIOHABITACION,DESCRIPCIONHABITACION,NUMEROPISO,ESTADOHABITACION) VALUES (" + DropDownList1.SelectedValue + ",'" + TextBox1.Text + "'," + TextBox2.Text + ",'" + TextBox3.Text + "','" + TextBox4.Text + "','Disponible')";
            string consulta = "select NUMEROHABITACION from HABITACION where NUMEROHABITACION = " + TextBox1.Text + "";
            string consulta4 = "select NUMEROHABITACION from HABITACION where NUMEROPISO = " + TextBox4.Text + "";

            if (IsNumeric(TextBox1.Text) == false || IsNumeric(TextBox2.Text) == false || IsNumeric(TextBox4.Text) == false)
            {
                TextBox5.Visible = true;
                TextBox5.Text = "Solo valores numericos";
                Label2.Visible = true;
                Label3.Visible = true;
                Label5.Visible = true;
            }

            else
            {

            ConsultasBaseDatos consu = new ConsultasBaseDatos();

            DataTable consultaregreso;
            consultaregreso = consu.consultar(consulta);

            DataTable consultaregreso1;
            consultaregreso1 = consu.consultar(consulta4);

            //Comprobación de campos vacíos
            if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "")

            {
                Label1.Visible = true;
                Label2.Visible = true;
                Label3.Visible = true;
                Label4.Visible = true;
                Label5.Visible = true;
                TextBox5.Visible = true;
                TextBox5.Text = "Los campos no deben ser 0 o vacíos";

            }

            else if (TextBox1.Text == "0" || TextBox2.Text == "0" || TextBox3.Text == "0" || TextBox4.Text == "0")

            {
                Label1.Visible = true;
                Label2.Visible = true;
                Label3.Visible = true;
                Label4.Visible = true;
                Label5.Visible = true;
                TextBox5.Visible = true;
                TextBox5.Text = "Todos los campos con * son obligatorios";

            }

            else if (consultaregreso.Rows.Count > 0)
            {
                TextBox5.Visible = true;
                TextBox5.Text = "El número de habitación ya está regitrado";
                Label2.Visible = true;
            }

            else if (TextBox4.Text == "13" || numpiso >20)
            {
                TextBox5.Visible = true;
                TextBox5.Text = "El piso no existe";
                Label5.Visible = true;
            }

            else if (consultaregreso1.Rows.Count > 5)
            {
                TextBox5.Visible = true;
                TextBox5.Text = "En ese piso ya existen 5 habitaciones";
                Label5.Visible = true;
            }

            else
            {
                Label1.Visible = false;
                Label2.Visible = false;
                Label3.Visible = false;
                Label4.Visible = false;
                Label5.Visible = false;
                consu.counsultaTodoTipo(ingresar);
                TextBox1.Text = "0";
                TextBox2.Text = "0";
                TextBox3.Text = "0";
                TextBox4.Text = "0";

            }

 

    }
        }

        //Botón Buscar
        protected void BotonBuscar_Click(object sender, EventArgs e)
        {
            string consulta = "select NOMBRETIPOHABITACION,NUMEROHABITACION, PRECIOHABITACION, DESCRIPCIONHABITACION, NUMEROPISO, ESTADOHABITACION  from TIPOHABITACION a, HABITACION b where a.IDTIPOHABITACION = b.IDHABITACION and NUMEROHABITACION = '" + TextBox1.Text + "'";
            ConsultasBaseDatos consu = new ConsultasBaseDatos();

            DataTable consultaregreso;
          

            Label1.Visible = false;
            Label2.Visible = false;
            Label3.Visible = false;
            Label4.Visible = false;
            Label5.Visible = false;

            if (IsNumeric(TextBox1.Text) == false)
            {
                TextBox5.Visible = true;
                TextBox5.Text = "Solo números";
                Label2.Visible = true;

            }

            else
            {

                if (TextBox1.Text == "" || TextBox1.Text == "0")
                {
                    Label2.Visible = true;
                    TextBox5.Visible = true;
                    TextBox5.Text = "Ingrese un número para la búsqueda";
                }

                else
                {
                    Label2.Visible = false;
                    
                    
                    consultaregreso = consu.consultar(consulta);
                    if (consultaregreso.Rows.Count > 0)
                    {
                        DataRow row = consultaregreso.Rows[0];

                        TextBox2.Text = row["PRECIOHABITACION"].ToString();
                        TextBox3.Text = row["DESCRIPCIONHABITACION"].ToString();
                        TextBox4.Text = row["NUMEROPISO"].ToString();
                        TextBox5.Text = row["NOMBRETIPOHABITACION"].ToString();
                        TextBox6.Text = row["ESTADOHABITACION"].ToString();
                        TextBox7.Text = row["NUMEROHABITACION"].ToString();
                        TextBox4.Enabled = false;
                        TextBox6.Visible = true;
                        TextBox5.Visible = true;
                        BotonNuevo.Visible = true;
                        
                    }

                    else
                    {
                        TextBox1.Text = "0";
                        Label2.Visible = false;
                        TextBox5.Visible = true;
                        TextBox5.Text = "No hay Resultados";
                    }
                }
               
            }
        }

        //Boton Nuevo
        protected void BotonNuevo_Click(object sender, EventArgs e)
        {
            Label1.Visible = false;
            Label2.Visible = false;
            Label3.Visible = false;
            Label4.Visible = false;
            Label5.Visible = false;
            TextBox4.Enabled = true;
            TextBox1.Text = "0";
            TextBox2.Text = "0";
            TextBox3.Text = "0";
            TextBox4.Text = "0";
            TextBox5.Text = "";
            TextBox5.Visible = false;
            TextBox6.Text = "";
            TextBox6.Visible = false;
            TextBox7.Text = "";
            BotonNuevo.Visible = false;
        }

        //Boton Actualizar
        protected void BotonActualizar_Click(object sender, EventArgs e)
        {
            ConsultasBaseDatos update = new ConsultasBaseDatos();

            if (IsNumeric(TextBox2.Text) == false)
            {
                TextBox5.Visible = true;
                TextBox5.Text = "Solo números";
                Label3.Visible = true;

            }

            else
            {
                if (TextBox2.Text == "" || TextBox3.Text == "" || TextBox6.Text == "")
                {
                    TextBox5.Visible = true;
                    TextBox5.Text = "Los campos * no pueden estar vacíos";
                    Label3.Visible = true;
                    Label4.Visible = true;
                    Label6.Visible = true;
                }

                else
                {
                    string ingreso = "update HABITACION set PRECIOHABITACION = "+TextBox2.Text+", DESCRIPCIONHABITACION = '"+TextBox3.Text+"', ESTADOHABITACION = '"+TextBox6.Text+"' where NUMEROHABITACION = '" + TextBox7.Text + "'";
                    update.counsultaTodoTipo(ingreso);
                    Label3.Visible = false;
                    Label4.Visible = false;
                    Label6.Visible = false;
                    TextBox5.Text = "Datos Actualizados";
                    TextBox6.Text = "";
                    TextBox6.Visible = false;
                    TextBox1.Text = "0";
                    TextBox2.Text = "0";
                    TextBox3.Text = "0";
                    TextBox4.Text = "0";
                    TextBox4.Enabled = true;
                }
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox7_TextChanged(object sender, EventArgs e)
        {

        }
    }
   
}