import 'encapPrivateCart.dart';

void main() {
  // Create a ShoppingCart object
  ShoppingCart cart1 = ShoppingCart([], 0);

  // Add items to the cart
  cart1.addItem('iPhone 16', 160000);
  cart1.addItem('AirPods', 20000);
  cart1.addItem('Apple Watch', 10000);
  cart1.addItem('Apple Charger', 5000);
  cart1.listItems();

  // Remove an item from the cart
  cart1.removeItem('AirPods', 20000);
  
  // Attempt to set the totalPrice directly (should be avoided)
  // cart1._totalPrice = 5000; // Uncommenting this will cause an error due to encapsulation

  // Use the setter to update the total price
  cart1.totalPrice = -5000; // This will not update _totalPrice since it violates the condition in setter
  cart1.listItems();
}