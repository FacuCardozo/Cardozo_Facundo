var texto = prompt("Ingrese un texto e identificare la posicion de su primer vocal su primer vocal") //Creo una variable del tipo string que es ingresada por teclado por el usuario.
var vocales = ["a", "e", "i", "o", "u",]                              //Creo un array con las 5 vocales que usaremos mas adelante para identificar las mismas en la variable anterior.
var posicion = 0                                                      //Creo una variable llamada posicion del tipo numerico para guardar la posicion de la vocal cuando se encuentre.
var primeravocal                                                      //Creo una variable llamada primeravocal para guardar la primera vocal que encontremos mas adelante.

for (var i = 0; i < texto.length; i++) {               //Utilice un bucle for para recorrer cada caracter del texto introducido por el usuario, luego con el metodo includes usando el
    if (vocales.includes(texto[i].toLowerCase())) {    //array vocales, verifica si cada caracter es una vocal, el toLowerCase es para que detecta tanto minusculas como mayusculas,
        posicion = i + 1;                              //la posicion de la vocal se guarda en posicion y a este mismo le sumamos uno, porque en los arrays el primer lugar es el 0, 
        primeravocal = texto[i]                        //entonces sumandole 1 obtenemos la posicion real empezando en 1 en lugar de 0. Y la primera vocal se guarda en primeravocal,
        break;                                         //que la mostramos despues escribiendo esa variable, y salimos del bucle con el break.
    }
}

console.log("La primer vocal de su palabra",texto, "es",primeravocal,"y su posicion es:",posicion)//Muestro en consola la palabra introducida, cual es la primer vocal y su posicion