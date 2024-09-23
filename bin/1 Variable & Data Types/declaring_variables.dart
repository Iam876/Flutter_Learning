void main() {
  // Variable Declaration + Data Types

  // Using Var: Auto detects the data types
  var firstName = 'Md Ibrahim Khalil';
  var age = 24;

  // Specifying Data Types
  String cityName = "Dhaka";
  int year = 2024;
  double weight = 65.5;
  bool isStudent = year == 2024; // Returns either true or false

  // Dynamic allows changing types
  dynamic friend = "Santo";

  // Using Final: Can only be set once, but set at runtime
  final deathYear = DateTime.now().year; // Dynamically calculated
  final birthYear = 1999; // This will not change

  // Constant: Value is fixed at compile time
  const PI = 3.1416;

  // Output
  print('Name : $firstName');
  print('Age : $age');
  print('City Name : $cityName');
  print('Year : $year');
  print('Weight : $weight');
  print('Death Year : $deathYear');
  print('Birth Year : $birthYear');
  print('Constant : $PI');
  print('Boolean : $isStudent');
  print('Dynamic : $friend');

  // Var vs Dynamic
  var car = "Toyota";
  print('Car : $car');
  car = "BMW"; // Allowed, same type
  // car = 24; // Error, changing type is not allowed with var

  dynamic food = "Rice";
  food = 24;  // Allowed, dynamic can change type
  food = DateTime.now().year;
  print('Food : $food');

  // Late Keyword: Declaring a variable to be initialized later
  late String country;
  late int graduationYear;
  late var enrollYear;

  country = "Bangladesh";
  graduationYear = 2024;
  enrollYear = 2020;

  print('Country : $country');
  print('Graduation Year : $graduationYear');
  print('Enroll Year : $enrollYear');

  // Null Safety
  String journey = "I love to travel";
  // journey = null; // Error, non-nullable by default

  String? jobType = 'App Developer'; // Nullable type
  print(jobType);
  jobType = null;  // Allowed
  print(jobType);

  // Variable Scope
  {
    var y = 20;
    void addTwoNumbers() {
      var x = 10;
      var sum = x + y;  // 'y' is accessible within the block
      print(sum);
    }
    addTwoNumbers();
  }

  // Global Scope
  var num1 = 100;
  var num2 = 1000;
  {
    void addNumbers() {
      print(num1 + num2);  // Global variables accessible here
    }
    addNumbers();
  }
}
