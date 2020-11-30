function validarForm() {
    var dni = document.getElementById('fdni').value;
    var nom = document.getElementById('fnom').value;
    var primer = document.getElementById('fprimer').value;
    var segon = document.getElementById('fsegon').value;
    var email = document.getElementById('femail').value;
    var data = document.getElementById('fdata').value;

    if (dni == '' || nom == '' || primer == '' || segon == '' || email == '' || data == '') {
        if (dni == '') {
            document.getElementById("fdni").style.border = "red";
        }
        if (nom == '') {
            document.getElementById("fnom").style.border = "red";
        }
        if (primer == '') {
            document.getElementById("fprimer").style.border = "red";
        }
        if (segon == '') {
            document.getElementById("fsegon").style.border = "red";
        }
        if (email == '') {
            document.getElementById("femail").style.border = "red";
        }
        if (data == '') {
            document.getElementById("fdata").style.border = "red";
        }

        if (dni != '') {
            document.getElementById("fdni").style.border = 'rgb(14, 129, 196)';
        }
        if (nom != '') {
            document.getElementById("fnom").style.border = 'rgb(14, 129, 196)';
        }
        if (apellido != '') {
            document.getElementById("fprimer").style.border = 'rgb(14, 129, 196)';
        }
        if (segon != '') {
            document.getElementById("fsegon").style.border = 'rgb(14, 129, 196)';
        }
        if (email != '') {
            document.getElementById("femail").style.border = 'rgb(14, 129, 196)';
        }
        if (data != '') {
            document.getElementById("fdata").style.border = 'rgb(14, 129, 196)';
        }
        document.getElementById("message").innerHTML = 'Hay algún campo vacío';
        document.getElementById("message").style = "background-color: #FFB0AE; border-radius: 5px; padding: 13px;";
        return false;
    }
    return true;
}


function validarDNI() {
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
            return false;

        } else {
            return true;
        }
    } else {
        document.getElementById("message").innerHTML = 'Dni erroneo, formato no valido';
        document.getElementById("fdni").style.borderColor = "red";
        return false;
    }

    // document.getElementById("message").style = "background-color: #FFB0AE; border-radius: 5px; padding: 13px;";
    //return false;
}