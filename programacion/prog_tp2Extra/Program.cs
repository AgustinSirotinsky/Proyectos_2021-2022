using System;
using System.Collections.Generic;
using System.Threading;

namespace tp2_Extra
{
    class Program
    {
        static List<Boxeador> Boxeadores= new List<Boxeador>();
        static bool Boxeador1Preparado=false;
        static bool Boxeador2Preparado=false;
        
        static void Main(string[] args)
        {
            int opciones=0;
            Console.Clear();
            System.Console.WriteLine("Bienvenido al ring, precione ENTER para continuar");
            Console.ReadLine();
            while (opciones!=4)
            {
            Console.Clear();
            opciones=MostrarOpciones();
            switch (opciones)
            {
                case 1:
                    CargarBoxeador1();
                    break;
                case 2:
                    CargarBoxeador2();
                    break;
                case 3:
                Pelear();
                    break;
                case 4:
                break;
            }
            }
        }
        static int MostrarOpciones()
        {
            int resultado;
            Console.Clear();
            System.Console.WriteLine("Ingrese 1 para cargar a Boxeador 1");
            System.Console.WriteLine("Ingrese 2 para cargar a Boxeador 2");
            System.Console.WriteLine("Ingrese 3 para PELEAR");
            System.Console.WriteLine("Ingrese 4 para salir");
            resultado = Funciones.IngresarEntero("");
            return resultado;
        }
        static void CargarBoxeador1()
        {
            Console.Clear();
            if (Boxeador1Preparado==false){
            string Nombre,Pais;
            int Peso, VelocidadPiernas, PotenciaGolpes, NumeroRandom;
            double ObtenerSkill;
            NumeroRandom=Funciones.random(1,10);
            Console.Clear();
            System.Console.WriteLine("**Cargar Boxeador 1**");

            Nombre=Funciones.IngresarTexto("Ingrese el nombre del boxeador");
            Pais=Funciones.IngresarTexto("Ingrese el pais del boxeador");
            Peso=Funciones.IngresarEntero("Ingrese el peso de el boxeador");
            VelocidadPiernas=Funciones.IngresarEntero("Ingrese la velocidad de las piernas del boxeador");
            PotenciaGolpes=Funciones.IngresarEntero("Ingrese la potencia de los golpes del boxeador");
            ObtenerSkill=VelocidadPiernas*0.6+PotenciaGolpes+0.8+NumeroRandom;

            Boxeador newboxeador= new Boxeador(Nombre,Pais,Peso,VelocidadPiernas,PotenciaGolpes,ObtenerSkill);
            Boxeador1Preparado=true;
            Boxeadores.Add(newboxeador);
            Console.Clear();
            System.Console.WriteLine("Boxeador 1 listo");
            }
            else 
            {
                System.Console.WriteLine("El boxeador 1 ya esta preparado");
            }
            System.Console.WriteLine("Presione ENTER para continuar");
            Console.ReadLine();
        }
        static void CargarBoxeador2()
        {
            Console.Clear();
            if (Boxeador2Preparado==false){
            string Nombre,Pais;
            int Peso, VelocidadPiernas, PotenciaGolpes, NumeroRandom;
            double ObtenerSkill;
            NumeroRandom=Funciones.random(1,10);

            Console.Clear();
            System.Console.WriteLine("**Cargar Boxeador 2**");

            Nombre=Funciones.IngresarTexto("Ingrese el nombre del boxeador");
            Pais=Funciones.IngresarTexto("Ingrese el pais del boxeador");
            Peso=Funciones.IngresarEntero("Ingrese el peso de el boxeador");
            VelocidadPiernas=Funciones.IngresarEntero("Ingrese la velocidad de las piernas del boxeador");
            PotenciaGolpes=Funciones.IngresarEntero("Ingrese la potencia de los golpes del boxeador");
            ObtenerSkill=VelocidadPiernas*0.6+PotenciaGolpes+0.8+NumeroRandom;

            Boxeador newboxeador= new Boxeador(Nombre, Pais, Peso ,VelocidadPiernas, PotenciaGolpes,ObtenerSkill);
            Boxeador2Preparado=true;
            Boxeadores.Add(newboxeador);
            Console.Clear();
            System.Console.WriteLine("Boxeadsor 2 listo");
            }
            else 
            {
                System.Console.WriteLine("El boxeador 2 ya esta preparado");
            }
                System.Console.WriteLine("Presione ENTER para continuar");
                Console.ReadLine();
        }
         static void Pelear()
         {
             int i=1;
             double Maximo=0;
             string Ganador="";
             if (Boxeador1Preparado&&Boxeador2Preparado)
        {
             foreach (Boxeador objBoxeador in Boxeadores)
                {
                        System.Console.WriteLine($"Boxeador {i}");
                        System.Console.WriteLine($"Nombre: {objBoxeador.Nombre}, Pais: {objBoxeador.Pais}, Peso: {objBoxeador. Peso}, Velocidad Piernas: {objBoxeador.VelocidadPiernas}, Potencia Golpes: {objBoxeador.PotenciaGolpes} Skill{objBoxeador.ObtenerSkill}");
                        i++;
                        if (Maximo<objBoxeador.ObtenerSkill)
                        {
                            Maximo=objBoxeador.ObtenerSkill;
                            Ganador=objBoxeador.Nombre;
                        }
                }
                System.Console.WriteLine("Precione enter para PELEAR");
                Console.ReadLine();
                Console.Clear();
                System.Console.WriteLine("El ganador es...");
                Thread.Sleep(500);
                Console.Clear();
                System.Console.WriteLine($"El ganador es...{Ganador}!!!!!");
         }
         else 
         {
                System.Console.WriteLine("Los boxeadores aun no estan listos");
         }
                System.Console.WriteLine("Presione ENTER para continuar");
                Console.ReadLine();
         }   
    }
}
