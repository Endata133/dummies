import 'package:for_idiots/data/models/pet.dart';
import 'package:collection/collection.dart';


class FakePetRepository {
final List<Pet> _pets = [
  const Pet(
    id: '1',
    name: 'Pummel',
    species: Species.fish,
    age: 3,
    weight: 200,
    height: 20,
    isFemale: true,
  ),
  const Pet(
    id: '1',
    name: 'Max',
    species: Species.dog,
    age: 5,
    weight: 30,
    height: 50,
    isFemale: false,
  ),
  const Pet(
    id: '2',
    name: 'Bella',
    species: Species.cat,
    age: 3,
    weight: 4,
    height: 25,
    isFemale: true,
  ),
  const Pet(
    id: '3',
    name: 'Kiki',
    species: Species.bird,
    age: 2,
    weight: 0.5,
    height: 10,
    isFemale: true,
  ),
  const Pet(
    id: '4',
    name: 'Goldie',
    species: Species.fish,
    age: 1,
    weight: 0.2,
    height: 4,
    isFemale: true,
  ),
  const Pet(
    id: '5',
    name: 'Nala',
    species: Species.cat,
    age: 2,
    weight: 3.5,
    height: 22,
    isFemale: true,
  ),
  const Pet(
    id: '6',
    name: 'Buddy',
    species: Species.dog,
    age: 6,
    weight: 28,
    height: 48,
    isFemale: false,
  ),
  const Pet(
    id: '7',
    name: 'Sky',
    species: Species.bird,
    age: 4,
    weight: 0.6,
    height: 15,
    isFemale: false,
  ),
  const Pet(
    id: '8',
    name: 'Milo',
    species: Species.fish,
    age: 2,
    weight: 0.3,
    height: 5,
    isFemale: false,
  ),
  const Pet(
    id: '9',
    name: 'Luna',
    species: Species.cat,
    age: 1,
    weight: 3,
    height: 24,
    isFemale: true,
  ),
  const Pet(
    id: '10',
    name: 'Charlie',
    species: Species.dog,
    age: 7,
    weight: 32,
    height: 52,
    isFemale: false,
  ),
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
String nameILike, {
  String? titleOfNobility,
  required Species species,
  String coolAdjective = 'Gaangstaaa',
}) {
titleOfNobility = titleOfNobility ?? '';
String coolName = '$titleOfNobility $nameILike the $coolAdjective ${species.name}';
return coolName; 

}

final coolPetName = FakePetRepository.makeACoolPetName('Dieter',
titleOfNobility: 'Herr',
coolAdjective: 'ficker',
 species: Species.fish);

}