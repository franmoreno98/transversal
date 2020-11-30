function validarForm() {
    var dni = document.getElementById('fdni').value;
    var nom = document.getElementById('fnom').value;
    var primer = document.getElementById('fprimer').value;
    var segon = document.getElementById('fsegon').value;
    var email = document.getElementById('femail').value;
    var data = document.getElementById('fdata').value;

    if (dni == "" || nom == "" || primer == "" || segon == "" || email == "" || data == "") {

        if (dni == '') {
            document.getElementById("fdni").style.borderColor = "red";
        }
        if (nom == '') {
            document.getElementById("fnom").style.borderColor = "red";
        }
        if (primer == '') {
            document.getElementById("fprimer").style.borderColor = "red";
        }
        if (segon == '') {
            document.getElementById("fsegon").style.borderColor = "red";
        }
        if (email == '') {
            document.getElementById("femail").style.borderColor = "red";
        }
        if (data == '') {
            document.getElementById("fdata").style.borderColor = "red";
        }

        if (dni != '') {
            document.getElementById("fdni").style.borderColor = "rgb(14, 129, 196)";
        }
        if (nom != '') {
            document.getElementById("fnom").style.borderColor = "rgb(14, 129, 196)";
        }
        if (primer != '') {
            document.getElementById("fprimer").style.borderColor = "rgb(14, 129, 196)";
        }
        if (segon != '') {
            document.getElementById("fsegon").style.borderColor = "rgb(14, 129, 196)";
        }
        if (email != '') {
            document.getElementById("femail").style.borderColor = "rgb(14, 129, 196)";
        }
        if (data != '') {
            document.getElementById("fdata").style.borderColor = "rgb(14, 129, 196)";
        }

        document.getElementById("message").innerHTML = 'Hay algún campo vacío';
        document.getElementById("message").style = "background-color: #FFB0AE; border-radius: 5px; padding: 13px;";
        return false;
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
            document.getElementById("fdni").value = "";
            return false;

        } else {
            return true;
        }
    } else {
        document.getElementById("message").innerHTML = 'Dni erroneo, formato no valido';
        document.getElementById("fdni").style.borderColor = "red";
        document.getElementById("fdni").value = "";
        return false;
    }

    //return true;
}