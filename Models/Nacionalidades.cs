using System.ComponentModel.DataAnnotations;

namespace Expediente.Models
{
    public class Nacionalidades
    {
        [Key]
        public int Id { get; set; }
        [Required]
        public string Nombre_Spanish { get; set; } = string.Empty;
        [Required]
        public string Nombre_English { get; set; } = string.Empty;
        [Required]
        public string ISO2 { get; set; } = string.Empty;
        public string ISO3 { get; set; } = string.Empty;
        public string Phone_Code { get; set; } = string.Empty;
    }
}
