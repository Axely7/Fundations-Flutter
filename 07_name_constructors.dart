void main(){
  
  final Map<String, dynamic>rawJson = {
    'name': 'Spider Man',
    'power': 'Telaraña',
    'isAlive': true
  };
  
  final ironman = Hero(
    isAlive: false,
    name: 'Tony Stark',
    power: 'Money'
  );
  
  final spidermanJSON = Hero.fromJson(rawJson);
  
  print(spidermanJSON);
  print(ironman);
}


class Hero {
  String name;
  String power;
  bool isAlive;
  
  Hero({required this.name, required this.power, required this.isAlive});
  
  
  Hero.fromJson(Map<String, dynamic> json)
    : name = json['name'] ?? 'No name found',
      power = json['power'] ?? 'No power found',
      isAlive = json['isAlive'] ?? 'No isAlive found';
  
  
  @override
  String toString(){
    return '$name, $power, isAlive: ${isAlive ? 'Yes': 'Nope'}';
  }
  
  
  
  
}