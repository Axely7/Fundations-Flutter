void main (){
  print(greetEveryone());
  print(addTwoNumbers(10,20));
  
  print(greetPerson( name: 'Axel', message: 'Hi' ));
}

String greetEveryone() =>'Hello everyone';

int addTwoNumbers(int a,int b) => a + b;

int addTwoNumbersOptional(int a, [int b = 0]) {
  
 // b = b ?? 0; Esto es como si fuera un ternario, si tiene valor en b
  // si no tiene valor en b se asignará 0
  
  return a + b;
}


String greetPerson({required String name, String message = 'Hola,'}){
  return '$message Fernando';
}