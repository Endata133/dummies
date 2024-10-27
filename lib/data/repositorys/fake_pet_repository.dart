import 'package:for_idiots/data/models/pet.dart';
import 'package:collection/collection.dart';


class FakePetRepository {
  final List<Pet> _pets = [
const Pet('1','Pummel', Species.fish, 3, 200, 20, true),
const Pet('1', 'Max', Species.dog, 5, 30, 50, false),
const Pet('2', 'Bella', Species.cat, 3, 4, 25, true),
const Pet('3', 'Kiki', Species.bird, 2, 0.5, 10, true),
const Pet('4', 'Goldie', Species.fish, 1, 0.2, 4, true),
const Pet('5', 'Nala', Species.cat, 2, 3.5, 22, true),
const Pet('6', 'Buddy', Species.dog, 6, 28, 48, false),
const Pet('7', 'Sky', Species.bird, 4, 0.6, 15, false),
const Pet('8', 'Milo', Species.fish, 2, 0.3, 5, false),
const Pet('9', 'Luna', Species.cat, 1, 3, 24, true),
const Pet('10', 'Charlie', Species.dog, 7, 32, 52, false),
  ];

  FakePetRepository();

  void addPet(Pet pet){
    _pets.add(pet);
  }
  void updatePet(Pet pet){
  final index = _pets.indexWhere((element) => element.id == pet.id,
  );
  if(index != -1){
    _pets[index] = pet;

  }
  }
  Pet? getPetsById(String id){
    return _pets.firstWhereOrNull(
      (petElement) => petElement.id == id,
    );
  }
   List<Pet> getAllPets(){
    _sortPetsByName();
    return _pets;
   }

   void deletePetById(String id){
    _pets.removeWhere((pet) => pet.id == id);
   }

   void _sortPetsByName(){
    _pets.sort(
      (pet1, pet2) => pet1.name.compareTo(pet2.name)
    );
   }

static String makeACoolPetName(
  String nameILike, Species species,
){
String coolName = '$nameILike the ${species.name}';
return coolName;

}

}