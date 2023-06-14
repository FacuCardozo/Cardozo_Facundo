var mes = parseInt(prompt("Ingrese el numero del mes que quiera saber los dias que tiene:")) //Creo una variable donde ingreso el mes que quiero por teclado, uso parseInt para 
var fecha = new Date();                                                                    //convertir lo ingresado en un numero entero.
fecha.setMonth(mes - 1);                                                //Creo una variable fecha con Date, Date representa la fecha y hora actual.
                                                                        //Se utiliza el metodo setMonth de la variable fecha para establecer el mes de la fecha creada anteriormente.
var numeromes = fecha.getMonth() + 1;                                   //Se le resta uno a mes, porque los meses en javascript empiezan en 0 y no en 1.
var cantidadDias = new Date(fecha.getFullYear(), numeromes, 0).getDate(); //Con la variable numeromes se devuelve el numero del mes, usando getMonth, de la variable fecha, se le suma
                                                                        //un 1 para que se muestre el numero del mes en el formato estandar.
var resultado = `El mes ${mes} tiene ${cantidadDias} dias.`;          //Creo una nueva variable que se llama cantidadDias y un nuevo Date, donde uso getFullYear para obtener el año 
console.log(resultado)                                                //actual, paso numero mes que obtuve antes, y utilizo getDate, para obtener el ultimo dia del mes.
                                                                      //Creo una variable llamada resultado, donde hay una cadena de string con las variables mes y cantidadDias,
                                                                      //insertadas en la cadena de string.
                                                                      //Con console.log, lo muestro por consola el resultado final.