using System;

namespace tp3.Models
{
    public class Funciones 
    {
        public static int FuncionTraerMayor(int var1, int var2, int var3)    
        {
          int Mayor=0;
            if (var1>var2){
              Mayor=var1;
            }
            else {
              Mayor=var2;
            }
            if (var3>Mayor){
                Mayor=var3;
            }
            return Mayor;
        }
        public static string FuncionPosicionMayor(int var1, int var2, int var3)
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
        public static int FuncionCalcularDia(int dia, int mes, int año){
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
        public static string FuncionDivisoresComunes(int num1,int num2){
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
        public static string FuncionInvertirCase(string cadena){
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
        public static bool FuncionIsNumeric(string valor){
          int num=0;
          bool resultado = int.TryParse(valor, out num);
          return resultado;
        }
        static string FunciondivisoresComunes(int num1,int num2){
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
    }
}