void main() {
  print("####### FOR LOOP #########");

  // Count from 1 to 10
  for (int num = 0; num < 10; num++) {
    print(num + 1);
  }

  print("####### FOR-IN LOOP #########");

  String name = "Ibrahim";
  for (var char in name.split('')) {
    print(char);
  }

  print('''
  For-in Notes:
  
  for-in can be used with:
    - List: A collection of ordered elements.
    - Set: A collection of unique elements.
    - Map keys or values: You can loop through the keys or values of a map.
    - String: Since a string is a sequence of characters, you can iterate over its characters.
    - Any Iterable: Any object that implements the Iterable interface.
  ''');

  print("####### WHILE LOOP #########");

  int multiplicationNumber = 10;
  int i = 1;
  while (i <= 10) {
    print('$multiplicationNumber X $i = ${multiplicationNumber * i}');
    i++;
  }

  print("####### WHILE LOOP: ATM Withdrawal System #########");

  double balance = 600.0;
  int withdrawalAmount = 0;

  print('Your current balance is: \$${balance}');
  while (withdrawalAmount <= 0 || withdrawalAmount > balance) {
    print("Please enter your amount");
    withdrawalAmount = 400; // Simulated user input
    if (withdrawalAmount > balance) {
      print("Insufficient balance. Try again.");
      break; // Exit the loop if the amount is too high
    } else if (withdrawalAmount <= 0) {
      print("Invalid amount. Please enter a positive value.");
    }
  }

  balance -= withdrawalAmount;
  print('Remaining balance: \$${balance}');

  print("####### DO-WHILE LOOP #########");

  int num = 1;
  int num2 = 10;
  int limit = 5;  // Number of iterations
  int count = 0;

  do {
    print(num += num2);
    num++;
    count++;
  } while (count < limit);
}
