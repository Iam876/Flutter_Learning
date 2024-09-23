void main() {
  print("########### if-else if-elseif-else #############");

  {
    // Check if a person is a child, teen, adult, or old
    void age(int ageInt) {
      if (ageInt < 12) {
        print('Child');
      } else if (ageInt >= 12 && ageInt <= 17) {
        print('Teen');
      } else if (ageInt > 17 && ageInt <= 40) {
        print("Adult");
      } else {
        print("Old Man");
      }
    }

    // Call the function for testing
    // age(5);
  }

  print("########### Switch #############");

  {
    void weekOfDays(int days) {
      switch (days) {
        case 1:
          print("Saturday");
          break;
        case 2:
          print("Sunday");
          break;
        case 3:
          print("Monday");
          break;
        case 4:
          print("Tuesday");
          break;
        case 5:
          print("Wednesday");
          break;
        case 6:
          print("Thursday");
          break;
        case 7:
          print("Friday");
          break;
        default:
          print("Enter a value between 1 to 7");
      }
    }

    // Call the function for testing
    weekOfDays(7);
  }

  print("########### Ternary Operator #############");

  int fruitPrice = 100;
  String message = fruitPrice > 50 ? "Expensive fruit" : "Inexpensive fruit";
  print(message);

  print("########### Topic Skips #############");
  print(''' 
  1) Cascade Notation
  ''');
}
