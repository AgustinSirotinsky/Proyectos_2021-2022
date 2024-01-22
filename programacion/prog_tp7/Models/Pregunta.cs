using System;
namespace prog_tp7.Models
{

    public class Pregunta
    {
        private int _IdPregunta;
        private string _TextoPregunta;
        private int _NivelDificultad;

        public Pregunta()
        {}

        public Pregunta(int IdPregunta, string TextoPregunta, int NivelDificultad)
        {
            _IdPregunta=IdPregunta;
            _TextoPregunta=TextoPregunta;
            _NivelDificultad=NivelDificultad;
        }

        public int IdPregunta 
        {
            get{return _IdPregunta;}
            set{_IdPregunta = value;}
        }
        public string TextoPregunta
        {
            get{return _TextoPregunta;}
            set{_TextoPregunta=value;}
        }
        public int NivelDificultad
        {
            get{return _NivelDificultad;}
            set{_NivelDificultad=value;}
        }

    }
}