//MOstrar un mensaje x consola
console.log("el mensaje")

let elArray=["array1","array2","array3","hola","xyz","abc"];
let elAarrayNumerico=[1,2,3,4,6]

//Mostrar el array en consola
elArray.map(function(x){
    console.log(x)
})

//Agregar un valor
elArray.push("hola23")

//Encontrar un valor del array
console.log("LasIndexOf: " +elArray.lastIndexOf("array3"))

//Encontrar suma de valores
let total=0;
const suma=elAarrayNumerico.reduce(
    (acumulador,ValorActual)=>acumulador+ValorActual, total
)
console.log("Suma de valores: "+suma);

//Invertir valores
let elArrayInvertido=elArray.reverse()
console.log("Array invertido: "+ elArrayInvertido)

//Devolver un array con los valores ordenados alfabeticamente
let elArrayOrdenadorAlfabeticamenteAltoNombreIgualE=elArray.sort();
console.log("Array ordernado: "+elArrayOrdenadorAlfabeticamenteAltoNombreIgualE)