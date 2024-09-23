/*
  Encapsulation: Hides the internal state of an object and only exposes necessary methods to interact with it.

  Key points:
  - Private variables: We make variables private by using an underscore (_). This restricts direct access from outside the class.
  - Getter: Allows read access to a private field. It's a public method created to "get" the value of the private variable.
  - Setter: Allows controlled write access to a private field. It's a public method created to "set" or modify the value of the private variable.
  - Even though getters and setters are public methods, they provide controlled access to private variables.

  Note:
  - Methods like depositMoney and withdrawMoney can directly access the private _balance because they are within the same class.
  - External code (outside the class) must use the getter and setter to interact with _balance, maintaining encapsulation.
*/

class BankAccount {
  // Private property _balance: It can only be accessed within this class.
  double _balance;

  // Constructor to initialize the account balance (still private)
  BankAccount(this._balance);

  // Getter: Used to access the private _balance value from outside the class.
  double get balance {
    return _balance; // This is a public method that gives read-only access to _balance.
  }

  // Setter: Used to update the private _balance value with validation.
  set balance(double amount) {
    if (amount > 0) {
      _balance = amount; // This public method allows controlled access to modify _balance.
    } else {
      print('Balance can\'t be negative');
    }
  }

  // Method to deposit money into the account.
  void depositMoney(double amount) {
    if (amount > 0) {
      _balance += amount; // Directly modifying the private _balance within the class.
      print('Deposited: \$${amount}, New Balance: \$$_balance');
    } else {
      print('Deposit amount must be greater than zero');
    }
  }

  // Method to withdraw money from the account.
  void withdrawMoney(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount; // Directly modifying the private _balance within the class.
      print('Withdrew: \$${amount}, Remaining Balance: \$$_balance');
    } else if (amount > _balance) {
      print('Insufficient balance for withdrawal');
    } else {
      print('Withdrawal amount must be greater than zero');
    }
  }
}

void main() {
  // Create a BankAccount with an initial balance of 1000
  BankAccount myAccount = BankAccount(1000);

  // Deposit money using the method (directly modifies the private _balance within the class)
  myAccount.depositMoney(300);

  // Withdraw money using the method (modifies the private _balance within the class)
  myAccount.withdrawMoney(150);

  // Accessing balance using the getter (reads the private _balance)
  print('Final Balance: \$${myAccount.balance}');

  // Using the setter to update the balance with validation
  myAccount.balance = 2000; // The setter allows us to update the private _balance
  print('Updated Balance via Setter: \$${myAccount.balance}'); // Using getter to read the updated balance

  // Uncommenting this line would cause an error, because _balance is private:
  // print(myAccount._balance); // Error: _balance is not accessible outside the class due to encapsulation.

  // Without the getter method, trying to access _balance directly would give an error.
  // The getter provides a controlled way to access the private variable.

  // Without the setter, we wouldn’t be able to modify the balance directly either.
  // The setter allows controlled modification of the private variable with validation.
}
