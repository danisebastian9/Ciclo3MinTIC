$(document).ready(function(){
    function listarLibros(){
        var men = document.getElementById("mensaje").value

        $.ajax({
            type: "post",
            url: "Reportes",
            dataType: "json",
            data: {opcion: "libros", mensaje: men},
            success: function(result){
                console.log(result)
            }
        })
    }

    $('.listaLibros').on('click', function(){
        listarLibros();
    })
})