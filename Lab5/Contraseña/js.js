
var contraseña = document.getElementById("contra");

var may = document.getElementById("may");
var min = document.getElementById("min");
var numeros = document.getElementById("numero");

contraseña.onkeyup = function() {
 
  var mayusculas = /[A-Z]/g;
  if(contraseña.value.match(mayusculas)) {
    may.classList.remove("invalido");
    may.classList.add("valido");
  } 
  else {
    may.classList.remove("valido");
    may.classList.add("invalido");
  }

  var minusculas = /[a-z]/g;
  if(contraseña.value.match(minusculas)) {
    min.classList.remove("invalido");
    min.classList.add("valido");
  } 
  else {
    min.classList.remove("valido");
    min.classList.add("invalido");
  }

  var numeros = /[0-9]/g;
  if(contraseña.value.match(numeros)) {
    numero.classList.remove("invalido");
    numero.classList.add("valido");
  } 
  else {
    numero.classList.remove("valido");
    numero.classList.add("invalido");
  }
}
}





