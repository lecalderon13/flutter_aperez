void main(){
  final miPlanta = PlantaViento(monto: 1000); 
  print(miPlanta.capacidad_electrica);
}
 
enum TipoPlanta{Eolica,Hidraulica,Electrica}
 
double CargaCell(PlantaElectrica planta){
    if(planta.capacidad_electrica <= 100){
      throw Exception("No tiene suficiente energia");
    }
    return planta.capacidad_electrica; 
}
abstract class PlantaElectrica{
    double capacidad_electrica; // Quitado el uso de valores nulos.
    TipoPlanta tipo_planta;
   PlantaElectrica({required this.capacidad_electrica, required              this.tipo_planta});
  void ConsumoEnergia(double energia);
}
 
class PlantaViento extends PlantaElectrica{
  PlantaViento({required double monto}):
                       super(capacidad_electrica:monto,
                       tipo_planta:TipoPlanta.Hidraulica);
  @override
  void ConsumoEnergia(double energia){
    capacidad_electrica=energia;
  }
}