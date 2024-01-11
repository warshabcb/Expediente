using Expediente.Data;
using Expediente.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
 

namespace Expediente.Controllers
{
    public class FisicosController : Controller
    {
        private readonly Base_Datos _context;
        public FisicosController(Base_Datos context)
        {
            _context = context;
        }
		// GET: Fisicos
		[Authorize(Roles = "Admin,Manager,User")]
		public async Task<IActionResult> Index()
        {
            return View(await _context.Fisicos.ToListAsync());
        }

        // GET: Fisicos/Details/5
        public async Task<IActionResult> Details(int? id)
        {
             
            var TiposID = _context.Tipos_ID.Select(t => t.Tipo).ToList();
            var Generos = _context.Generos.Select(n => n.Sexo).ToList();
            var Civil = _context.EstadosCivil.Select(n => n.Estado_Civil).ToList();
            var ListaNacionalidades = _context.Nacionalidades.Select(n => n.Nombre_Spanish).ToList();
            ViewBag.Nacionalidades = ListaNacionalidades;
            ViewBag.Generos = Generos;
            ViewBag.TiposID = TiposID;
            ViewBag.Civil = Civil;
            if (id == null)
            {
                return NotFound();
            }

            var Cliente = await _context.Fisicos.FirstOrDefaultAsync(m => m.Id == id);
                       
            if (Cliente == null)
            {
                return NotFound();
            }
            var Telefono = _context.Telefonos.Where(t => t.Identificacion == Cliente.Identificacion).ToList();
            
            // Crea el ViewModel y asigna los datos
            var viewModel = new FisicoRelacion
            {
                Fisico = Cliente,
                Telefonos = Telefono
            };



            return View(viewModel);
        }

        // GET: Fisicos/Create
        public IActionResult Create()
        {

            var TiposID             = _context.Tipos_ID.Select(t => t.Tipo).ToList();
            var Generos             = _context.Generos.Select(n => n.Sexo).ToList();
            var Civil               = _context.EstadosCivil.Select(n => n.Estado_Civil).ToList();
            var ListaNacionalidades = _context.Nacionalidades.Select(n => n.Nombre_Spanish).ToList();
            ViewBag.Nacionalidades  = ListaNacionalidades;
            ViewBag.Generos         = Generos;
            ViewBag.TiposID         = TiposID;
            ViewBag.Civil           = Civil;
            return View();                        
        }

        // POST: Fisicos/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create(Fisico Fisicos)
        {   
           
                if (ModelState.IsValid)
                {
                    _context.Add(Fisicos);
                    await _context.SaveChangesAsync();
                    TempData["SuccessMessage"] = "Cliente creado correctamente!";                    
                    return RedirectToAction(nameof(Index));
                }
                         
           return View(Fisicos);
        }

        // GET: Fisicos/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            var TiposID = _context.Tipos_ID.Select(t => t.Tipo).ToList();
            var Generos = _context.Generos.Select(n => n.Sexo).ToList();
            var Civil = _context.EstadosCivil.Select(n => n.Estado_Civil).ToList();
            var ListaNacionalidades = _context.Nacionalidades.Select(n => n.Nombre_Spanish).ToList();
            ViewBag.Nacionalidades = ListaNacionalidades;
            ViewBag.Generos = Generos;
            ViewBag.TiposID = TiposID;
            ViewBag.Civil = Civil;
            var Fisicos = await _context.Fisicos.FindAsync(id);

            if (id == null)
            {
                return NotFound();
            }
            if (Fisicos == null)
            {
                return NotFound();
            }
            return View(Fisicos);
        }

        // POST: Fisicos/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, Fisico Fisicos)
        {
            if (id != Fisicos.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(Fisicos);
                    await _context.SaveChangesAsync();
                    TempData["SuccessMessage"] = "Cliente modificado correctamente!";
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!FisicosExists(Fisicos.Id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            return View(Fisicos);
        }

        // GET: Fisicos/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            var TiposID = _context.Tipos_ID.Select(t => t.Tipo).ToList();
            var Generos = _context.Generos.Select(n => n.Sexo).ToList();
            var Civil = _context.EstadosCivil.Select(n => n.Estado_Civil).ToList();
            var ListaNacionalidades = _context.Nacionalidades.Select(n => n.Nombre_Spanish).ToList();
            ViewBag.Nacionalidades = ListaNacionalidades;
            ViewBag.Generos = Generos;
            ViewBag.TiposID = TiposID;
            ViewBag.Civil = Civil;
            if (id == null)
            {
                return NotFound();
            }

            var Fisicos = await _context.Fisicos
                .FirstOrDefaultAsync(m => m.Id == id);
            if (Fisicos == null)
            {
                return NotFound();
            }

            return View(Fisicos);
        }

        // POST: Fisicos/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var fisico = await _context.Fisicos.FindAsync(id);
            if (fisico != null)
            {
                _context.Fisicos.Remove(fisico);
                await _context.SaveChangesAsync();
                TempData["SuccessMessage"] = "Cliente eliminado correctamente!";
                return RedirectToAction(nameof(Index));
            }
            else
            {
                // Maneja el caso en que 'fisico' sea null, posiblemente redirigiendo a una página de error
                return NotFound();
            }
        }
        private bool FisicosExists(int id)
        {
            return _context.Fisicos.Any(e => e.Id == id);
        }
    }
}

