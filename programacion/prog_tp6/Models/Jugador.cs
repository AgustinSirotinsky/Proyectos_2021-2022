using System;

namespace prog_tp6.Models;

public class Jugador
{
    public Jugador()
    {
        
    }
    private int _idjugador; int _idequipo; string _nombre; DateTime _fechanacimiento; string _foto; string _equipoactual;
    
    public Jugador (int pidjugador, int pidequipo, string pnombre, DateTime pfechanacimiento, string pfoto, string pequipoactual)
    {
        _idjugador=pidjugador; _idequipo=pidequipo; _nombre=pnombre; _fechanacimiento= pfechanacimiento; _foto=pfoto; _equipoactual=pequipoactual;
    }
    public int IdJugador
{
get {return _idjugador; }
set {_idjugador=value;}
}

public int IdEquipo
{
get {return _idequipo; }
set {_idequipo=value;}
}

public string Nombre
{
get {return _nombre; }
set {_nombre=value;}
}

public DateTime FechaNacimiento
{
get {return _fechanacimiento; }
set {_fechanacimiento=value;}
}

public string Foto
{
get {return _foto; }
set {_foto=value;}
}

public string EquipoActual
{
get {return _equipoactual; }
set {_equipoactual=value;}
}
}