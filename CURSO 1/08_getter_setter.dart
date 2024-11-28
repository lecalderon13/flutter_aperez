void main(){
  final unCuadrado=Cuadrado(lado:-10);
  //unCuadrado.lado=5;
  print("El area de su cuadrado es ${unCuadrado.area}");
}
 
class Cuadrado{
  double _lado; //Area:lado*lado
  Cuadrado({ required double lado})
    //Aserciones: Condiciones y mensajes de error
    : assert(lado>=0,"Los lados deben ser mayores a 0"),
    _lado=lado;
  set lado(double value){
    print("El lado del cuadrado es $value");
    if(value<1) throw "No puede ser 0 ni negativo el valor del lado";
    _lado=value;
  }
  double get area{
    return _lado*_lado;
  }
  double areaCuadrado(){
    return _lado*_lado;
  }
}