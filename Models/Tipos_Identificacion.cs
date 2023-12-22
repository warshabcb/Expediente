using System.ComponentModel.DataAnnotations;

namespace Expediente.Models
{
    public class Tipos_Identificacion
    {
        [Key]
        public int Id { get; set; }
        [Required]
        public string Tipo { get; set; } = "Cedula Identificacion";
    }
}
