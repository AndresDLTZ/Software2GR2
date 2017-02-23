using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace DesarrolloWEB
{
    public class ConsultasBaseDatos
    {
        ConexionBaseDatos conex = new ConexionBaseDatos();

        //solo para consultas 
        public DataTable consultar(String consulta)
        {
            DataSet DS = conex.ExecuteDataSet(consulta);
            DataTable DT = DS.Tables[0];
            return DT;

        }


        //insert delet update
        public void counsultaTodoTipo(String ingreso)
        {
            DataSet DS = conex.ExecuteDataSet(ingreso);
        }
    }
}