void main(){
  mostrarNumeros().listen((value){print("Valor del periodic $value");});
  
}

//Para los streams se define el tipo de datos que manejaran

Stream<int> mostrarNumeros(){
  
  return Stream.periodic(Duration(seconds:1),(value){return value;}).take(5);
    //print("Periodico $value");});
    
}