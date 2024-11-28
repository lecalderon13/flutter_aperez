void main(){

  final AntMan=Hero(
    nombre:"Clint Barton",
    poder:50,
    isAlive:true);
  print(AntMan.toString());
}
 
class Hero{
  String nombre;
  int poder;
  bool isAlive;
  Hero({required this.nombre,
        required this.poder,
        required this.isAlive
        });
  Hero.fromJson( Map<String,dynamic> json)
    : nombre =json['nombre'] ?? "Nombre no encontrado",
      poder  =json["poder"] ?? "Poder no ingresado",
      isAlive=json["isAlive"] ?? "Estado desconocido";
  @override
  String toString(){
    return 
    """ 
    $nombre, 
    $poder, 
    $isAlive: ${isAlive ? "Yes, Mr. Obvio!" : "NOOOO!!!" }
    """;
  }
}