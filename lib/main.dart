import 'dart:collection';

import 'package:flutter/material.dart';

void main() {
  // runApp(const MyApp());
  

  // Exercice1: Manipulation d'une list 

  // a- Listes de chaines de caractères 
  List<String> marques = ['Ford', 'Mercedes', 'Fiat', 'Peugeout', 'Renault'];
  print(marques);
  print(marques.length);
  print(marques[0]);

  // b- Listes de nombres 
  List<int> ages = [25, 30, 35, 40, 45, 50];
  print(ages);
  print(ages.length);
  print(ages[0]);

  //c- Listes de booleens
  List<bool> estVivants = [true, false, true, false, true];
  print(estVivants);
  print(estVivants.length);
  print(estVivants[0]);

  //d- Listes de listes 
  List<List<int>> agesParMarque = [
    [25, 30, 35, 40, 45, 50],
    [10, 20, 30, 40, 50, 60],
    [5, 10, 15, 20, 25, 30],
  ];
  print(agesParMarque);
  print(agesParMarque.length);
  print(agesParMarque[0]);

  //e- Listes de listes de chaines de caractères
  List<List<String>> marquesParAge = [
    ['Ford', 'Mercedes', 'Fiat', 'Peugeout', 'Renault'],
    ['Renault', 'Fiat', 'Peugeout', 'Ford', 'Mercedes'],];
  print(marquesParAge);
  print(marquesParAge.length);
  print(marquesParAge[0]);

  //f- Listes de listes de booleens
  List<List<bool>> estVivantsParAge = [
    [true, false, true, false, true],
    [false, true, false, true, false],
    [true, false, true, false, true],
  ];
  print(estVivantsParAge);
  print(estVivantsParAge.length);
  print(estVivantsParAge[0]);

  //g- Listes dynamiques
  List<dynamic> dynamicList = [
    'Hello',
    25,
    true,
    ['Ford', 'Mercedes', 'Fiat', 'Peugeout', 'Renault'],
    [25, 30, 35, 40, 45, 50],
    [true, false, true, false, true],
    ['Hello', 25, true, ['Ford', 'Mercedes', 'Fiat', 'Peugeout', 'Renault'], [25, 30, 35, 40, 45, 50], [true, false, true, false, true]],
  ];
  print(dynamicList);
  print(dynamicList.length);
  print(dynamicList[0]);


  //Exercice 2 Utilisation des Set
  //a- Set de chaines de caractères
  Set<String> villes = {'Paris', 'Londres', 'New York', 'Berlin', 'Tokyo'};
  print(villes);
  print(villes.length);
  print(villes.contains('Paris'));
  villes.add("Paris");
  villes.add("Rio de Janeiro");
  print(villes);
  print(villes.length);
  villes.remove("Londres");
  print(villes);
  print(villes.length);
  List<String> villesList = villes.toList();
  villesList.sort();
  print(villesList);
  print(villesList.length);

  if (villes.contains("Tokyo")) {
    print("Tokyo est dans la liste");    
  } else {
    print("Tokyo n'est pas dans la liste");
  }

  //b- Set de nombres
  Set<int> notes = {10, 15, 20, 25, 30, 35, 40, 45, 50};
  print(notes);
  print(notes.length);
  print(notes.contains(25));
  notes.add(25);
  notes.add(55);
  print(notes);
  print(notes.length);
  notes.remove(10);
  print(notes);
  print(notes.length);
  List<int> notesList = notes.toList();
  notesList.sort();
  print(notesList);
  print(notesList.length);



  //Exercice 3: Utilisation des Maps
  Map<String, int> studentsNote = {
    "Alice": 10,
    "Bob": 15,
    "David": 25,
    "Eve": 30,
  };
  print(studentsNote);
  print(studentsNote.length);
  print(studentsNote["Alice"]);
  studentsNote["Alice"] = 16;
  print(studentsNote);
  print(studentsNote.length);
  studentsNote.remove("Bob");
  print(studentsNote);
  print(studentsNote.length);
  studentsNote["Charlie"]= 18; 
  // equivalent a studentsNote
  //["Charlie"] = 18;
  print(studentsNote);
  print(studentsNote.length);
  List<String> studentsList = studentsNote.keys.toList();
  studentsList.sort();
  print(studentsList);
  print(studentsList.length);
  List<int> notesList2 = studentsNote.values.toList();
  notesList2.sort();
  print(notesList2);
  print(notesList2.length);



//Exercice4: Simulation d'un système de file d'attente avec une Queue

Queue<String> myQueue = Queue<String>();
myQueue.add("Alice");
myQueue.add("Bob");
myQueue.add("Charlie");
myQueue.add("David");
myQueue.add("Eva");
print(myQueue);
print(myQueue.length);

myQueue.remove("Bob");
myQueue.remove("David");
print(myQueue);
print(myQueue.length);

List<Person> people = [
  Person("Alice", 25),
  Person("Bob", 30),
  Person("Charlie", 28),
  Person("David", 32),
  Person("Eva", 27),
];
print(people);
print(people.length);

people.sort((a, b)=>a.age-b.age);
print(people);
print(people.length);



//Exercice 6: Filtrage d'une list avec where 

List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10,11,12,13,14,15,16,17,18,19,20];
List<int> evenNumbers = numbers.where((num) => num % 2 == 0).toList();
print(evenNumbers);
print(evenNumbers.length);

List<int> oddNumbers = numbers.where((num) => num % 2!= 0).toList();
print(oddNumbers);
print(oddNumbers.length);



//Exercice 7: union et intersection de set

Set<int> set1 = {1, 3, 5, 7, 9};
Set<int> set2 = {5, 6, 7, 8, 9};
Set<int> unionSet = set1.union(set2);
print(unionSet);
print(unionSet.length);
Set<int> intersectionSet = set1.intersection(set2);
print(intersectionSet);
}

//Exercice 5: Tri d'une list d'objets

class Person {
  String name;
  int age;

  Person(this.name, this.age);

  @override
  String toString() {
    // return 'Person{name: $name, age: $age}';
    return '$name ($age ans)';
  }
}

