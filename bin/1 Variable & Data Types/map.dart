void main() {
  /*
  Maps: A map is a key-value pair, used to assign a value to a specific key.
  -> We can change the value of the key.
  -> A key is unique; no duplicate keys can be assigned.
  -> We can create a Map in two ways:
      1) Using the Map constructor.
      2) Using key-value pairs.
  */

  // Using Map Constructor
  var vegetable = Map<String, String>();
  vegetable['tomato'] = 'red';  // Fixed typo
  vegetable['potato'] = 'russet';

  var car = Map<String, String>();
  car['car1'] = "Toyota";
  car['car2'] = "BMW";
  car['car3'] = "Tesla";

  var balance = Map<String, int>();
  balance['k1'] = 10;
  balance['k2'] = 20;
  balance['k3'] = 200;

  print('Vegetable Map: $vegetable');
  print('Car Map: $car');
  print('Balance Map: $balance\n\n');

  // Using Key-value pairs
  var fruits = {
    'apple': 'red',
    'mango': 'yellow',
    'banana': 'yellow',
    'orange': 'orange',
  };

  print('Fruits Map: $fruits\n\n');

  // Adding & Updating values
  fruits['mango'] = "green"; // Updating values of a key
  fruits['cucumber'] = "green"; // Adding a new key-value
  fruits['grapes'] = "green"; // Adding a new key-value
  fruits['dragon fruit'] = "red"; // Adding a new key-value
  fruits['kiwi'] = ''; // Empty value

  print(fruits);
  print('\n\n');

  // Accessing value
  print('Accessing value of apple: ${fruits['apple']}\n\n');

  // Removing entries
  print(fruits.remove('dragon fruit')); // Removes and shows the value
  print(fruits.remove('apple')); // Removes and shows the value
  print(fruits);

  // Checking keys or values
  print(fruits.containsKey('mango')); // true
  print(fruits.containsValue('orange')); // true
  print(fruits.containsKey('kiwi')); // true
  print(fruits.containsValue('chocolate')); // false

  print('\n\n');
  print('Length of fruits: ${fruits.length}\n\n');

  // Iterating over the Map's keys or values
  for (var key in fruits.keys) {
    print('Printing keys only: $key');
  }
  
  print('\n\n');

  for (var value in fruits.values) {
    if (value.isNotEmpty) {
      print('Printing values: $value');
    }
  }

  print('\n\n');

  for (var entry in fruits.entries) {
    if (entry.value.isNotEmpty) {
      print('${entry.key} = ${entry.value}');
    }
  }
}
