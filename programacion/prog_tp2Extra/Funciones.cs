using System;

namespace tp2_Extra
{
    public static class Funciones{

    
    public static string IngresarTexto(string txt)
    {
        string devolver;
        System.Console.WriteLine(txt);
        devolver=Console.ReadLine();
        return devolver;
    }
    public static int IngresarEntero(string txt)
    {
        int devolver;
        System.Console.WriteLine(txt);
        devolver=int.Parse(Console.ReadLine());
        return devolver;
    }
    public static DateTime IngresarDateTime(string txt)
    {
        DateTime devolver;
        System.Console.WriteLine(txt);
        devolver=DateTime.Parse(Console.ReadLine());
        return devolver;
    }
    public static int random(int x, int y)
        {
            Random r = new Random();
            return r.Next(x, y);
        }
    }}