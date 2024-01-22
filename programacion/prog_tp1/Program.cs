using System;
using System.Collections.Generic;

namespace tp1_prueba
{
    class Program
    {
        static void Main(string[] args)
        {
            int DiaParaElCumple=IngresarNum("Ingresae el dia para la funcion DiasParaMiCumple");
            int MesParaElCumple=IngresarNum("Ingrese el mes para la funcion DiasParaMiCumple");
            string ParaElCumple=DiasParaMiCumple(DiaParaElCumple,MesParaElCumple);
            System.Console.WriteLine(ParaElCumple);
            DateTime FechaParaFechasFuturas=IngresarTiempo("Ingrese la fecha para la funcion ObtenerFechasDePago");
            int BucleParaFechasFuturas=IngresarNum("Ingrese la cantidad de fechas que quiere saber para la funcion ObtenerFechasDePago");
            List<string> FechasFuturas=ObtenerFechasDePago(FechaParaFechasFuturas, BucleParaFechasFuturas);
            for (int i=0;i<BucleParaFechasFuturas;i++){
                System.Console.WriteLine(FechasFuturas[i]);
            }
            DateTime Fecha1=IngresarTiempo("Ingrese la primera fecha para la funcion MostrarMesesEntre");
            DateTime Fecha2=IngresarTiempo("Ingrese la segunda fecha para la funcion MostrarMesesEntre");
            List <string> MesesEntre = MostrarMesesEntre(Fecha1,Fecha2);
            for (int i=0;i<MesesEntre.Count;i++){
                System.Console.WriteLine(MesesEntre[i]);
            }
            List<int> NumerosParaObtenerDatos=IngresarNumHasta("Ingrese los valores de la lista para la funcion ObtenerDatosDeLista",0);
            string[] ObtenerDatos=ObtenerDatosDeLista(NumerosParaObtenerDatos);
            for (int i=0;i<5;i++){
                System.Console.WriteLine(ObtenerDatos[i]);
            }
        }
        static string IngresarTexto(string texto){
            string devolver;
            Console.WriteLine(texto);
            devolver=Console.ReadLine();
            return devolver;
        }
        static int IngresarNum(string texto){
            int devolver;
            Console.WriteLine(texto);
            devolver=int.Parse(Console.ReadLine());
            return devolver;
        }
        static List<int> IngresarNumHasta(string texto, int final){
            int devolver=10;
            List<int> Lista=new List<int>();
            while (devolver!=final){
            Console.WriteLine(texto);
            devolver=int.Parse(Console.ReadLine());
            if (devolver>final||devolver<final){
                Lista.Add(devolver);
            }
            }
            return Lista;
        }
        static DateTime IngresarTiempo(string texto){
            DateTime devolver;
            Console.WriteLine(texto);
            devolver=DateTime.Parse(Console.ReadLine());
            return devolver;
        }
        static string DiasParaMiCumple(int dia, int mes){
            DateTime Hoy=DateTime.Today;
            int diaHoy = Hoy.Day;
            int mesHoy= Hoy.Month;
            int DiferenciaDeDias=0;
            int DiferenciaDeMeses=0;
            int DiasTotales=0;
            bool CumpleMayor=false;
            string resultado="";;
            int[] NumeroMes= new int [13];
          NumeroMes[0]=0;
          NumeroMes[1]=31;
          NumeroMes[2]=59;
          NumeroMes[3]=90;
          NumeroMes[4]=120;
          NumeroMes[5]=151;
          NumeroMes[6]=181;
          NumeroMes[7]=212;
          NumeroMes[8]=242;
          NumeroMes[9]=272;
          NumeroMes[10]=303;
          NumeroMes[11]=333;
          NumeroMes[12]=364;

          if (mesHoy<=mes){
              DiferenciaDeMeses=NumeroMes[mes]-NumeroMes[mesHoy];
              CumpleMayor=false;
          }
          else {
              DiferenciaDeMeses=NumeroMes[mesHoy]-NumeroMes[mes];
              CumpleMayor=true;
          }
            if (diaHoy<=dia){
                DiferenciaDeDias=dia-diaHoy;
            }
            else {
                DiferenciaDeDias=diaHoy-dia;
            }
            DiasTotales=DiferenciaDeDias+DiferenciaDeMeses;
            if (CumpleMayor){
                resultado=$"Pasaron {DiasTotales} dias desde el cumpleaños";
            }
            else {
                resultado=$"Faltan {DiasTotales} dias para el cumpleaños";
            }
            return resultado;
        }
        static List<string> ObtenerFechasDePago(DateTime Fecha, int Maximo){
            DateTime FechasFuturas= Fecha;
            List <string> Fechas=new List <string>();
            for (int i=1;i<=Maximo;i++){
                DateTime FechasMeses = FechasFuturas.AddMonths(i);
                string FechasMesesString=FechasMeses.ToShortDateString();
                Fechas.Add(FechasMesesString);
            }
            return Fechas;
        }

        static List<string> MostrarMesesEntre(DateTime fecha1, DateTime fecha2)
        {
            List<string> resultado= new List<string>();
            int mayor = 0;
            int menor = 0;
            string[] mes = new string[12];
            mes[0] = "enero";
            mes[1] = "febrero";
            mes[2] = "marzo";
            mes[3] = "abril";
            mes[4] = "mayo";
            mes[5] = "junio";
            mes[6] = "julio";
            mes[7] = "agosto";
            mes[8] = "septiembre";
            mes[9] = "Octubre";
            mes[10] = "noviembre";
            mes[11] = "diciembre";

            if (fecha1.Month > fecha2.Month)
            {
                mayor = fecha1.Month;
                menor = fecha2.Month;
                for (int i = menor-1; i < mayor; i++)
            {
                resultado.Add(mes[i]);
            }
            }
            else if (fecha2.Month > fecha1.Month)
            {
                mayor = fecha2.Month;
                menor = fecha1.Month;
                for (int i = menor-1; i < mayor; i++)
            {
                resultado.Add(mes[i]);
            }
            }
            else
            {
                resultado.Add("Ambos meses son iguales");
            }

            
            return resultado;
        
        }
        static string[] ObtenerDatosDeLista (List<int> Numeros)
        {
            string[] resultado=new string[5];
            int Maximo=0;
            int Minimo=0;
            int SumaTotal=0;
            double promedio=0;
            int cantidad=Numeros.Count;
            for (int i=0;i<Numeros.Count;i++){
                if (Numeros[i]>Maximo){
                    Maximo=Numeros[i];
                }
                if (Numeros[i]<Minimo){
                    Minimo=Numeros[i];
                }
                SumaTotal+=Numeros[i];
            }
            promedio=SumaTotal/cantidad;

            resultado[0]=($"Numero maximo: {Maximo}");
            resultado[1]=($"Numero minimo: {Minimo}");
            resultado[2]=($"Suma de los valores: {SumaTotal}");
            resultado[3]=($"Promedio: {promedio}");
            resultado[4]=($"Cantidad de elementos: {cantidad}");
            return resultado;
        }
}
}


