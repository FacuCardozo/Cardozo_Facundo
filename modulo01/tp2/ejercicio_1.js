/* Ejercicio 1-1 (Determinar cual de los elementos de texto es mayor, es decir el que contenga mas letras). */

var valores = [true, false, 2, "hola", "mundo", 3, "char"];
    var palabramaslarga = "";                                /* Creo una variable del tipo string donde se guardara la palabra mas larga despues de recorrer el array. */
    for (let palabra of valores) {                           /* Hago un For Of para recorrer el array con un if adentro que agarraria los strings gracias a la propiedad length. */
        if (palabra.length > palabramaslarga.length) {       /* Tambien gracias al if, me compararia el largo de las palabras y me iria guardando la mas grande en la variable palabra. */
            palabramaslarga = palabra                        
        }
    }

console.log("La palabra mas larga es: " + palabramaslarga)   /* Y lo termino mostrando en consola con la funcion console.log .*/

/* Ejercicio 1-2 (Imprimir estos elementos de menor a mayor cantidad de letras). */

valores.sort();                    /* Ordeno el array con la funcion sort. */

for (var strings of valores) {     /* Hago un for of que recorra el array con una nueva variable llamada strings, con un if que aplica la propiedad length asi solo agarra strings */
    if (strings.length > ""){      /* Le pongo como condicion que toda palabra que sea mas larga que 0 por asi decir de longitud, la muestre en consola con console.log .*/
        console.log(strings)
    }
}

/* Ejercicio 1-3 (Determinar el resultado de las cuatro operaciones matematicas basicas (suma, resta, multiplicacion y division). */

var solonum = valores.filter(function(elemento){         //Creo un nuevo array donde guardare solo valores numericos dados por el metodo filter que devuelve todos los elementos 
    return typeof elemento === "number";                 //que cumplan con la condicion puesta, en este caso yo puse que sean estrictamente numeros y devolviendolos con el return.
});

console.log(solonum)                                     //Aca muestro en consola el nuevo array.

var suma = solonum[0] + solonum [1]                      //Procedo a hacer una variable para cada operacion matematica basica pedida en la consigna y despues la resuelvo
var resta = solonum[0] - solonum [1]                     //haciendo la operacion que corresponde en cada una.
var multiplicacion = solonum[0] * solonum [1]
var division = solonum[0] / solonum [1]

console.log("La suma es:", suma)                        //Al final muestro en consola cada resultado de cada operacion usando console.log con cada variable matematica anteriormente
console.log("La resta es:", resta)                      //creada.
console.log("La multiplicacion es:", multiplicacion)
console.log("La division es:", division)
