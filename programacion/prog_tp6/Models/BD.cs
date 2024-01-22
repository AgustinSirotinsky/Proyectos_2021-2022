using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using Dapper;       

namespace prog_tp6.Models;

public class BD
{
    private static List<Equipo> ListadoEquipo= new List<Equipo>();
    private static List<Jugador> ListadoJugador = new List<Jugador>();
    private static string  _connectionstring = @"Server=A-PHZ2-CIDI-014\SQLEXPRESS;DataBase=QATAR22;Trusted_Connection=True;";

    public static List<Equipo> ListarEquipos ()
    {
        using(SqlConnection db = new SqlConnection(_connectionstring)){
            string sql = "SELECT * FROM Equipo";
            ListadoEquipo = db.Query<Equipo>(sql).ToList();
        }
        return ListadoEquipo;
    } 
    public static List<Jugador> ListarJugadores (int IdEquipo)
    {
        List<Jugador> ListadoJugador=null;
        System.Console.WriteLine("IdEquipo!!: " + IdEquipo);
        using(SqlConnection db = new SqlConnection(_connectionstring)){
            string sql = "SELECT * FROM Jugadores WHERE IdEquipo=@IdEquipo";
            ListadoJugador = db.Query<Jugador>(sql, new{IdEquipo = IdEquipo}).ToList();
        }
        System.Console.WriteLine("Lista hecha");
        return ListadoJugador;
    } 
    public static Equipo DetalleEquipo (int IdEquipo)
    {
        System.Console.WriteLine("IdEquipo: " + IdEquipo);
        Equipo EquipoElegido=null;
        using(SqlConnection db = new SqlConnection(_connectionstring)){
            string sql = "SELECT * FROM Equipo WHERE IdEquipo=@IdEquipo";
            EquipoElegido =  db.QueryFirstOrDefault<Equipo>(sql, new{Idequipo = IdEquipo});
        }
        System.Console.WriteLine("Equipo Elegido: " + EquipoElegido);
        return EquipoElegido;
    }
    public static Jugador DetalleJugador (int IdJugador)
    {
        System.Console.WriteLine("IdJugador: " + IdJugador);
        {
        Jugador infoJugador;
        using(SqlConnection db = new SqlConnection(_connectionstring)){
        {
            string sql = "SELECT * FROM Jugadores WHERE IdJugador=@pIdJugador";
            infoJugador = db.QueryFirstOrDefault<Jugador>(sql, new{pIdJugador = IdJugador});
        }
        return infoJugador;
        }
    }
    }
    public static void AgregarJugador(Jugador Jugador)
    {
        string sql = "INSERT INTO Jugadores (IdEquipo,Nombre,FechaNacimiento,Foto,EquipoActual) VALUES(@pidEquipo,@pNombre,@pFechaNacimiento,@pFoto,@pEquipoActual)";
        using(SqlConnection db = new SqlConnection(_connectionstring)){
            db.Execute(sql,new {pidEquipo = Jugador.IdEquipo, pNombre = Jugador.Nombre, pFechaNacimiento = Jugador.FechaNacimiento, pFoto = Jugador.Foto, pEquipoActual = Jugador.EquipoActual });
        }
    }

}