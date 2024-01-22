using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using TP5.Models;

namespace TP5.Controllers
{
    public class HomeController : Controller
    {

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Tutorial()
        {
            return View();
        }
        public IActionResult Tutorial1()
        {
            return View();
        }
        
        public IActionResult Tutorial2()
        {
            return View();
        }
        public IActionResult Tutorial3()
        {
            return View();
        }
        
        public IActionResult Tutorial4()
        {
            return View();
        }
        
        public IActionResult Tutorial5()
        {
            return View();
        }
        public IActionResult Juego()
        {
            return View();
        }
        public IActionResult Nivel1()
        {
            return View();
        }
        public IActionResult Nivel2()
        {
            return View();
        }
        public IActionResult Nivel3()
        {
            return View();
        }
        public IActionResult Nivel4()
        {
            return View();
        }
        public IActionResult Nivel5()
        {
            return View();
        }

        public IActionResult Comenzar()
        {
            return View("habitacion " + Escape.estadoJuego);
        }
        
        [HttpPost]
        public  IActionResult Correcion(int sala, string clave)
        {
            if(!Escape.ResolverSala(sala, clave))
            {
                if (sala!=Escape.estadoJuego)
                {
                    ViewBag.MensajeError = "Sala incorrecta";
                }
                else
                {
                    ViewBag.MensajeError = "Respuesta incorrecta";    
                }
                
            }
            return View("Nivel"+ Escape.estadoJuego); 

        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
       
    }
}
