import 'dart:developer';

enum Species { dog, cat, bird, fish}

class Pet {
final String id;
final String name;
final Species species;
final int age;
final double weight;
final double height;
final bool isFemale;


const Pet({
required this.id,
required this.name,
required this.species,
required this.age,
required this.weight,
required this.height,
this.isFemale = true,
}
);
}