function cien_randoms() {                                   //Creamos la funcion llamada cien_randoms que ejecutara cien numeros aleatorios del 1 al 100 sin repetir ninguno.
    var numeros = []                                        //Creo una array vacio, donde iran los numeros generados mas adelante.
    while (numeros.length < 100) {                          //Con un while ponemos la condicion de que mientras el array no llegue a los 100 numeros que no deje de funcionar, despues
        var numerorandom = Math.floor(Math.random() * 101); //hacemos otra variable donde ira numero por numero creado por las funciones math.floor y math.random multiplicandolas por 
        if (numeros.indexOf(numerorandom) === -1){          //101, despues de eso con un If, vamos viendo cada numero que va ingresando al array numeros usando el metodo IndexOf, si 
            numeros.push(numerorandom)                      //nos da un numero que no esta en el array el resultado de IndexOf da -1 entonces por nuestra condicion de que si el 
        }                                                   //IndexOf da -1, ese numero se puede agregar al array, y despues usando metodo push, se mete ese numero al array.
    }
    for (let i = 0; i < numeros.length; i++) {              //Con un for recorremos el array de los numeros ya creados, y usamos un document.write para mostrarlos en pantalla, junto
        document.write(numeros[i] + '<br>');                //con un br para generar un salto de linea, y asi quede mas prolijo y legible cada numero.
        
    }
}

cien_randoms()             //Aqui solo llamamos a la funcion y que haga su magia.