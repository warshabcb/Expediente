using Expediente.Data;
using Expediente.Models;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Security.Claims;
using System.Security.Cryptography;
using System.Text;

namespace Expediente.Controllers
{
    public class AccountController : Controller
    {

        private const int MaxLoginAttempts = 3;
        private const int LockoutDuration = 15; // Minutos
		private readonly Base_Datos _context;
		public AccountController(Base_Datos context)
		{
			_context = context;
		}
		public IActionResult Index()
        {
            return View();
        }

        [HttpGet]
        public IActionResult Login()
        {
            return View();
        }
		[HttpPost]
		public async Task<IActionResult> Login(LoginViewModel User)
		{

			if (ModelState.IsValid)
			{
				var Busqueda = await _context.Users.FirstOrDefaultAsync(m => m.Cedula == User.Cedula);
				if (Busqueda != null)
				{
					if (VerifyPassword(User.Password, Busqueda.PasswordHash))
					{
						var claims = new List<Claim>
						{
							new Claim(ClaimTypes.Name, Busqueda.Cedula),
							new Claim(ClaimTypes.Role, Busqueda.Role)
							// Agrega aquí más claims según sea necesario
						};

						var claimsIdentity = new ClaimsIdentity(claims, CookieAuthenticationDefaults.AuthenticationScheme);
						var claimsPrincipal = new ClaimsPrincipal(claimsIdentity);

						await HttpContext.SignInAsync(CookieAuthenticationDefaults.AuthenticationScheme, claimsPrincipal);
						// Guardar información del usuario en la sesión
						HttpContext.Session.SetString("UserCedula", Busqueda.Cedula);
						HttpContext.Session.SetString("UserName", Busqueda.Nombre);
						HttpContext.Session.SetString("UserEmail", Busqueda.Email);
						HttpContext.Session.SetString("UserRole", Busqueda.Role);
						TempData["SuccessMessage"] = "Login Correcto..";
						return RedirectToAction("Index", "Fisicos");
					}
					else
					{
						ViewBag.ErrorMessage = "La contraseña es incorrecta.";
					}
				}
				else
				{
					ViewBag.ErrorMessage = "No se encontró el usuario.";
				}
			}

			return View(User);
		}




		public static string HashPassword(string password)
		{
			using (SHA256 sha256 = SHA256.Create())
			{
				byte[] hashedBytes = sha256.ComputeHash(Encoding.UTF8.GetBytes(password));
				string hash = BitConverter.ToString(hashedBytes).Replace("-", "").ToLower();
				return hash;
			}
		}
		public static bool VerifyPassword(string enteredPassword, string storedHash)
		{
			string enteredHash = HashPassword(enteredPassword);
			return enteredHash.Equals(storedHash);
		}


	}
}
