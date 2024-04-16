// Step 1: Define Classes and Inheritance
class Animal {
  String name;
  Animal(this.name);
  void makeSound() {
    print('Animal makes a sound');
  }
}

class Dog extends Animal {
  Dog(String name) : super(name);
  @override
  void makeSound() {
    print('Dog barks');
  }
}

// Step 2: Implement an Interface
abstract class Printable {
  void printInfo();
}

class Cat extends Animal implements Printable {
  Cat(String name) : super(name);
  @override
  void makeSound() {
    print('Cat meows');
  }

  @override
  void printInfo() {
    print('Name: $name');
  }
}

// Step 3: Override an Inherited Method
class Cow extends Animal {
  Cow(String name) : super(name);
  @override
  void makeSound() {
    print('Cow moos');
  }
}

// Step 4: Initialize an Instance with Data from a File
class Person {
  String name;
  Person(this.name);
}

class People {
  List<Person> people = [];
  void readFromFile(String filename) {
    // Read data from file and initialize people list
  }
}

// Step 5: Demonstrate the Use of a Loop
void printNames(List<Person> people) {
  for (var person in people) {
    print(person.name);
  }
}

void main() {
  var dog = Dog('Buddy');
  dog.makeSound(); // Output: Dog barks

  var cat = Cat('Whiskers');
  cat.makeSound(); // Output: Cat meows
  cat.printInfo(); // Output: Name: Whiskers

  var cow = Cow('Bessie');
  cow.makeSound(); // Output: Cow moos

  var people = People();
  people.readFromFile('people.txt');
  printNames(people.people);
}
