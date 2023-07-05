void main(){
  
  final windPlant = WindPlant(initialEnergy: 100);
  
  final nuclearPlant = NuclearPlant(energyLeft: 1000);
  
  print(windPlant);
  
  print('wind: ${chargePhone(windPlant)}');
  print('nuclear: ${chargePhone(nuclearPlant)}');
  
}


double chargePhone(EnergyPlant plant){
  if(plant.energyLeft < 10){
    throw Exception('Not enough energy');
  }
  
  return plant.energyLeft - 10;
}



enum PlantType { nuclear, wind, water }


abstract class EnergyPlant {
  
  double energyLeft;
  final PlantType type; // nuclear, wind, water
  
  EnergyPlant({required this.energyLeft, required this.type});
  
  void consumeEnergy(double mount);
  
  
}


// Extends o implements
// Extends: Hacemos uso de herencia
class WindPlant extends EnergyPlant  {
  
  WindPlant({required double initialEnergy})
    : super(energyLeft: initialEnergy, type: PlantType.wind);
  
  @override
  void consumeEnergy(double amount){
    energyLeft -= amount;
  }
}

// Implements:
class NuclearPlant implements EnergyPlant {
  
  @override
  double energyLeft;
  
  @override
  final PlantType type = PlantType.nuclear;
  
  NuclearPlant({ required this.energyLeft });
  
  @override
  void consumeEnergy(double amount){
    energyLeft -= (amount * 0.5);
  }
  
}

// La diferencia entre implements y extends es que con extends heredas todas las propiedades
// y todos los métodos de la clase Padre, mientras que con implements, tú puedes 
// elegir que quieres en particular de tu clase Padre.


