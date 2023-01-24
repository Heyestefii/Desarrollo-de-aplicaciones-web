function cuadrados_cubos(entrada) {
document.write("Tabla de cuadrados y cubos");
   let tabla = "<table> <tbody>";

    let k = 1;
    for (let j = 1; j <= entrada; j++) {
            tabla += "<td><td>";
            tabla += j * k;
            k++;
            tabla += "</td>";
        }

    tabla += "</tr>";
    tabla += "<tr>";

    let p = 1;
    for (let r = 1; r <= entrada; r++) {
            tabla += "<td><td>";
            tabla += r * p *p;
            p++;
            tabla+= "</td>";
        }
    tabla += "</tr>";
    tabla = tabla + "</table>";
    return tabla;
}

function funcion1(){
    let entrada_usuario = prompt("Ingresar un numero: ");
    let tabla_lista = cuadrados_cubos(entrada_usuario);
    document.write(""+tabla_lista);
}

function suma_numeros(){
    let num1 = Math.floor((Math.random()*(11))+1);
    let num2 = Math.floor((Math.random()*(11))+1);
    suma = num1+num2;

    let tiempo1 = performance.now();
    let resultado = prompt("Resultado de la suma "+num1+"+"+num2+":");
    let tiempo2 = performance.now();
        
    if(suma == resultado){
        document.write("Perfecto! ");
    }
    else {
        document.write("Respuesta incorrecta, el resultado correcto es "+suma+" ");}
    
   document.write("Tiempo de respuesta "+((tiempo2-tiempo1)/1000)+" segundos.");
}

function funcion2(){
    suma_numeros();
}

function contador(){
}

function funcion3(){
    contador();
}

function promedio(){
}

function funcion3(){
    promedio();
}

function inverso(){
    var numero = prompt("Introduce un numero de 2 digitos o más");
    let arreglo = Array(numero.length);
    var longitud = numero.length-1;
    for(let i = 0;i<numero.length;i++){
        arreglo[i] = numero[longitud];
        longitud --;
    }
 

    document.write("Inverso: ");
    for(let j = 0; j<numero.length;j++){
        document.write(arreglo[j]);  
    }
}

function funcion5(){
    inverso();
}

function problema(){
}

function funcion3(){
    problema();
}