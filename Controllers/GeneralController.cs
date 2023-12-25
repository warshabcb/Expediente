 
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

        //Buscar Todos los Registros poor medio de Identificacion | Limitado a 10 Registros
        [HttpGet]
        public async Task<IActionResult> BuscarPorIdentificacion(string identificacion)
        {
            var resultado = await _context.Fisicos
                                .Where(f => f.Identificacion.Contains(identificacion))
                                .Take(10) // Limita los resultados a 10
                                .ToListAsync();

            return Json(resultado);
        }

        //Buscar Todos los Registros por medio de Nombre | Limitado a 10 Registros
        [HttpGet]
        public async Task<IActionResult> BuscarPorNombre(string Nombre)
        {
            var resultado = await _context.Fisicos
                                .Where(f => f.Nombre.Contains(Nombre))
                                .Take(10) // Limita los resultados a 10
                                .ToListAsync();

            return Json(resultado);
        }

        //Buscar Todos los Registros por medio de Primer Apellido | Limitado a 10 Registros
        [HttpGet]
        public async Task<IActionResult> BuscarPorPrimerApellido(string PrimerApellido)
        {
            var resultado = await _context.Fisicos
                                .Where(f => f.PrimerApellido.Contains(PrimerApellido))
                                .Take(10) // Limita los resultados a 10
                                .ToListAsync();

            return Json(resultado);
        }

        //Buscar Todos los Registros por medio de Segundo Apellido | Limitado a 10 Registros
        [HttpGet]
        public async Task<IActionResult> BuscarPorSegundoApellido(string SegundoApellido)
        {
            var resultado = await _context.Fisicos
                                .Where(f => f.SegundoApellido.Contains(SegundoApellido))
                                .Take(10) // Limita los resultados a 10
                                .ToListAsync();

            return Json(resultado);
        }


        //Buscar Todos los Registros | Limitado a 20 Registros
        [HttpGet]
        public async Task<IActionResult> FisicosAll ()
        {
            var resultado = await _context.Fisicos.Take(20) // Limita los resultados a 15
                                .ToListAsync();

            return Json(resultado);
        }
    }
}
