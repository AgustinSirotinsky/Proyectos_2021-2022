using System;
namespace prog_tp8.Models;


public class Series
{
    private int _IdSerie; string _Nombre; int _AñoInicio; string _Sinopsis; string _ImagenSerie; 
    public Series(int pIdSerie, string pNombre, int pAñoInicio, string pSinopsis, string pImagenSerie){
        _IdSerie=pIdSerie; _Nombre=pNombre; _AñoInicio=pAñoInicio; _Sinopsis=pSinopsis; _ImagenSerie=pImagenSerie;
    }
    public Series(){}
     public int IdSerie
     {
        get {return _IdSerie; }
        set {_IdSerie=value; }
     }
     public string Nombre
     {
        get {return _Nombre; }
        set {_Nombre=value; }
     }
     public int AñoInicio
     {
        get {return _AñoInicio; }
        set {_AñoInicio=value; }
     }
     public string Sinopsis
     {
        get {return _Sinopsis; }
        set {_Sinopsis=value; }
     }
     public string ImagenSerie
     {
        get {return _ImagenSerie; }
        set {_ImagenSerie=value; }
     }
}