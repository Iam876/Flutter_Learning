

/*
  Inheritance Overview:
  - Inheritance is a concept where a class (subclass/child class) inherits properties and methods from another class (superclass/parent class).
  - The inherited class is known as the Parent/Superclass.
  - The class that inherits is known as the Child/Subclass.
  - To inherit a class, use the 'extends' keyword.
*/
// Superclass
class Vehicle {
  String? brand; // Property for vehicle brand
  int? year; // Property for vehicle year

  // Constructor
  Vehicle(this.brand, this.year);

  // Method to display vehicle information
  void displayVehicleInfo() {
    print('Brand: $brand'); // Displays the brand
    print('Year: $year'); // Displays the year
  }
}

// Child/Subclass
class Car extends Vehicle {
  String? model; // Property specific to the Car class

  // Constructor
  Car(String brand, int year, this.model) : super(brand, year); // Call to the superclass constructor

  // Method to display information specific to Car
  void displayCarInfo() {
    displayVehicleInfo(); // Invokes the parent class method
    print('Model: $model'); // Displays the car model
  }
}

void main() {
  // Creating an instance of the Car subclass
  Car car1 = Car('Toyota', 1999, 'AB0056');
  car1.displayCarInfo(); // Displaying information for car1
}


