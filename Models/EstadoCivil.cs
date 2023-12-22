using System.ComponentModel.DataAnnotations;

namespace Expediente.Models
{
    public class EstadoCivil
    {
        [Key]
        public int Id { get; set; }
        [Required]
        public string Estado_Civil { get; set; } = string.Empty;
    }
}
