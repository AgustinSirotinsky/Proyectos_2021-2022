using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using tp3.Models;

namespace tp3.Controllers
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
            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }
        public IActionResult FuncionTraerMayor()
        {
            ViewBag.titulo="Traer Mayor: 9 10 11";
            ViewBag.resultado=Funciones.FuncionTraerMayor(9,10,11);
            return View("resultados");
        } 
        public IActionResult FuncionPosicionMayor()
        {
            ViewBag.titulo="Posicion Mayor: 9 10 11";
            ViewBag.resultado=Funciones.FuncionPosicionMayor(9,10,11);
            return View("resultados");
        }
        public IActionResult FuncionCalcularDia()
        {
            ViewBag.titulo="Calcular Dia: 22 6 2006";
            ViewBag.resultado=Funciones.FuncionCalcularDia(22,6,2006);
            return View("resultados");
        }
        public IActionResult FuncionDivisoresComunes()
        {
            ViewBag.titulo="Divisores Comunes: 10 20";
            ViewBag.resultado=Funciones.FuncionDivisoresComunes(10,20);
            return View("resultados");
        }
        public IActionResult FuncionInvertirCase()
        {
            ViewBag.titulo="Invertir case: hola amigos Como EsTan";
            ViewBag.resultado=Funciones.FuncionInvertirCase("hola amigos Como EsTan");
            return View("resultados");
        }
        public IActionResult FuncionIsNumeric()
        {
            ViewBag.titulo="Funcion Is Numeric: 8";
            ViewBag.resultado=Funciones.FuncionIsNumeric("8");
            return View("resultados");
        }

        

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
