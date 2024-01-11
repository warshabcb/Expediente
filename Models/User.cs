using System.ComponentModel.DataAnnotations;

namespace Expediente.Models
{
    public class User
    {
        public int Id { get; set; }
		
		[Display(Name = "Numero de Identificacion")]
		public string Cedula { get; set; }
        public string Nombre { get; set; }
        public string Email { get; set; }
        public string PasswordHash { get; set; }
        public string Role { get; set; }
        public int FailedLoginAttempts { get; set; }
        public DateTime? LockoutEndTime { get; set; }
    }

    public class LoginViewModel
    {
		[Display(Name = "Numero de Identificacion")]
		[Required(ErrorMessage = "La Cedula es requerida")]
		public string Cedula { get; set; }
		[Required(ErrorMessage = "Es requerido el password")]
		[Display(Name = "Contraseña")]
		public string Password { get; set; }
    }
}
