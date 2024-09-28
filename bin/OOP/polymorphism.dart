/*
  Polymorphism: A fundamental concept in Object-Oriented Programming (OOP).
  
  Purpose: Allows objects from different classes to be treated as instances of a common superclass.
  -> while we use the polymorphism concept then the @override concept come automatically. 
  
  Types of Polymorphism:
    - Compile-Time Polymorphism: Achieved through method overloading (resolved during compilation).
    - Run-Time Polymorphism: Achieved through method overriding (resolved during program execution).

  Key Concepts:
    - **Method Overriding**: Subclasses can provide their specific implementations of methods defined in the superclass.
    - **Dynamic Binding**: The decision of which method to invoke is made at runtime based on the actual object type, not the reference type.
  
  Summary:
    - Compile Time: Method Overloading
    - Run Time: Method Overriding
*/

// Superclass representing a generic Animal
class Animal {
  // Method that can be overridden by subclasses
  void animalSounds() {
    print('Animals make sounds');
  }
}

// Subclass Dog that inherits from Animal
class Dog extends Animal {
  // Overriding the animalSounds method
  @override
  void animalSounds() {
    print('Dog Barks!!');
  }
}

// Subclass Cat that inherits from Animal
class Cat extends Animal {
  // Overriding the animalSounds method
  @override
  void animalSounds() {
    print('Cat Meows!!');
  }
}

// Subclass Cow that inherits from Animal
class Cow extends Animal {
  // Overriding the animalSounds method
  @override
  void animalSounds() {
    print('Cow Moos!!');
  }

  /*
   * If we want to pass a parameter, we should remove the @override annotation,
   * as the method signature will differ from the superclass method.
   * Without @override, this method is treated as its own unique method in the Cow class.
   */
  // Uncommenting the following method will cause a compilation error if @override is present
  /*
  void animalSounds(String sound) {
    print('Cow Moos: $sound');
  }
  */
}

void main() {
  // Creating a list of Animal references that hold different animal objects
  List<Animal> animals = [
    Dog(), // Dog object
    Cat(), // Cat object
    Cow()  // Cow object
  ];

  // Loop through each animal in the list and call the animalSounds method
  for (var animal in animals) {
    animal.animalSounds(); // Demonstrating run-time polymorphism
  }
}
