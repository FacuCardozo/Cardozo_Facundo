var numero = parseInt(prompt("Ingrese un numero para saber si es par o impar")) //Creo una variable que el usuario debera ingresar por teclado, usando el prompt en conjunto con el 
par_o_impar(numero)                                                             //parseInt para convertir el string ingresado en un numero entero.
//↑ En esta linea llamo a la funcion para ejecutarla//
 
function par_o_impar(numero) {               //Aqui creo una funcion usando function y llamandola par_o_impar a la misma, en la cual usando un If, un Else If y un Return, aplico un
    if (numero % 2 == 0){                    //ejercicio matematica para saber si un numero es par o impar y es, diviendo el numero por dos y si el resto da 0 el numero es par, y si el
        document.write("El numero es par")   //resto no da cero, entonces el numero no es par, por supuesto para esto uso los operadores logicos y aritmeticos correspondientes.
    }
    else if(numero % 2 != 0){
        document.write("El numero es impar")
    }
    return document.write
}