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


const Pet(
this.id,
this.name,
this.species,
this.age,
this.weight,
this.height,
this.isFemale,

);
}