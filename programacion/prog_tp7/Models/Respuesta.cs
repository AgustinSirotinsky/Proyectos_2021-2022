using System;
namespace prog_tp7.Models
{

    public class Respuestas
    {
        private int _IdPregunta; 
        int _IdRespuesta; 
        char _OpcionRespuesta; 
        string _TextoRespuesta; 
        bool _Correcta;

        public Respuestas()
        {}

        public Respuestas(int pIdPregunta, int pIdRespuesta, char pOpcionRespuesta, string pTextoRespuesta, bool pCorrecta)
        {
            _IdPregunta=pIdPregunta;
            _IdRespuesta=pIdRespuesta;
            _OpcionRespuesta=pOpcionRespuesta;
            _TextoRespuesta=pTextoRespuesta;
            _Correcta=pCorrecta;
        }
        public int IdPregunta
        {
        get {return _IdPregunta;}
        set {_IdPregunta=value;}
        }

        public int IdRespuesta
        {
        get {return _IdRespuesta;}
        set {_IdRespuesta=value;}
        }

        public char OpcionRespuesta
        {
        get {return _OpcionRespuesta;}
        set {_OpcionRespuesta=value;}
        }

        public string TextoRespuesta
        {
        get {return _TextoRespuesta;}
        set {_TextoRespuesta=value;}
        }

        public bool Correcta
        {
        get {return _Correcta;}
        set {_Correcta=value;}
        }
        
    }
}