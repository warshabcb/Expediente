 
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

        [HttpGet]
        public async Task<IActionResult> BuscarPorIdentificacion(string identificacion)
        {
            var resultado = await _context.Fisicos
                                .Where(f => f.Identificacion.Contains(identificacion))
                                .Take(10) // Limita los resultados a 10
                                .ToListAsync();

            return Json(resultado);
        }
    }
}
