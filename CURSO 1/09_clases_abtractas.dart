void main() {
  final planta_eolica= PlantaEolica(energia_requerida: 100);
  final planta_nuclear=PlantaNuclear(capacidad_energia: 600);
  print("Energia Eolica-Capacidad: ${CargaTelefono(planta_eolica)}");
  print("Energia Nuclear-Capacidad: ${CargaTelefono(planta_nuclear)}");
}
 
enum TipoPlanta{eolica,hidraulica,electrica,nuclear}
 
double CargaTelefono(Planta tipo_energia){
      if(tipo_energia.capacidad_energia<10){
        print("No hay suficiente energia");
      } 
      return tipo_energia.capacidad_energia;
}
abstract class Planta{
  double capacidad_energia;
  final TipoPlanta tipo_planta;
  Planta({required this.capacidad_energia,
          required this.tipo_planta});
  void consumoEnergia(double monto){
  }
}
 
//Extends: Herencia para heredar tanto atributos y metodos
class PlantaEolica extends Planta{
      double energia_requerida;
      PlantaEolica ({required this.energia_requerida}):
                    super(capacidad_energia: energia_requerida,
                         tipo_planta: TipoPlanta.eolica);
      @override
      void consumoEnergia( double monto ) {
        capacidad_energia -= monto;
      }            
}
//Implements es como herencia pero solo hereda metodos
class PlantaNuclear implements Planta {
      @override
      double capacidad_energia;
      @override
      TipoPlanta tipo_planta=TipoPlanta.nuclear;
      PlantaNuclear({required double this.capacidad_energia});
      @override
      void consumoEnergia( double monto ) {
        capacidad_energia -= monto*0.5;
      }       
}