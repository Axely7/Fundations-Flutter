void main(){
  
  final numbers = [1,2,3,4,5,5,5,6,7,8,9,9,10];
  
  print('List original $numbers');
  print('Length ${numbers.length}');
  print('Index 0: ${numbers[0]}');
  print('First: ${numbers.first}');
  print('Reversed: ${numbers.reversed}');
  
  final reversedNumbers = numbers.reversed;
  // Permite barrer información
  print('Iterable: $reversedNumbers');
  // Listado
  print('List: ${reversedNumbers.toList()}');
  // Un set solo contendrá valores únicos
  print('Set: ${reversedNumbers.toSet()}');
  
  final numbersGreaterThan5 = numbers.where((num) {
    return num > 5;
  });
  
  print('Mayor a 5: $numbersGreaterThan5');
  print('Mayor a 5 como Set: ${numbersGreaterThan5.toSet()}');
}