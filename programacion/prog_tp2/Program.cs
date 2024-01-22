using System;
using System.Collections.Generic;

namespace tp2
{
    class Program
    {
        static List<Persona> Personas= new List<Persona>();
        static void Main(string[] args)
        {
            int opciones=0;
            Console.Clear();
            System.Console.WriteLine("Bienvenido al sistema de sensos de Argentina, precione ENTER para continuar");
            Console.ReadLine();
            while (opciones!=5)
            {
            Console.Clear();
            opciones=MostrarOpciones();
            switch (opciones)
            {
                case 1:
                    CargarNuevaPersona();
                    break;
                case 2:
                    ObtenerEstadisticas();
                    break;
                case 3:
                    BuscarPersona();
                    break;
                case 4:
                    ModificarMail();
                    break;
                case 5:
                    break;
            }
            }
        }

        static int MostrarOpciones()
        {
            int resultado;
            Console.Clear();
            System.Console.WriteLine("Ingrese 1 para cargar una nueva persona");
            System.Console.WriteLine("Ingrese 2 para ver las estadisticas de personas");
            System.Console.WriteLine("Ingrese 3 para buscar una persona");
            System.Console.WriteLine("Ingrese 4 para modificar un mail");
            System.Console.WriteLine("Ingrese 5 para salir del programa");
            resultado=int.Parse(Console.ReadLine());
            return resultado;
            
        }
        static void CargarNuevaPersona()
        {
            int Dni;
            string nombre,apellido,email;
            DateTime fechadenacimiento;

            Console.Clear();
            System.Console.WriteLine("**Nueva persona**");

            Dni = Funciones.IngresarEntero("Ingrese el DNI de la persona");
            nombre = Funciones.IngresarTexto("Ingrese el nombre de la persona");
            apellido = Funciones.IngresarTexto("Ingrese el apellido de la persona");
            fechadenacimiento = Funciones.IngresarDateTime("Ingrese la fecha de nacimiento de la persona");
            email = Funciones.IngresarTexto("Ingrese el email de la persona");

            Persona newpersona = new Persona(Dni,nombre,apellido,fechadenacimiento,email);
            Personas.Add(newpersona);
            Console.Clear();
            System.Console.WriteLine("Se creo el archivo de la persona");
        }
        static void ObtenerEstadisticas ()
        {
            Console.Clear();
            if (Personas.Count<1)
            {
                System.Console.WriteLine("Aun no se ingresaron personas en la lista");
                System.Console.WriteLine("Precione ENTER para continuar");
                Console.ReadLine();
            }
            else 
            {
            DateTime FechaParaVotantes=DateTime.Today;
            FechaParaVotantes=FechaParaVotantes.AddYears(-16);
            int Votadores=0;
                foreach (Persona objPersona in Personas)
                {
                    if (objPersona.Fechadenacimiento<=FechaParaVotantes)
                    {
                        Votadores++;
                    }
                }
            System.Console.WriteLine($"Cantidad de personas: {Personas.Count}");
            System.Console.WriteLine($"Cantidad de personas habilitadas para votar: {Votadores}");

            System.Console.WriteLine("Presione ENTER para continuar");
            Console.ReadLine();
            }
        }
            static void BuscarPersona()
            {
                Console.Clear();
            if (Personas.Count<1)
            {
                System.Console.WriteLine("Aun no se ingresaron personas en la lista");
                System.Console.WriteLine("Presione ENTER para continuar");
                Console.ReadLine();
            }
            else 
            {
                int DniIngresado=Funciones.IngresarEntero("Ingrese el dni de la persona");
                foreach (Persona objPersona in Personas)
                {
                    if (DniIngresado==objPersona.Dni)
                    {
                        System.Console.WriteLine($"Dni: {objPersona.Dni}, nombre: {objPersona.Nombre}, apellido: {objPersona.Apellido}, fecha de nacimiento: {objPersona.Fechadenacimiento}, email: {objPersona.Email}");
                    }
                    else 
                    {
                        System.Console.WriteLine("No hay inguna persona con ese DNI");
                    }
                }
                System.Console.WriteLine("Presione ENTER para continuar");
                Console.ReadLine();
            }
            }
            static void ModificarMail()
            {
                Console.Clear();
            if (Personas.Count<1)
            {
                System.Console.WriteLine("Aun no se ingresaron personas en la lista");
                System.Console.WriteLine("Presione ENTER para continuar");
                Console.ReadLine();
            }
            else 
            {
                string email;
                int DniIngresado=Funciones.IngresarEntero("Ingrese el dni de la persona");
                foreach (Persona objPersona in Personas)
                {
                    if (DniIngresado==objPersona.Dni)
                    {
                        email = Funciones.IngresarTexto("Ingrese el email de la persona");
                        objPersona.Email=email;
                    }
                    else 
                    {
                        System.Console.WriteLine("No hay inguna persona con ese DNI");
                    }
                }
                System.Console.WriteLine("Presione ENTER para continuar");
                Console.ReadLine();
            }
        }
    }
}
