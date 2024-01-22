using System;

namespace tp2
    {
        class Persona
        {
            private int _dni; string _apellido; string _nombre; DateTime _fechadenacimiento; string _email;

        public Persona (int pdni, string pnombre, string papellido, DateTime pfechadenacimiento, string pemail)
        {   
            _dni=pdni; _apellido=papellido; _nombre=pnombre; _fechadenacimiento=pfechadenacimiento; _email=pemail;
        }
        public int Dni
        {
            get {return _dni; }
        }
        public string Nombre
        {
            get {return _nombre; }
        }
        public string Apellido
        {
            get {return _apellido; }
        }
        public DateTime Fechadenacimiento
        {
            get {return _fechadenacimiento; }
        }
        public string Email
        {
            get {return _email; }
            set {_email = value; }
        }

    }
}