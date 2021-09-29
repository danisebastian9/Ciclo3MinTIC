$(document).ready(function () {
    let mensaje = "Hola Mundo..."
    alert(mensaje);
    console.log(mensaje);

    function Sumar(){
        let n1 = parseInt(document.getElementById("n1").value);
        let n2 = parseInt(document.getElementById("n2").value)
        let suma = n1 + n2
        console.log("La suma es " + suma)
    
        let h2 = document.getElementById("h2")
        h2.innerHTML = "La suma es "+ suma;
    }

    $('.suma').on('click', function(){
        Sumar()
    })

})

