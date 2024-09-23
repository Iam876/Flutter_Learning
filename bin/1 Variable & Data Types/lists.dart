void main() {
  /* 
   * Lists: A List is an ordered collection, meaning it stores data in the order defined.
   * It is similar to arrays in other programming languages like Java or JavaScript.
   * A List can store mixed or different data types.
   */

  List<int> numbers = [1, 2, 3, 4, 5];
  List<int> data = [10, 11, 12, 13];
  List<dynamic> mixed = [1, "ibrahim"];

  print('Number List: ${numbers}'); // Shows all data inside the list.
  print('Index of first element: ${numbers[0]}'); // Gets value from index 0.

  print('Adding & Removing List elements');
  numbers.add(6); // Adds 6 to the numbers list.
  mixed.addAll(numbers); // Adds all elements from numbers to mixed.
  mixed.add("Bangladesh"); // Adds "Bangladesh" to mixed.

  // Reassigning the first element in mixed.
  mixed[0] = "Hello";

  // Removing specific elements from mixed.
  mixed.removeAt(1); // Removes the second element ("ibrahim").
  mixed.remove(1); // Removes the first occurrence of 1.
  mixed.removeLast(); // Removes the last element ("Bangladesh").
  mixed.removeRange(1, 6); // Removes elements from index 1 to 5 (from numbers).
  mixed.add(data); // Adds the entire data list to mixed.

  mixed.removeWhere((element) => element is List);
  // Remove any nested lists from mixed.
  print(mixed); // Prints the mixed list after modifications.

  List<dynamic> fruits = [
    'apple',
    'mango',
    'banana',
    'apple',
    'cucumber',
    'banana'
  ];
  mixed.addAll(fruits);
  print('Length of the List : ${mixed.length}'); // Length of the list
  print("Showing each element of numbers:");
  
  for (var number in numbers) {
    print(number);
  }

  print('Showing each element of mixed list, including any nested lists:');
  for (var mix in mixed) {
    print(mix);

    // Check if mix is a List and iterate through it.
    if (mix is List) {
      for (var nestedList in mix) {
        print(nestedList);
      }
    }
  }
}
