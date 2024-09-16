void main() {
/* 
  Variable Declaration + Data Types
 */

//  Using Var : Auto detect the data types.

  var firstName = 'Md Ibrahim Khalil';
  var age = 24;

// Specifying Data types :
  String cityName = "Dhaka";
  int year = 2024;
  double weight = 65.5;
  bool isStudent = year == 2024; // It will return either true or false

// Dynamic
  dynamic friend = "Santo";

// Using Final :
  final deathYear = DateTime.now()
      .year; // can only be set once, but can be set at runtime. it will change the value on runtime.
  final birthYear = 1999; // but this variable will become unchangable.

// Constant : const variable is known and fixed at compile time—before the program even runs.
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

  print("########## Var VS Dynamic ###########");

/*
 ############### VAR ##############
 -> by declaring var keyword it assume automatically what is the data type.
 -> after declaring a data into it it assumes datatype. we can use same variable to change the data but it should be the same datatype, It can't be another datatype. because on Compile time it will show an error.
 -> It provides Type safety.
 ############### VAR ##############

 */

  var car = "Toyota";
  print('Car : $car');
  car = "BMW";
  print('Car : $car');
// car = 24; // It will show error.
// print('Car : $car');

/*
 ############### DYNAMIC ##############
 -> by declaring DYNAMIC keyword we can use the same variable multiple times,even though we change the .
 datatypes.
 -> 
 ############### DYNAMIC ##############

 */

  dynamic food = "Rice";
  food = 24;
  food = 3.14;
  food = DateTime.now().year;
  print('Food : $food');
// print(food.length);

  print("########## late keyword ###########");

/*
  -> late : The sole purpose is to create a variable to use it later.
  -> we create variables by using late keyword and initialize the data type, and used it later by the variable names only.

*/

  late dynamic country;
  late int graduationYear;
  late var EnrollYear;

  country = "Bangladesh";
  graduationYear = 2024;
  EnrollYear = 2020;

// late
  print('Country : $country');
  print('Graduation Year : $graduationYear');
  print('Enroll Year : $EnrollYear');

  print("########## Mutable VS Immutable ###########");

/*
  Mutable : after initialize or after assigning data into a variable and change the variable data later by calling the variable is know as Mutable.
      -> var,int,double,string,dynamic.

  Immutable : after initialize or after assigning data into a variable and change the variable data later by calling the variable is not. possible. because it will show error.
  -> final,const.

*/
  print("########## Null Safety ###########");

/*
  Null Safety: Dart has null safety, meaning a variable cannot have a null value unless explicitly declared as nullable. By default, variables are non-nullable.
  we can use it with every operator like : String?,int?,var?, ...more.
*/

// -> Without null safety we cant assign variable null. because variables are not nullable in dart. ⬇
  // Non-nullable variable
  String Journey = "I love to do journey";
// Journey = null; // It will not work. It will show an error.
  print(Journey);

  // Nullable variable
  String? JobType = 'App Developer';
  print(JobType);
  JobType = null; // This is allowed
  print(JobType);

  print("########### VARIABLE SCOPE ###########");

  /*
    There are two types of variable scope : 
      1) Local Scope : Declared inside a function or block and can only be accessed within that block.
      2) Global Variables: Declared outside functions and can be accessed anywhere in the file.
   */

  // Local Scope : Using in a block
  {
    var y = 20;
    void addTwoNumber() {
      var x = 10;
      var sum = x + y;
      print(sum);
    }

    // print(x); // it will not work, because 'x' is here a local scope
    addTwoNumber();
  }

  // Global Scope :
  var num1 = 100;
  var num2 = 1000;
  {
    void addnumbers() {
      print(num1 + num2);
    }

    addnumbers(); // we can use the variable from inside a function, but the variable is not in the block. so it's a global scope.
  }
}
