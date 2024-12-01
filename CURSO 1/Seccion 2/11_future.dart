void main(){
  
  print("Inicia mi programa");
  
  getHttp("https://pokemon.com").then(
    (value){
    print(value);}).catchError((err){print("Error 1403");});
  
  getHttp("Hola.com").then((value){print("Hola");});
  
  print ("Se acabo mi programa");
}

/*
 * Future es prometer que alguna variable que no tiene
 * asignado un valor pasara a tenerlo en algun momento del programa.
 * */
Future getHttp (String url){
  
  return Future.delayed(
          const Duration (seconds: 5),
          (){
          throw "Fallo con exito el Http";
            
          // Los throw evita que los return se ejecuten
          //  return "Respuesta del Http";
            
          });
}
