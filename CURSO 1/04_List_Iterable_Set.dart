void main() {
  final numbers = [1, 2, 3, 4, 5, 5, 6, 6, 7, 7, 7];
  print("Mi lista de numeros es ${numbers}");
  print("La cantidad de elementos en la lista es ${numbers.length}");
  print("Mis lista tiene en la posicion 4 al ${numbers[1]}");
  //Primer numero
  print("El primer numero de la lista es ${numbers.first}");
  //Ultimo numero
  print("El ultimo numero de la lista es ${numbers.last}");
  //Reversada
  print("La lista reversada queda como ${numbers.reversed}");
  /*Al reversar la lista se vuelve un iterable,
  que es una lista de la que ya se conoce su longitud
  Cambian sus [] por ()*/
  final numbers_reversada = numbers.reversed;
  // Transformar un iterable a lista
  final numbers_reversadaList = numbers_reversada.toList();
  print(numbers_reversadaList);
  //Puedes eliminar los repetidos con Set
  final lista_sin_repetidos = numbers_reversadaList.toSet();
  print(lista_sin_repetidos);
  //Where que es una condicional
  //Num sera el valor a evaluar y en return se coloca la condicion
  final numerosMayor5=numbers.where((int num){
    return num >5;
  });
  print("Los numeros mayores de la lista son $numerosMayor5");
}