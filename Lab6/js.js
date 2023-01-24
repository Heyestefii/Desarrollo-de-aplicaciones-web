function allowDrop(ev) {
  ev.preventDefault();
}

function drag(ev) {
   ev.dataTransfer.setData("text", ev.target.id);
}

function drop(ev) {
  ev.preventDefault();
  var data = ev.dataTransfer.getData("text");
  ev.target.appendChild(document.getElementById(data));
  testing();
}

function testing(){
  var correcto = 1;
  var animals = document.getElementsByClassName("animal");
  for(var i=0;i<animals.length;i++){
     if(animals[i].getAttribute("name") != animals[i].parentNode.getAttribute("id")){
       correcto = correcto*0;
       break;
     }
  }
  if(correcto == 1){
    document.getElementById("resultado").innerHTML = "CORRECTO"; 
  }else{
    document.getElementById("resultado").innerHTML = "INCOMPLETO";
  }
  
}

function funcAvisa(){
 window.alert("No olvides clasificar a los animalitos!");
} setTimeout(funcAvisa,5000);

