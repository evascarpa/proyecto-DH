window.addEventListener("load", function(){

  provincias.addEventListener("click", function(){
    fetch("https://apis.datos.gob.ar/georef/api/provincias")
    .then(function(respuesta){
        return respuesta.json();
    })
    .then(function(data){
        var provincias = document.querySelector("select#provincias");
        for( var i=0; i < data.provincias.length; i++){
        provincias.innerHTML += "<option value ='" +data.provincias[i].id +"'>" + data.provincias[i].nombre + "</option>";
     }

    })
    .catch(function(error){
      console.log(error)
    });
 });


});
