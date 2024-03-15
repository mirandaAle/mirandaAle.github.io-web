
document.addEventListener('DOMContentLoaded', function resul() {
    var dropdownButton = document.getElementById('botonCategoria');
    var dropdownItems = document.querySelectorAll('.dropdown-item');
    var cantidad = parseFloat(document.getElementById('inputCantidad').value);
      dropdownItems.forEach(function(item) {
      item.addEventListener('click', function() {
        var btnMostrarResultado = document.getElementById('btnMostrarResultado');
        var selectedOption = this.textContent;
        
        dropdownButton.textContent = selectedOption;
        console.log(selectedOption);
        var cantidad = parseFloat(document.getElementById('inputCantidad').value);
        
              
    
        // Calcular el descuento según la opción seleccionada
        if (selectedOption === "Estudiante") {
          var cuenta= 200 * cantidad;
          var resultadoElemento= cuenta - (80 * cuenta / 100);
        } else if (selectedOption === "Trainee") {
          var cuenta= 200 * cantidad;
          resultadoElemento= cuenta - (50 * cuenta / 100);
        } else if (selectedOption === "Junior") {
          var cuenta= 200 * cantidad;
          resultadoElemento= cuenta -(15 * cuenta / 100);
        }
        document.getElementById("btnMostrarResultado").addEventListener("click", function(event) {
          event.preventDefault();
         document.getElementById("textoTotal").innerText ="Total a Pagar:$ "+ resultadoElemento;
        });
        
      });
    });
    //document.getElementById("butonBorrar").addEventListener("click", function(event) {
    //  event.preventDefault();
    // document.getElementById('textoTotal').innerText ="Total a Pagar:$";
    // document.getElementById('inputCantidad').value ="";
    // document.getElementById('botonCategoria').innerText ="";
    // document.getElementById('inputNombre').value ="";
    // document.getElementById('inputApellido').value ="";
    // document.getElementById('inputCorreo').value ="";
            
    //});
});