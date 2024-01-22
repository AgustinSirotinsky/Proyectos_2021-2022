using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using System.IO;
using Microsoft.AspNetCore.Hosting;
using prog_tp6.Models;

namespace prog_tp6.Controllers;

public class HomeController : Controller
{
    private IWebHostEnvironment Enviroment;

    public HomeController(IWebHostEnvironment Envirmoent)
    {
        Enviroment=Envirmoent;
    }

    public IActionResult Index()
    {
        ViewBag.Equipo=BD.ListarEquipos();
        return View();
    }

    public IActionResult DetalleEquipo(int IdEquipo)
    {
        ViewBag.Jugadores=BD.ListarJugadores(IdEquipo);
        ViewBag.Equipo=BD.DetalleEquipo(IdEquipo);
        System.Console.WriteLine("Nombre Equipo: " + ViewBag.Equipo.Nombre);
        return View("DetalleEquipo");
    }

    public IActionResult DetalleJugador(int IdJugador){
        ViewBag.Jugador = BD.DetalleJugador(IdJugador);
        return View("detalleJugador");
    }
    public IActionResult AgregarJugador(int IdEquipo)
    {
        ViewBag.idEquipo=IdEquipo;
        return View();
    }
    [HttpPost] 
    public IActionResult GuardarJugador(Jugador Jugador, IFormFile myFile)
    {
        System.Console.WriteLine("Peso del archivo: " + myFile.Length);
        if (Jugador.IdJugador < 1)
    {
    ViewBag.ListaCursos = BD.ListarEquipos();
    ViewBag.Error = "Por favor, rellene todos los campos";
    return View("AgregarJugador");
    }
    else
        if(myFile.Length>0)
        {
            string wwwRootLocal = this.Enviroment.ContentRootPath + @"\wwwroot\" + myFile.FileName;
            using (var stream = System.IO.File.Create(wwwRootLocal))
            {
                myFile.CopyToAsync(stream);
            }
            Jugador.Foto=myFile.FileName;
        }
        BD.AgregarJugador(Jugador);
        System.Console.WriteLine("Jugador.IdEquipo: " + Jugador.IdEquipo);
        ViewBag.Equipo = BD.DetalleEquipo(Jugador.IdEquipo);
        ViewBag.Jugadores = BD.ListarJugadores(Jugador.IdEquipo);
        return View("DetalleEquipo");
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
