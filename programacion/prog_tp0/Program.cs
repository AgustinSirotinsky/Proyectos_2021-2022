using System;

namespace tp0
{
    class Program
    {
        static void Main(string[] args)
        {
          int Mayor=TraerMayor(23,50,50);
          string Posicion=PosicionMayor(20,20,12);
          int Mes=CalcularDia(12,1,2020);
          string CadenaReversa=InvertirCase("SalamE");
          string Divisores=divisoresComunes(27,54);
          bool NumeroReal=IsNumeric("98");
          Console.WriteLine($"Mayor: {Mayor}");
          Console.WriteLine($"Posicion: {Posicion}");
          Console.WriteLine($"Mes: {Mes}");
          Console.WriteLine($"Cadena reversa: {CadenaReversa}");
          Console.WriteLine($"Divisores: {Divisores}");
          Console.WriteLine($"Numero Real: {NumeroReal}");
        }
        static int TraerMayor(int var1, int var2, int var3)    
        {
          int Mayor=0;
            if (var1>var2){
              Mayor=var1;
            }
            else {
              Mayor=var2;
            }
            if (var3>Mayor){
                var3=Mayor;
            }
            return Mayor;
        }
        static string PosicionMayor(int var1, int var2, int var3)
        {
          string Mayor="";
          int Mayornum=0;
          int MayornumPos=0;
          if (var1==var2){
            Mayor="El mayor es: 1:2";
          } else if (var1>var2){
            Mayor="El mayor es: 1";
          }
          else if (var1<var2){
            Mayor="El mayor es: 2";
          }
          if (var1>var2){
            Mayornum=var1;
            MayornumPos=1;
          }
          else{
            Mayornum=var2;
            MayornumPos=2;
          }
          if (var3==Mayornum){
            Mayor="El mayor es: 3:"+MayornumPos;
          } else if (var3>Mayornum){
            Mayor="El mayor es: 3";
          }
          else if (var3<Mayornum){
            Mayor="El mayor es: "+MayornumPos;
          }
          if (var1==var2&&var1==var3){
            Mayor="El mayor es: 1:2:3";
          }
          return Mayor;
        }
        
        static int CalcularDia(int dia, int mes, int año){
          int[] NumeroMes=new int [13];
          int MesFinal=dia;
          NumeroMes[0]=0;
          NumeroMes[1]=31;
          NumeroMes[2]=28;
          NumeroMes[3]=31;
          NumeroMes[4]=30;
          NumeroMes[5]=31;
          NumeroMes[6]=30;
          NumeroMes[7]=31;
          NumeroMes[8]=31;
          NumeroMes[9]=30;
          NumeroMes[10]=31;
          NumeroMes[11]=30;
          NumeroMes[12]=31;
          for (int i=0; i<mes; i++){
            MesFinal+=NumeroMes[i];
          }
          return MesFinal;
        }
         
        static string InvertirCase(string cadena){
          char valor='a';
          char salida='a';
          string resultado="";
          for (int i=0;i<cadena.Length;i++){
            valor=cadena[i];
            if (Char.IsLower(valor))
            {
                salida = Char.ToUpper(valor);
            }
            else
            {
                salida = Char.ToLower(valor);
            }
            resultado+=salida;
          }
          return resultado;
        }
        static bool IsNumeric(string valor){
          int num=0;
          bool resultado = int.TryParse(valor, out num);
          return resultado;
        }
        static string divisoresComunes(int num1,int num2){
        int n = 0;
        string divisoresCom = "";
        if(num1 < 0 || num2 < 0){
            return "hubo un error";
        }
        else if(num1 == num2){
            return "hubo un error";
        }
        else{
        int[] divisoresnum1 = new int[100];
        int[] divisoresnum2 = new int[100];
        for(int i = 1; i <= num1; i++){
            if( num1 % i == 0){
                divisoresnum1[i] = i;
            }
        }
        for(int i = 1; i <= num2; i++){
            if( num2 % i == 0){
                divisoresnum2[i] = i;
            }
        }
        while(n < divisoresnum1.Length && n < divisoresnum2.Length){
            if(divisoresnum1[n]> 0 ){
            divisoresCom = divisoresCom + $"{divisoresnum1[n]}, ";
            }
            n++;
        }
        
        }
        return divisoresCom;
        }
        static int ingresonum(string txt)
        {
            int devolver;
            Console.WriteLine(txt);
            devolver = int.Parse(Console.ReadLine());
            return devolver;
        }
      }
    }
    
    
 
