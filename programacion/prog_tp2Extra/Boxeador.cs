using System;

namespace tp2_Extra
{
    class Boxeador
        {
            private string _nombre; string _pais; int _peso; int _velocidadpiernas; int _potenciagolpes; double _obtenerskill;

        public Boxeador (string pnombre, string ppais, int ppeso, int pvelocidadpiernas, int ppotenciagolpes, double pobtenerskill)
        {   
            _nombre=pnombre; _pais=ppais; _peso=ppeso; _velocidadpiernas=pvelocidadpiernas; _potenciagolpes=ppotenciagolpes; _obtenerskill=pobtenerskill;
        }
        public string Nombre
        {
            get {return _nombre;}
        }
        public string Pais
        {
            get {return _pais;}
        }
        public int Peso
        {
            get {return _peso;}
        }
        public int VelocidadPiernas
        {
            get {return _velocidadpiernas; }
            set {_velocidadpiernas = value; }
        }
        public int PotenciaGolpes
        {
            get {return _potenciagolpes; }
            set {_potenciagolpes = value; }
        }
        public double ObtenerSkill
        {
            get {return _obtenerskill; }
        }
}
}