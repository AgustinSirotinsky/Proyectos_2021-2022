using System;
using System.Collections.Generic;

namespace tp4.Models
{
    public class Funciones {
        static List<Pais> Paises = new List<Pais>();
        private static void InicializarLista(){
            
            Pais newpais= new Pais("Argentina", "BanderaArgentina.png", 453000000, Convert.ToDateTime("9/7/1816"), "cataratas del iguazu");
            Pais newpais1= new Pais("Rusia", "BanderaRusia.png", 144000000, Convert.ToDateTime("2/11/1721"), "La Plaza Roja");
            Pais newpais2= new Pais("Belgica", "BanderaBelgica.png", 11000000, Convert.ToDateTime("4/10/1830"), "Le Botanique");
            Pais newpais3= new Pais("Paises Bajos", "BanderaHolanda.png", 17000000, Convert.ToDateTime("30/1/1648"), "Casa de Anna Frank");
            Pais newpais4= new Pais("Grecia", "BanderaGrecia.png", 10000000, Convert.ToDateTime("12/9/1829"), "Acropolis de Atenas");
            Paises.Add(newpais);
            Paises.Add(newpais1);
            Paises.Add(newpais2);
            Paises.Add(newpais3);
            Paises.Add(newpais4);
        }
        public static List<Pais> ListarPaises(){
            if (Paises.Count==0){
                InicializarLista();
            }
            return Paises;
        }
        public static Pais DetallePais(string Pais){
            System.Console.WriteLine("Llego "+Pais);
            Pais Paiselegido=null;
            foreach (Pais objPais in Paises){
                if (Pais==objPais.Nombre){
                    Paiselegido=objPais;
                }
            }
            return Paiselegido;
        }
    }
}