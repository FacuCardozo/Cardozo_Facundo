var numero = parseInt(prompt("Ingrese el numero al cual quiere calcular el factorial")); //Creo una variable para que el usuario pueda introducir un numero por teclado a traves de la 
var factorial = 1;                                                                       //funcion prompt, acoplandole la funcion parseInt para convertir el string en un entero.

for (var i = 1; i <= numero; i++) {                                                      //Uso la funcion for pedida por la consigna para crear un recorrido desde el numero 1 hasta el
    factorial *= i;                                                                      //numero ingresado por el usuario, y multiplicandolo por su proximo numero hasta devuelta el 
}                                                                                        //numero ingresado por el usuario, haciendo asi la formula de calculo de un factorial.

console.log("El factorial de", numero, "es:", factorial)                                 //Y uso console.log para mostrar el resultado final del factorial.