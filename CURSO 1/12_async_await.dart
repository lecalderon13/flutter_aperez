Future<void> main() async{
  
  //Async y await son un paquete
  print("Inicia mi programa");
  
  try{
  final value= await getHttp("Hola.com");
  print(value);
  
  }catch(err){
    print ("Error");
  }
  print ("Se acabo mi programa");
}

/*
 * Future es prometer que alguna variable que no tiene
 * asignado un valor pasara a tenerlo en algun momento del programa.
 * */
Future<String> getHttp (String url) async{
  
  await Future.delayed(Duration(seconds:1));
  return "Valor recibido";
  
}