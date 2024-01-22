using System;
namespace prog_tp8.Models;

public class Actores
{
    private int _IdActor; int _IdSerie; string _Nombre;
    public Actores(int pIdActor, int pIdSerie, string pNombre)
    {
        _IdActor=pIdActor; _IdSerie=pIdSerie; _Nombre=pNombre;
    }
    public Actores(){}
    public int IdActor
    {
        get {return _IdActor; }
        set {_IdActor=value; }
    }
    public int IdSerie
    {
        get {return _IdSerie; }
        set {_IdSerie=value; }
    }
    public string Nombre
    {
        get {return _Nombre; }
        set {Nombre=value; }
    }
}