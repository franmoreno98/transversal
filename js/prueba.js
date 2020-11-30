if (dni == "") {
    //alert ("No se ha especificat ningun dni");
    document.getElementById('dni').style.border = "2px solid red";
} else {
    var letras = ['T', 'R', 'W', 'A', 'G', 'M', 'Y', 'F', 'P', 'D', 'X', 'B', 'N', 'J', 'Z', 'S', 'Q', 'V', 'H', 'L', 'C', 'K', 'E', 'T'];
    var numeracion = dni.slice(0, 8);

    if (!(numeracion < 0) || !(numeracion >= 99999999)) {
        var letraInicial = dni.charAt(8);
        var letraMayuscula = letraInicial.toUpperCase();
        alert(letraInicial);
        alert(letraMayuscula);

        if (letraInicial != letraMayuscula) {
            document.getElementById('dni').style.border = "2px solid red";
        } else {
            var letraFinal = numeracion % 23;
            alert(letras[letraFinal])

            if (letraInicial != letras[letraFinal]) {
                document.getElementById('dni').style.border = "2px solid red";
            } else {
                document.getElementById('dni').style.border = "2px solid grey";
            }