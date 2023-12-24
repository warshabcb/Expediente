 
using Expediente.Data;
using Expediente.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;

namespace Expediente.Controllers
{
    public class GeneralController : Controller
    {
        private readonly Base_Datos _context;
        public GeneralController(Base_Datos context)
        {
            _context = context;
        }
        public IActionResult ObtenerClientesFisicos()
        {
            var Fisicos = _context.Fisicos.ToList(); // Consulta tu base de datos
            return Json(Fisicos);
        }
    }
}
