using System;

namespace prog_tp7.Models
{

public class Pozo 
    {
        private int _Importe;
        private bool _ValorSeguro;
        public Pozo()
        {}
        public Pozo (int pImporte, bool pValorSeguro)
        {
        _Importe=Importe; _ValorSeguro=ValorSeguro;
        }
        public int Importe 
        {
            get{return _Importe;}
            set{_Importe = value;}
        }
        public bool ValorSeguro 
        {
        get {return _ValorSeguro;}
        set{ _ValorSeguro=value;}
        }
    
    
    } 
}