const mat = () => parseInt(document.getElementById("matematica").value)
const len = () => parseInt(document.getElementById("lengua").value)
const efsi = () => parseInt(document.getElementById("efsi").value)

const imprimirResultado = resultado => document.getElementById("resultado").innerHTML = resultado

function gif(resultado){
    if(resultado>=6 && resultado<10){document.getElementById('image').style.display = "block"; document.getElementById('image').src="img/nota_mayor_a_6.gif";}
    else if(resultado==10){document.getElementById('image').style.display="block"; document.getElementById('image').src="img/nota_10.gif";}
    else if(resultado<6 && resultado>0){document.getElementById('image').style.display = "block"; document.getElementById('image').src="img/nota_menor_a_6.gif";}
}

function Promedio(){
    let mate = mat()
    let leng = len()
    let Efsi = efsi()
    let resultado

    var promedio=Math.round(((mate + leng + Efsi) / 3) * 100) / 100
    resultado = "Promedio: " + promedio
    if (!mate || !leng || !Efsi) alert("Hay que completar todos los campos!")
    else{
        if (mate > 10 || leng > 10 || Efsi > 10){ resultado = "No puede ser mas de 10" 
        document.getElementById("resultado").style.color = "#FF0000"}
        else if (mate < 0 || leng < 0 || Efsi < 0) {resultado = "No puede ser menos de 0"
        document.getElementById("resultado").style.color = "#FF0000"}
        else document.getElementById("resultado").style.color = "#0AFF00"

        if(promedio<6 || promedio>10) document.getElementById("resultado").style.color = "#FF0000"
        else document.getElementById("resultado").style.color = "#0AFF00"
        gif(promedio)
        imprimirResultado(resultado)    
    }
}
function MayorNota(){
    let MateriaMayor="";
    let NotaMayor =0;
    let mate = mat()
    let leng = len()
    let Efsi = efsi()
    let resultado

    for(var i=0; i<3; i++){
        if(mate==leng && leng==Efsi){MateriaMayor="Matematica, EFSI y lengua"; NotaMayor=mate}
        else if(mate==leng && leng!=Efsi && mate>NotaMayor){MateriaMayor="Matematica y lengua"; NotaMayor=mate}
        else if(mate==Efsi && mate!=leng && mate>NotaMayor){MateriaMayor="Matematica y EFSI"; NotaMayor=mate}
        else if(leng==Efsi && leng!=mate && leng>NotaMayor){MateriaMayor="EFSI y lengua"; NotaMayor=leng}
        else if(mate>NotaMayor){MateriaMayor="Matematica"; NotaMayor=mate}
        else if(leng>NotaMayor){MateriaMayor="Lengua"; NotaMayor=leng}
        else if(Efsi>NotaMayor){MateriaMayor="EFSI"; NotaMayor=Efsi}
    } 
    resultado = "La nota mas alta es: " + MateriaMayor + " con un " + NotaMayor;
    if (!mate || !leng || !Efsi) alert("Hay que completar todos los campos!")
    else{
        if (mate > 10 || leng > 10 || Efsi > 10){ resultado = "No puede ser mas de 10"; document.getElementById("resultado").style.color = "#FF0000"}
        else if (mate < 0 || leng < 0 || Efsi < 0) {resultado = "No puede ser menos de 0"; document.getElementById("resultado").style.color = "#FF0000"}
        else if (NotaMayor<6) {document.getElementById("resultado").style.color = "#FF0000"}
        else document.getElementById("resultado").style.color = "#0AFF00"
        gif(NotaMayor)
        imprimirResultado(resultado)
    }
}

