function analizar_texto(texto) {                                            //Creo una funcion con el nombre analizar_texto, usando un If con la condicion de que el texto ingresado,
    if (texto === texto.toUpperCase()) {                                    //sea estrictamente igual al texto pero todo mayusculas usando el metodo toUpperCase, este mismo revisa si
      return "El texto está formada solo por mayúsculas";                   //todo el texto esta en mayusculas, si es asi, este devolvera un texto que indica eso mismo. En el Else If
    } else if (texto === texto.toLowerCase()) {                             //use el metodo toLowerCase para tener el efecto contrario al toUpperCase, osea revisa si todo el texto esta
      return "El texto está formada solo por minúsculas";                   //en minusculas, si es asi, este devolvera un texto que indica eso mismo.
    } else {                                                                //En caso que el texto contenga mayusculas y minusculas, agregue un else mas para que indique si sucede eso
      return "El texto está formada por una mezcla de mayúsculas y minúsculas";
    }
  }


var texto = prompt("Ingrese su cadena de texto");      //Esto solamente es para probar si la funcion en realidad funciona, ingresando una cadena de texto por teclado, y mostrando en 
console.log(analizar_texto(texto))                     //consola el resultado de la funcion, con su mensaje correspondiente.