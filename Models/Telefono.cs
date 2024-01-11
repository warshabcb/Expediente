using System.ComponentModel.DataAnnotations;

namespace Expediente.Models
{
    public class Telefono
    {
        [Key]
        public int Id { get; set; }
        [Required(ErrorMessage = "La identificacion es requerida.")]
        public string Identificacion { get; set; } = string.Empty;
        [Required(ErrorMessage = "El tipo es requerida.")]
        public string Tipo { get; set; } = string.Empty;
        [Required(ErrorMessage = "El Telefono es requerida.")]
        public string Phone { get; set; } = string.Empty; 
       
    }
}
