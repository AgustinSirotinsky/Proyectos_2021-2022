using System;
using System.Data.SqlClient;
using Dapper;
namespace prog_tp7.Models
{

    public class JuegoQQSM
    {
    private static List<Respuestas> nuevaRespuesta = new List<Respuestas>();
    private static Jugador _Jugador;
    private static int _PreguntaActual;
    private static char _RespuestaCorrectaActual;
    private static int _PosicionPozo;
    private static int _PozoAcumuladoSeguro;
    private static int _PozoAcumulado; 
    private static bool _Comodin50;
    private static bool _ComodinDobleChance; 
    private static bool _ComodinSaltarPregunta; 
    private static List<int> PozoLista = new List<int>(); 
        
        public JuegoQQSM (int pPreguntaActual, char pRespuestaCorrectaActual, int pPosicionPozo, int pPozoAcumuladoSeguro, bool pcomodin50, bool pComodinDobleChance, bool pComodinSaltarPregunta)
        {
            _PreguntaActual=pPreguntaActual; _RespuestaCorrectaActual=pRespuestaCorrectaActual; _PosicionPozo=pPosicionPozo; _PozoAcumuladoSeguro=pPozoAcumuladoSeguro; _Comodin50=pcomodin50; _ComodinDobleChance=pComodinDobleChance; _ComodinSaltarPregunta=pComodinSaltarPregunta;
        }
        private static string  _connectionstring = @"Server=DESKTOP-DADROOA\SQLEXPRESS;DataBase=JuegoQQSM;Trusted_Connection=True;";
        public static void IniciarJuego(string Nombre)
        {
        PozoLista.Add((10000));
        PozoLista.Add((30000));
        PozoLista.Add((50000));
        PozoLista.Add((75000));
        PozoLista.Add((100000));
        PozoLista.Add((125000));
        PozoLista.Add((150000));
        PozoLista.Add((200000));
        PozoLista.Add((250000));
        PozoLista.Add((300000));
        PozoLista.Add((400000));
        PozoLista.Add((500000));
        PozoLista.Add((750000));
        PozoLista.Add((1000000));
        PozoLista.Add((2000000));
        
        _PreguntaActual = 0; 
        _RespuestaCorrectaActual = 'a'; 
        _PozoAcumuladoSeguro = 0;
        _PozoAcumulado = 0; 
        _Comodin50 = true; 
        _ComodinSaltarPregunta = true; 
        _ComodinDobleChance = true; 
        _Jugador = null;

         string sql = "INSERT INTO Jugadores (Nombre,FechaHora,pozoGanado,comodinDobleChance,comodin50,comodinSaltear) VALUES(@pnombre,@pFechaHora,0,1,1,1)";
                using(SqlConnection db= new SqlConnection(_connectionstring))
                    {
                        db.Execute(sql,new {pnombre = Nombre,pFechaHora = DateTime.Now});
                    }
                using(SqlConnection db= new SqlConnection(_connectionstring))
                    {
                        _Jugador = db.QueryFirstOrDefault<Jugador>("SELECT TOP 1 * FROM Jugadores ORDER BY IdJugador DESC");
                    }
        }
    public static int DevolverValorPozo()
    {
        System.Console.WriteLine(_PosicionPozo);
        return PozoLista[_PosicionPozo];
    }
    public static Jugador DevolverJugador()
        {
        return _Jugador;
        }
    public static int ListarPozo()
    {
        return PozoLista[_PosicionPozo];
    }
    public static int devolverPosicionPozo(){
        return _PosicionPozo;
    }

        public static Pregunta ObtenerProximaPregunta()
        {
            Pregunta nuevaPregunta;
            _PreguntaActual++;
            using(SqlConnection db = new SqlConnection(_connectionstring))
            {
                string sql = "SELECT * FROM Preguntas where idPregunta=@IdPregunta";
                nuevaPregunta=db.QueryFirstOrDefault<Pregunta>(sql,new{IdPregunta=_PreguntaActual});
            }
            
            return nuevaPregunta;
        }
        public static int ObtenerRonda()
        {
            return _PreguntaActual;
        }
        public static List<Respuestas> ObtenerRespuestas()
        {
            using(SqlConnection db = new SqlConnection(_connectionstring))
            {
            string sql = "SELECT * FROM Respuestas where idPregunta=@IdPregunta";
            nuevaRespuesta=db.Query<Respuestas>(sql,new{IdPregunta=_PreguntaActual}).ToList();
            }
            foreach (Respuestas item in nuevaRespuesta)
            {

                if(item.Correcta)
                {
                    _RespuestaCorrectaActual=item.OpcionRespuesta;
                }
            }
            
            Console.WriteLine("Repsuesta Correcta: "+_RespuestaCorrectaActual);
            return nuevaRespuesta;
        }
        public static bool RespuestaUsuario(char Opcion1, char Opcion2=' ')
        {
            bool devolver=false;
            if (Opcion2!=' ' && _ComodinDobleChance==true){
                string sql = "UPDATE Jugadores SET comodinDobleChance = 0 where IdJugador=@IdJugador";
                using (SqlConnection db = new SqlConnection(_connectionstring))
                {
                    db.Execute(sql, new { IdJugador = _Jugador.IdJugador});
                }
            }_ComodinDobleChance=false;

            if(Opcion1==_RespuestaCorrectaActual||Opcion2==_RespuestaCorrectaActual)
            {
                _PosicionPozo++;
                devolver=true;
            }
            return devolver;
        }
        public static string Comodin50()
        {
            _PreguntaActual--;
            System.Console.WriteLine(_Comodin50);
            if (_Comodin50==false) return "";
            if(_Comodin50)
            {
                _Comodin50=false;
                _Jugador.Comodin50=false;
                string sql="UPDATE Jugadores SET comodin50 = 0 where IdJugador=@IdJugador";
                using (SqlConnection db = new SqlConnection(_connectionstring))
                {
                    db.Execute(sql, new {IdJugador = _Jugador.IdJugador});
                }
            }
                if (nuevaRespuesta[0].Correcta == true) return "A o C";
                if (nuevaRespuesta[1].Correcta == true) return "B o D";
                if (nuevaRespuesta[2].Correcta == true) return "A o C";
                else return "B o D";
        }
        public static bool SaltearPregunta()
        {
            if(_ComodinSaltarPregunta)
            {
                _PosicionPozo++;
                Console.WriteLine("saltear pregunta: "+ _ComodinSaltarPregunta);
                _ComodinSaltarPregunta=false;
                string sql = "UPDATE Jugadores SET comodinSaltear = 0 where IdJugador=@IdJugador";
                using(SqlConnection db = new SqlConnection(_connectionstring))
                {
                    db.Execute(sql, new{IdJugador = _Jugador.IdJugador});
                }
            }
            else 
            {
                _PreguntaActual--;
            }
            return _ComodinSaltarPregunta;
        }
        
    }
}