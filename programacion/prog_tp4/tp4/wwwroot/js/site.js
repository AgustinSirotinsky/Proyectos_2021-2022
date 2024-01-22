function MostrarInformacion(NombreP){
    $.ajax({
        url: '/Home/MostrarInformacionAjax',
        data: {_NombrePais: NombreP},
        type: 'GET',
        dataType: 'json',
        success: 
        function(response)
        {
            $("#Titulo-Modal").html("Informacion de "+ response.nombre);
            $("#Poblacion").html("Poblacion: "+ response.poblacion);
            $("#FechaIndependencia").html("Fecha de su independencia: "+ response.fechaIndependencia);
            $("#AtractivosTuristicos").html("Atractivos turisticos: "+ response.atractivosTuristicos);
        }
    });
}