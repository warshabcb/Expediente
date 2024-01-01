using System.ComponentModel.DataAnnotations;

namespace Expediente.Models
{
    public class Fisico
    {
            [Key]
            public int Id { get; set; }

            [Required(ErrorMessage = "El tipo de identificacion es requerida.")]
            [Display(Name = "Tipo Identificacion")]
            public string Tipo_Identificacion { get; set; } = string.Empty;
        
            [Required(ErrorMessage = "La Identificacion es obligatorio.")]
            public string Identificacion { get; set; } = string.Empty;
            
            [Required (ErrorMessage = "El nombre es obligatorio.")]
            public string Nombre { get; set; } = string.Empty;
            
            [Required(ErrorMessage = "El Apellido es obligatorio.")]
            [Display(Name = "1° Apellido")]
            public string PrimerApellido { get; set; } = string.Empty;
            
            [Display(Name = "2° Apellido")]
            public string SegundoApellido { get; set; } = string.Empty;

            [DataType(DataType.Date)]
            [Display(Name = "Fecha de Nacimiento")]
            [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:yyyy-MM-dd}")]
            [Required(ErrorMessage = "Es obligatorio la fecha nacimiento.")]
            public DateOnly FechaNacimiento { get; set; }

            [Display(Name = "Estado Civil")]
            public string EstadoCivil { get; set; } = string.Empty;

            public string Sexo { get; set; } = string.Empty;

            public string Nacionalidad { get; set; } = string.Empty;
            public string Ocupacion { get; set; } = "No especificado";

            [Display(Name = "# Veces Casado")]
            [Range(0, 99, ErrorMessage = "El número de veces casado debe estar entre 0 y 99")]
            public int CasadoVeces { get; set; } = 0;
    }
    
}
