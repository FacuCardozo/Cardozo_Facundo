var notas = []                                              //Creo un array llamado notas donde iran las notas puestas por el usuario mas adelante.
while (notasusuario != 11) {                                                    //Uso un while para poner la condicion de que cuando el usuario ponga 11, en la ventana emergente
    var notasusuario =                                                          //se detenga el ingreso de notas a la variable notasusuario, a si mismo le pongo una condicion con un
    parseInt(prompt("Ingrese sus notas (sin decimales). Para finalizar el ingreso de notas ingrese 11"))     
    if (notasusuario < 11){                                                  //If para que solo ingresen los numeros menores a 11, asi cuando el usuario cancela su nota, no ingrese 
    notas.push(notasusuario)                                                 //el 11 que es para cancelar y no para el resto. Al final con un push mando a las notas dentro del array.
    }
}

var notassuma = 0                       //Creo una variable donde iria la sumatoria de las notas anteriormente puestas en el array, recorro el array con un For, y las voy sumando
for (i = 0; i < notas.length; i++){     //a medida que va recorriendo, dando asi el total de la sumatoria de las notas.
    notassuma += notas[i]
}

var promedio = 0;                       //Creo la variable promedio donde ira el resultado del promedio de las notas, despues lo calculo usando notassuma que contiene la sumatoria
promedio = notassuma / notas.length;    //total de las notas, y lo divido con el largo del array que hicimos al principio, el largo coincide con el numero necesario para sacar el 
                                        //promedio de la cantidad de notas que se ingrese.

switch (true) {                                                                                        //Con un Switch con un valor true adentro, aplico las posibles opciones segun
    case promedio > 8:                                                                                 //el resultado del promedio, lo muestro en pantalla con un document.write, y
        document.write("Su promedio es ",promedio.toFixed(2), " usted obtiene un: SOBRESALIENTE")      //uso el metodo toFixed para que el resultado dado por el promedio solo muestre
        break;                                                                                         //dos decimales, por eso toFixed(2).
    case promedio >= 6 && promedio <= 8:
        document.write("Su promedio es ",promedio.toFixed(2), " usted obtiene un: APROBADO")
        break;
    case promedio < 6:
        document.write("Su promedio es ",promedio.toFixed(2), " usted obtiene un: REPROBADO")
        break;
}