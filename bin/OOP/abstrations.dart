/*
  Abstraction in Object-Oriented Programming (OOP):
  
  - Purpose: To reduce complexity and increase efficiency by hiding unnecessary details 
    and only exposing essential parts of an object.
    
  - Think of abstraction as a way to simplify interactions with complex systems.
    Example: Driving a car without needing to know how the engine works.

  Benefits of Abstraction:
  - **Reduce Complexity**: Simplifies code by hiding implementation details.
  - **Increased Reusability**: Abstract classes can be reused across different parts of applications.
  - **Enhanced Maintainability**: Changes in implementation can be made without affecting other parts of the system.

  Key Concept:
  - Users of your classes interact with methods and properties without needing to understand their inner workings.

  Real-life Example:
  - When you use a smartphone, you interact with apps through a user interface without needing to know the code that runs them.
*/

// Abstract class representing a generic Vehicle
abstract class Vehicle {
  // Abstract methods that must be implemented by subclasses
  void start(); // Start the vehicle
  void stop();  // Stop the vehicle
  void speed(); // Get the current speed of the vehicle
  void fuelCapacity(); // Check the fuel capacity
}

// Abstract class that extends Vehicle, for all motorized vehicles
abstract class MotorizedVehicle extends Vehicle {
  String key; // Key status (e.g., if the vehicle can start)
  String breaking; // Breaking system status
  int limit; // Speed limit
  int fuel; // Current fuel level

  // Constructor to initialize MotorizedVehicle properties
  MotorizedVehicle(this.key, this.limit, this.fuel, this.breaking);

  // Implementation of the start method
  @override
  void start() {
    // Check if the key is inserted to start the vehicle
    if (key.toLowerCase() == 'yes') {
      print('${this.runtimeType} Started ... \n'); // Display vehicle type and start message
    } else {
      print('No key is inserted.'); // Error message if no key is present
    }
  }

  // Implementation of the stop method
  @override
  void stop() {
    // Check if the vehicle is in neutral before stopping
    if (breaking.toLowerCase() == 'neutral') {
      print('Your ${this.runtimeType} is stopped! Please pull out the key.'); // Stop message
    } else {
      print('${this.runtimeType} is not in neutral, you can’t stop the vehicle.'); // Error message
    }
  }

  // Implementation of the fuelCapacity method
  @override
  void fuelCapacity() {
    // Check fuel levels and display appropriate messages
    if (fuel == getMaxFuelCapacity()) {
      print('Fuel is maximum: ${fuel}L level'); // Max fuel message
    } else if (fuel < getMaxFuelCapacity() && fuel > 20) {
      print('Your fuel is on average condition. Current fuel: ${fuel}L'); // Average fuel message
    } else {
      print('Insufficient fuel: ${fuel}L'); // Low fuel message
    }
  }

  // Abstract method to define maximum fuel capacity for each specific vehicle
  int getMaxFuelCapacity();
}

// Car class that extends MotorizedVehicle
class Car extends MotorizedVehicle {
  // Constructor for Car class
  Car(String key, int limit, int fuel, String breaking)
      : super(key, limit, fuel, breaking);

  // Implementation of the speed method specific to Car
  @override
  void speed() {
    // Check the speed limit and display messages accordingly
    if (limit >= 100) {
      print('Your car speed is at ${limit}. Please decrease the speed.'); // Over speed message
    } else if (limit > 20 && limit < 100) {
      print('Your car speed is ${limit}. It’s good.'); // Safe speed message
    } else {
      print('💥 | Accident'); // Accident message
    }
  }

  // Implementation of the getMaxFuelCapacity for Car
  @override
  int getMaxFuelCapacity() => 100; // Max fuel capacity for Car
}

// Truck class that extends MotorizedVehicle
class Truck extends MotorizedVehicle {
  // Constructor for Truck class
  Truck(String key, int limit, int fuel, String breaking)
      : super(key, limit, fuel, breaking);

  // Implementation of the speed method specific to Truck
  @override
  void speed() {
    // Check the speed limit and display messages accordingly
    if (limit >= 150) {
      print('Your truck speed is at ${limit}. Please decrease the speed.'); // Over speed message
    } else if (limit > 20 && limit < 150) {
      print('Your truck speed is ${limit}. It’s good.'); // Safe speed message
    } else {
      print('💥 | Accident'); // Accident message
    }
  }

  // Implementation of the getMaxFuelCapacity for Truck
  @override
  int getMaxFuelCapacity() => 500; // Max fuel capacity for Truck
}

// Motorcycle class that extends MotorizedVehicle
class MotorCycle extends MotorizedVehicle {
  // Constructor for Motorcycle class
  MotorCycle(String key, int limit, int fuel, String breaking)
      : super(key, limit, fuel, breaking);

  // Implementation of the speed method specific to Motorcycle
  @override
  void speed() {
    // Check the speed limit and display messages accordingly
    if (limit >= 150) {
      print('Your motorcycle speed is at ${limit}. Please decrease the speed.'); // Over speed message
    } else if (limit > 20 && limit < 150) {
      print('Your motorcycle speed is ${limit}. It’s good.'); // Safe speed message
    } else {
      print('💥 | Accident'); // Accident message
    }
  }

  // Implementation of the getMaxFuelCapacity for Motorcycle
  @override
  int getMaxFuelCapacity() => 50; // Max fuel capacity for Motorcycle
}

// Main function to test the implementation
void main() {
  // Creating instances of each vehicle type
  Vehicle car = Car('Yes', 45, 40, 'not'); // Car object
  Vehicle truck = Truck('Yes', 130, 40, 'neutral'); // Truck object
  Vehicle motorcycle = MotorCycle('Yes', 130, 40, 'neutral'); // Motorcycle object

  // Starting the vehicles
  car.start();
  truck.start();
  motorcycle.start();

  // Displaying speed of each vehicle
  car.speed();
  truck.speed();
  motorcycle.speed();

  // Checking fuel capacity for each vehicle
  car.fuelCapacity();
  truck.fuelCapacity();
  motorcycle.fuelCapacity();

  // Stopping the vehicles
  car.stop();
  truck.stop();
  motorcycle.stop();
}
