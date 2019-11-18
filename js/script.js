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

/*VALIDACIONES DEL FORMULARIO DE REGISTRO*/
window.addEventListener("load", function(){                                           
  /*detectar cuando toco el boton de registro (se envia el formulario)*/
  var btnUnite=document.querySelector(".Unite");
  btnUnite.addEventListener("click",function(){    
       
  /*tomar los datos del formulario*/
  var nombre=document.querySelector(".inputNombre");
  var apellido=document.querySelector(".inputApellido");
  var email=document.querySelector(".inputEmail");
  var contrasenia=document.querySelector(".inputConfirmContrasenia");
  var textSobreVos=document.querySelector(".inputTextSobreVos");

  /*tomo los span de errores del formulario */
  var errorNombre=document.querySelector(".error-inputNombre");
  var errorApellido=document.querySelector(".error-inputApellido");
  var errorEmail=document.querySelector(".error-inputEmail");
  var errorContrasenia=document.querySelector("error-confirmContrasenia");
  var errorTextSobreVos=document.querySelector(".error-inputTextSobreVos");
  
  /*por cada dato voy a validar lo que necesite */
  if(nombre.value.length<=3){
    nombre.style.border="3px solid rgb(255,153,18)";
    errorNombre.innerHTML="Tu nombre debe tener al menos 3 caracteres.";
  }else{
    errorNombre.innerHTML="";
    nombre.style.border="3px solid rgb(144,197,0)";
  }

  if(apellido.value.length<=3){
    apellido.style.border="3px solid rgb(255,153,18)";
    errorApellido.innerHTML="Tu apellido debe tener al menos 3 caracteres.";
  }else{
    errorApellido.innerHTML="";
    apellido.style.border="3px solid rgb(144,197,0)";
  }
  
  expr = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
  if(!expr.test(email.value)){
    email.style.border="3px solid rgb(255,153,18)";
    errorEmail.innerHTML="Formato de E-mail inválido";
  }else{
    errorEmail.innerHTML="";
    email.style.border="3px solid rgb(144,197,0)";
  }

  

  /*le aviso al usuario que hay errores*/

  /*si todo esta bien , le doy la bienvenida */


  })

 
})