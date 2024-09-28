class ShoppingCart {
  // Private properties
  double _totalPrice = 0;  // Initialize with 0
  List<String> _items = []; // Initialize with an empty list

  // Constructor
  ShoppingCart(this._items, this._totalPrice);

  // Getter for totalPrice
  double get totalPrice {
    return _totalPrice;
  }


  // Setter for totalPrice with validation
  set totalPrice(double price) {
    if (price > 0) {
      _totalPrice = price;
    } else {
      print('Sorry, Price of the Item $price can\'t be 0 or negative');
    }
  }

  // Method to add an item to the cart
  void addItem(String item, double price) {
    if (item.isEmpty) {
      print('Item name cannot be empty.');
      return; // Exit the method if the item is empty
    }

    _items.add(item);
    _totalPrice += price;
    print('Added Product: $item, New Total Price: ${totalPrice} ');
  }

  // Method to remove an item from the cart
  void removeItem(String item, double price) {
    if (_items.contains(item)) {
      _items.remove(item);
      _totalPrice -= price;
      print('Removed Product: $item, New Total Price: $_totalPrice');
    } else {
      print('Item $item not found in the cart.');
    }
  }

  // Method to list items in the cart
  void listItems() {
    
    print('Items in the cart: $_items & Total Price: $totalPrice and total items are : ${_items.length}');
  }
}


