using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using Dapper;

namespace prog_tp8.Models;

public class BD 
{   
    private static List<Temporada> ListadoTemporadas= new List<Temporada>();
    private static List<Series> ListadoSeries= new List<Series>();
    private static List<Actores> ListadoActores= new List<Actores>();
    private static string  _connectionstring = @"Server=A-PHZ2-CIDI-036;DataBase=BDSeries;Trusted_Connection=True;";

    public static List<Actores> ListarActores (int IdSerie) 
    {
        using(SqlConnection db = new SqlConnection(_connectionstring)){
            string sql = "SELECT * FROM Actores WHERE IdSerie=@pidSerie";
            ListadoActores = db.Query<Actores>(sql, new{pidSerie = IdSerie}).ToList();
        }
        return ListadoActores;
    } 
    public static List<Series> ListarSeries () 
    {
        using(SqlConnection db = new SqlConnection(_connectionstring)){
            string sql = "SELECT * FROM Series";
            ListadoSeries = db.Query<Series>(sql).ToList();
        }
        return ListadoSeries;
    } 
    public static List<Series> ListarSinopsis (int IdSerie) 
    {
        using(SqlConnection db = new SqlConnection(_connectionstring)){
            string sql = "SELECT * FROM Series WHERE IdSerie=@pidSerie";
            ListadoSeries = db.Query<Series>(sql, new{pidSerie = IdSerie}).ToList();
        }
        return ListadoSeries;
    } 

      public static List<Temporada> ListarTemporadas (int IdSerie) 
    {
        using(SqlConnection db = new SqlConnection(_connectionstring)){
            string sql = "SELECT * FROM Temporadas WHERE IdSerie=@pidSerie";
            ListadoTemporadas = db.Query<Temporada>(sql, new{pidSerie = IdSerie}).ToList();
        }
        return ListadoTemporadas;
    } 
}