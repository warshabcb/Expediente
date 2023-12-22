using System.ComponentModel.DataAnnotations;

namespace Expediente.Models
{
    public class Genero
    {
        [Key]
        public int Id { get; set; }
        [Required]
        public string Sexo { get; set; } = string.Empty;
    }
}
