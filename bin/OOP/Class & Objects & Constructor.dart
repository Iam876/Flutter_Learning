/*
  Class: 
    - A class is a blueprint for creating objects.
    - It contains fields (variables) and methods (functions) to define the properties and behavior of the objects.

  Object: 
    - An object is an instance of a class.
    - You create an object to use the class's defined fields and methods.
    - Objects hold specific data and can perform tasks defined by the class.

  Constructor:
    - A constructor initializes an object when it's created.
    - It assigns values to the fields of the class directly.
    - There are two types of constructors:
      1. Default/Unnamed Constructor (can only have one per class)
      2. Named Constructor (you can have multiple in a class)
*/

// Defining a simple class

class Person {
  String? name;
  int? age;

  // Method to introduce the person
  void selfIntro() {
    print('My name is $name and my age is $age years');
  }
}

class Fruit {
  String? fruitsName;
  double? fruitsPrice;
  DateTime? expiryDate;

  // Default/Unnamed Constructor 1 (Traditional)
  /*
    This constructor explicitly assigns the values to the fields.
    It uses the "this" keyword to refer to the class's fields.
  */
  // Fruit(fruitsName, fruitsPrice, expiryDate) {
  //   this.fruitsName = fruitsName;
  //   this.fruitsPrice = fruitsPrice;
  //   this.expiryDate = expiryDate;
  // }

  // Default/Unnamed Constructor 2 (Shorthand)
  /*
    Both constructor 1 and 2 are functionally the same.
    This is the shorthand version, where Dart automatically assigns the parameters to fields.
    NOTE: You can only have ONE unnamed constructor in a class.
  */
  Fruit(this.fruitsName, this.fruitsPrice, this.expiryDate);

  /*
    Named Constructor: 
      - Named constructors allow you to create multiple ways to initialize an object.
      - Syntax: ClassName.constructorName(parameters){ body }
      - Example: Fruit.fruitWithoutExpiryDate() is a named constructor here.
  */
  Fruit.fruitWithoutExpiryDate(this.fruitsName, this.fruitsPrice) {
    // Assigning a default expiry date to avoid null values.
    expiryDate = DateTime(9999, 12, 12);
  }

  // Method to display fruit details
  void displayFruits() {
    print('''
    Fruit Name: $fruitsName
    Fruit Price: $fruitsPrice
    Expiry Date: $expiryDate
    ''');
  }
}

void main() {
  // Creating Person objects
  Person person1 = Person();
  Person person2 = Person();

  // Assigning values to the fields of person1 and person2
  person1.name = "Ibrahim";
  person1.age = 25;
  person1.selfIntro(); // Output: My name is Ibrahim and my age is 25 years

  person2.name = "Santo";
  person2.age = 25;
  person2.selfIntro(); // Output: My name is Santo and my age is 25 years

  // Creating a Fruit object using the default constructor
  Fruit fruit1 = Fruit('Apple', 450.50, DateTime.now());
  fruit1.displayFruits();

  // Creating a Fruit object using the named constructor (without expiry date)
  Fruit fruit2 = Fruit.fruitWithoutExpiryDate('Banana', 280.90);
  fruit2.displayFruits();
}
