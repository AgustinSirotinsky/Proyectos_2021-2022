using System;

namespace TP5.Models{
    public static class Escape{
        private static string[] _incognitasSalas = new string[0]; private static int _estadoJuego;
    
    public static int estadoJuego {
     get {return _estadoJuego; }
    }
        private static void inicializarJuego(){
        _incognitasSalas = new string[] {"","pong","mario 64","xbox 360","gameboy color","god of war"};
        _estadoJuego=1;
    }
        public static bool ResolverSala(int sala,string incognita){
        if(_incognitasSalas.Length == 0) inicializarJuego();
        if(sala == _estadoJuego){
            if(_incognitasSalas[_estadoJuego] == incognita){
                _estadoJuego++;
                return true;
            }else{
                return false;
            }
        }else{
            return false;
        }

    }
    }
}