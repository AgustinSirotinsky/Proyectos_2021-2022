using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using prog_tp7.Models;

namespace prog_tp7.Controllers;
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
    public IActionResult Jugador()
    {
        return View();
    }

    public IActionResult PantallaFinDelJuego()
    {
        ViewBag.Jugador = JuegoQQSM.DevolverJugador();
        ViewBag.Pozo=JuegoQQSM.ListarPozo();
        return View();
    }

    [HttpGet]
    public IActionResult Player(string Nombre)
    {
        JuegoQQSM.IniciarJuego(Nombre);
        ViewBag.Jugador = JuegoQQSM.DevolverJugador();
        ViewBag.Pregunta=JuegoQQSM.ObtenerProximaPregunta();
        ViewBag.Respuestas=JuegoQQSM.ObtenerRespuestas();
        ViewBag.Pozo=JuegoQQSM.ListarPozo();
         ViewBag.Ronda=JuegoQQSM.ObtenerRonda();
        return View();
    }
    [HttpGet]
    public IActionResult SeguirJugando()
    {
        ViewBag.Jugador = JuegoQQSM.DevolverJugador();
        ViewBag.Pregunta=JuegoQQSM.ObtenerProximaPregunta();
        ViewBag.Respuestas=JuegoQQSM.ObtenerRespuestas();
        ViewBag.Pozo=JuegoQQSM.ListarPozo();
        ViewBag.Ronda=JuegoQQSM.ObtenerRonda();
        return View("Player");
    }
    public IActionResult PreguntaRespondida(char Opcion1, char Opcion2){
        if (JuegoQQSM.RespuestaUsuario(Opcion1,Opcion2))
        {
            return View("RespuestapreguntaOK");
        }else{
            
            ViewBag.Jugador = JuegoQQSM.DevolverJugador();
            ViewBag.Pozo=0;
            return View("PantallaFindelJuego");
        }
    }
    public IActionResult comodin50(){
        string final="";
        ViewBag.valor50 = JuegoQQSM.Comodin50();
        System.Console.WriteLine(ViewBag.valor50);
        if (ViewBag.valor50!="")
        {
            ViewBag.Jugador = JuegoQQSM.DevolverJugador();
            ViewBag.Pregunta=JuegoQQSM.ObtenerProximaPregunta();
            ViewBag.Respuestas=JuegoQQSM.ObtenerRespuestas();
            ViewBag.Pozo=JuegoQQSM.ListarPozo();
            ViewBag.Ronda=JuegoQQSM.ObtenerRonda();
            final="Player50";
        }
        else 
        {
            ViewBag.Jugador = JuegoQQSM.DevolverJugador();
            ViewBag.Pregunta=JuegoQQSM.ObtenerProximaPregunta();
            ViewBag.Respuestas=JuegoQQSM.ObtenerRespuestas();
            ViewBag.Pozo=JuegoQQSM.ListarPozo();
            ViewBag.Ronda=JuegoQQSM.ObtenerRonda();
            final = "Player";
        }
        return View(final);
    }
    public IActionResult SaltearPregunta()
    {
        string final="";
        bool devolver=JuegoQQSM.SaltearPregunta();
        if (devolver)
        {
            final="RespuestaPreguntaOk";
        }
        else 
        {
            ViewBag.Jugador = JuegoQQSM.DevolverJugador();
            ViewBag.Pregunta=JuegoQQSM.ObtenerProximaPregunta();
            ViewBag.Respuestas=JuegoQQSM.ObtenerRespuestas();
            ViewBag.Pozo=JuegoQQSM.ListarPozo();
            ViewBag.Ronda=JuegoQQSM.ObtenerRonda();
            final="Player";
        }
        return View(final);
    }
    

    [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
    public IActionResult Error()
    {
        return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
    }
}
