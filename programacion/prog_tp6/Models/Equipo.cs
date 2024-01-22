using System;

namespace prog_tp6.Models;

public class Equipo
{
    public Equipo()
    {
        
    }
    private int _idequipo; string _nombre; string _escudo; string _camiseta; string _continente; int _copasganadas;
    public Equipo (int pidequipo, string pnombre, string pescudo, string pcamiseta, string pcontinente, int pcopasganadas)
    {
        _idequipo=pidequipo; _nombre=pnombre=_escudo=pescudo; _camiseta=pcamiseta; _continente=pcontinente; _copasganadas=pcopasganadas;
    }
    public int IdEquipo
    {
        get {return _idequipo; }
        set {_idequipo=value; }
    }   
    public string Nombre
    {
        get {return _nombre; }
        set {_nombre=value; }
    }
    public string Escudo
    {
        get {return _escudo; }
        set {_escudo=value; }
    }
    public string Camiseta
    {
        get {return _camiseta; }
        set {_camiseta=value; }
    }
    public string Continente
    {
        get {return _continente; }
        set {_continente=value; }
    }
    public int CopasGanadas
    {
        get {return _copasganadas; }
        set {_copasganadas=value; }
    }
}