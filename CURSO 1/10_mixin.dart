void main(){
  final flipper=Delfin();
  flipper.nadar();
  
  final batman=Murcielago();
  batman.caminar();
  batman.nadar();
  
  final namor=Pato();
  namor.nadar();
}

abstract class Animal{ }
abstract class Mamifero extends Animal{}
abstract class Ave extends Animal{}
abstract class Pez extends Animal{}

mixin Volador{
  void volar(){
    print("Puedo Volar!!!");
  }
}

mixin Nadador{
  void nadar(){
    print("Ando nadando!!!!!");
  }
}

mixin Caminante{
  void caminar(){
    print("Que divertido es caminar.");
  }
}

class Delfin extends Mamifero with Nadador{}
class Gato extends Mamifero with Caminante{}
class Murcielago extends Mamifero with Nadador,Caminante{}

class Paloma extends Ave with Volador,Caminante{}
class Pato extends Ave with Caminante,Nadador,Volador{}

class Tiburon extends Pez with Nadador{}
class PezVolador extends Pez with Nadador,Volador{}

