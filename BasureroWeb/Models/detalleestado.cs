//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace BasureroWeb.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class detalleestado
    {
        public int iddetalleEstado { get; set; }
        public System.DateTime fechaDE { get; set; }
        public string nombreDE { get; set; }
        public Nullable<int> capacidadDE { get; set; }
        public Nullable<int> cargaDE { get; set; }
        public string areaDE { get; set; }
        public string direccionDE { get; set; }
        public int fk_tablabasurero { get; set; }
        public int fk_estadoBasurero { get; set; }
    
        public virtual basurero basurero { get; set; }
        public virtual estadobasurero estadobasurero { get; set; }
    }
}
