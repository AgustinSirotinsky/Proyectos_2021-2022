using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using tp4.Models;

namespace tp4.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        public IActionResult Index()
        {
            ViewBag.Paises=Funciones.ListarPaises();
            return View();
        }
        public IActionResult DetallePais(string Pais){
            ViewBag.Pais=Funciones.DetallePais(Pais);
            return View("DetallePais");
        }
        public Pais MostrarInformacionAjax(string _NombrePais)
        {
            System.Console.WriteLine("Llego algo");
            return Funciones.DetallePais(_NombrePais);
        }
        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
