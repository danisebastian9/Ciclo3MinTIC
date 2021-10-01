$(document).ready(function(){
    function listarLibros(){
        $.ajax({
            type: "post",
            url: "Reportes",
            dataType: "json",
            data: {opcion: "libros"},
            success: function(result){
                console.log(result)
            }
        })
    }
})