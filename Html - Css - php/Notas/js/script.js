boton = document.getElementById("boton");
boton.addEventListener("click", function(){
    areaTexto = document.getElementById("texto");
    notas=localStorage.getItem("notas");
    if(notas==null){
        arreglo=[];
    }else{
        arreglo=JSON.parse(notas);
    }
    console.log(notas);
    arreglo.push(areaTexto.value);
    localStorage.setItem("notas",JSON.stringify(arreglo));
    areaTexto.value="";
    crearNotas();
});

function crearNotas(){
    notas=localStorage.getItem("notas");
    if(notas==null){
        arreglo=[];
    }else{
        arreglo=JSON.parse(notas);
    }
    htmlnuevo="";
    arreglo.forEach((element, i)=>{
        htmlnuevo=htmlnuevo+
        `<div class="notaInd">
            <h1> NOTA ${i+1} </h1>
            <p> ${element} </p>
            <button onclick="borrarNota(${i})">Borrar</button>
        </div>`
    });
    contenedor=document.getElementById("notas");
    contenedor.innerHTML=htmlnuevo;
}

function borrarNota(notaIndex) {
    notas = localStorage.getItem("notas");
    if (notas == null) {
      arreglo = [];
    } else {
      arreglo = JSON.parse(notas);
    }
    arreglo.splice(notaIndex, 1);
    localStorage.setItem("notas", JSON.stringify(arreglo));
    crearNotas();
  }