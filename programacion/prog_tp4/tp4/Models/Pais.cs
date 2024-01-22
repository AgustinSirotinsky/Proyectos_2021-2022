using System;

    namespace tp4
    {
        public class Pais {
             string _nombre; string _imgBandera; int _poblacion; DateTime _fechaIndependencia; string _atractivosTuristicos;

            public Pais (string pnombre, string pimgBandera, int ppoblacion, DateTime pfechaIndependencia, string patractivosTursiticos){
                _nombre=pnombre; _imgBandera=pimgBandera; _poblacion=ppoblacion; _fechaIndependencia=pfechaIndependencia;_atractivosTuristicos=patractivosTursiticos;
            }
            
            public string Nombre {
                get {return _nombre; }
            }
            public string imgBandera {
                get {return _imgBandera; }
            }
            public int Poblacion{
                get {return _poblacion; }
            }
            public DateTime FechaIndependencia {
                get {return _fechaIndependencia; }
            }
            public string AtractivosTuristicos {
                get {return _atractivosTuristicos; }
            }
        }
    }