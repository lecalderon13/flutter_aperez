void main(){
  //Flutter
  final goku= Heroe(nombre: "Son Goku",poder: 1000000);
  print (goku.toString());
  print (goku.nombre);
  print (goku.poder);
}
 
class Heroe {
  String? nombre;
  int? poder;
 
  // Forma rapida: 
  // Heroe(this.nombre, this.poder);
  //Forma tradicional
  /*Heroe(String? hNombre, int? hPoder) {
    nombre = hNombre;
    poder = hPoder;
  */  
    Heroe ({
      required this.nombre,
      required this.poder
        //Establecer un parametro por defecto
        //this.nombre="Kakaroto";
        //this.poder =10
      });
  //override es algo recomendado de poner antes del metodo toString()
  @override
  String toString(){
    return "$nombre + $poder";
  }
  }