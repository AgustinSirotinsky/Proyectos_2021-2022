// See https://aka.ms/new-console-template for more information
string[] valor= {"IdJugador","IdEquipo","Nombre","FechaNacimiento","Foto","EquipoActual"};
string[] valor2= {"_idjugador","_idequipo","_nombre","_fechanacimiento","_foto","_equipoactual"};
string[] valor3= {"int","int","string","datetime","string","string"};
for (int i=0; i<valor.Length;i++){
    System.Console.WriteLine("");
    Console.WriteLine("public "+valor3[i]+" "+valor[i]+"");
    System.Console.WriteLine("{");
    System.Console.WriteLine("get {return "+valor2[i]+"; }");
    System.Console.WriteLine("set {"+valor2[i]+"=value;}");
    System.Console.WriteLine("}");
}
