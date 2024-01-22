using System;
namespace prog_tp8.Models;

public class Temporada
{
    private int _IdTemporada; int _IdSerie; int _NumeroTemporada; string _TituloTemporada;
    public Temporada(int pIdTemporada, int pIdSerie, int pNumeroTemporada, string pTituloTemporada)
    {
        _IdTemporada=pIdTemporada; _IdSerie=pIdSerie; _NumeroTemporada=pNumeroTemporada; _TituloTemporada= pTituloTemporada;        
    }
    public Temporada(){}
    public int IdTemporada
    {
        get {return _IdTemporada; }
        set {_IdTemporada=value; }
    }
    public int IdSerie
    {
        get {return _IdSerie; }
        set {_IdSerie=value; }
    }
    public int NumeroTemporada
    {
        get {return _NumeroTemporada; }
        set {_NumeroTemporada=value; }
    }
    public string TituloTemporada
    {
        get {return _TituloTemporada; }
        set {_TituloTemporada=value; }
    }
    
}