
function MostrarTemporadas(IdS,nombreserie){ 
    $.ajax({
        url: '/Home/MostrarTemporadasAjax',
        data: {IdSerie: IdS},
        type: 'GET',
        dataType: 'json',
        success: function(response){
            $("#Titulo-Modal").html("Temporadas de "+ nombreserie);
            let body="";
             response.forEach(element =>{
             body += "temporada: " + element.numeroTemporada + " Nombre: " + element.tituloTemporada + "<br>";
            });
            $("#ContenidoModal").html(body);
        },
        error: function(xhr,status){
           console.log('ERORR');
        }
        
    });
}
function MostrarActores(idS,nombreserie){ 
    $.ajax({
        type: 'GET', datatype: 'JSON', url: '/Home/MostrarActoresAjax', data: {idSerie: idS},
        success:
        function (response)
        {
            $("#Titulo-Modal").html("Actores de " + nombreserie); 
            let body="";
             response.forEach(element =>{
             body +=  element.nombre + "<br>";
            });
            $("#ContenidoModal").html(body);
        }
    });
}

function MostrarMasInfo(idS){
    $.ajax({
        type: 'GET', datatype: 'JSON', url: '/Home/MostraSeriesAjax', data: {idSerie: idS},
        success:
        function (response)
        {
            $("#Titulo-Modal").html("Mas info");
            $("#ContenidoModal").html("Nombre de la serie: "+ response.nombre +"<br>"+" año de inicio: "+ response.añoInicio + "<br>" + "Sinopsis: " + response.sinopsis);
        }
    });
}