void main() {
  /*
   * SET: A set eliminates duplicate data and does not maintain any specific order.
   * -> You cannot access Set elements by index, unlike a List.
   * -> You can create a Set using curly braces `{}` or the Set constructor.
   * -> Set stores only unique values, no key-value pairs like a Map.
   * -> You can add elements to a Set using the `add()` or `addAll()` method.
   */

  // Using Constructor to create an empty Set of Strings
  var vegetable = Set<String>();

  // Creating a list of vegetable icons with duplicates
  var vegtIcon = ['🍅', '🍅', '🍄', '🍄', '🥦', '🥒', '🌽', '🥕', '🥑'];

  // Adding single elements to the set
  vegetable.add('potato');
  vegetable.add('tomatoo');  // Notice the typo 'tomatoo'

  // Adding all elements from the list to the set (duplicates will be removed)
  vegetable.addAll(vegtIcon);

  // Printing the set (it will not print duplicates, and order is not guaranteed)
  print(vegetable);

  // Creating a list and set of fruits with some duplicates
  var fruit1 = ["Banana", "Orange", "Apple", "Mango"];
  var fruits = {'Banana', 'apple', 'Apple', 'Kiwi'};  // Notice the case difference for 'apple'

  // Adding all elements from the list to the set
  fruits.addAll(fruit1);

  // Using reduce to combine all elements into a single string
  // Explanation: reduce() takes each element and combines it with the previous result (value)
  // In this case, it concatenates each fruit with a comma to create a list of fruit names.
  var result = fruits.reduce((value, element) => value + ',' + element);

  print('Fruit Names Are: $result');  // Output the combined fruit names
  print(fruits.contains('apple'));  // Case-sensitive, checks if 'apple' exists
  print(fruits.contains('mango'));  // This will be false because of case sensitivity

  // Printing the entire set of fruits
  print(fruits);

  // Looping through the set and printing each fruit
  for (var element in fruits) {
    print(element);
  }

  // Removing all elements in fruit1 from the set 'fruits'
  fruits.removeAll(fruit1);

  // Removing a specific element from the set
  fruits.remove('apple');  // This will remove the lowercase 'apple'

  // Printing the final set after removals
  print(fruits);
}
