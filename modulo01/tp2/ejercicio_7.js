function alreves(texto) {                               //Creamos una funcion llamada alreves que sera la encargada de poner al reves todos los textos que se ingresen en su parametro
    var textoalreves = texto.split('').reverse().join('');   //Creo la variable textoalreves donde guardare el texto al reves, lo que hago ahi es dividir el texto ingresado en un
    return textoalreves;                                     //array de caracteres con el split, lo pongo al reves con el reverse, y despues con el join lo vuelvo a juntar el array
}                                                            //en un texto denuevo, y termino con el return para que me devuelva el texto ya al reves.

var texto = "Hola, como andas?";             //Esta es una prueba para ver si andaba la funcion, ingreso un texto, llamo a la funcion anteriormente descrita, y despues muestro el
alreves(texto);                              //resultado por consola.
console.log(alreves(texto));