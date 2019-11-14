window.addEventListener("load", function(){

  var anio= document.querySelector(".anio");

  anio.addEventListener("click", function(){
    fetch("../json/fechas.json")
    .then(function(respuesta){
        return respuesta.json();
    })
    .then(function(data){
        console.log(data);

    })

  });


});
