function validarForm() {

    var dni = document.getElementById('fdni').value;
    var nom = document.getElementById('fnom').value;
    var primer = document.getElementById('fprimer').value;
    var segon = document.getElementById('fsegon').value;
    var email = document.getElementById('femail').value;
    var data = document.getElementById('fdata').value;
    //alert('hola')
    var inputs = document.getElementsByTagName("input");
    for (let i = 0; i < inputs.length; i++) {
        //console.log(inputs[i].type);

        if (inputs[i].type == 'text' && inputs[i].value == '') {
            inputs[i].style.borderColor = 'red';
            document.getElementById("message").innerHTML = 'Te has dejado algun campo vacio';

        } else if (inputs[i].type == 'text' && inputs[i].value != '') {
            inputs[i].style.borderColor = 'rgb(14, 129, 196)';
        }

    }
    var numero
    var letr
    var letra
    var expresion_regular_dni

    expresion_regular_dni = /^\d{8}[a-zA-Z]$/;

    if (expresion_regular_dni.test(dni) == true) {
        numero = dni.substr(0, dni.length - 1);
        letr = dni.substr(dni.length - 1, 1);
        numero = numero % 23;
        letra = 'TRWAGMYFPDXBNJZSQVHLCKET';
        letra = letra.substring(numero, numero + 1);
        if (letra != letr.toUpperCase()) {
            document.getElementById("message").innerHTML = 'Dni erroneo, la letra del NIF no se corresponde';
            document.getElementById("fdni").style.borderColor = "red";

        } else {
            return true;
        }
    } else {
        document.getElementById("message").innerHTML = 'Dni erroneo, formato no valido';
        document.getElementById("fdni").style.borderColor = "red";

    }

    document.getElementById("message").style = "background-color: #FFB0AE; border-radius: 5px; padding: 13px;";
    return false;
}