import 'package:flutter/foundation.dart';
import '../models/cart_item.dart';
import '../models/product.dart';

class CartProvider with ChangeNotifier {
  final List<CartItem> _items = [];

  List<CartItem> get items => _items;

  int get itemCount => _items.length;

  double get totalAmount {
    double total = 0.0;
    for (var item in _items) {
      if (item.isSelected) {
        total += item.totalPrice;
      }
    }
    return total;
  }

  int get selectedItemCount {
    return _items.where((item) => item.isSelected).length;
  }

  void addItem(Product product, String color, int size) {
    final existingIndex = _items.indexWhere(
      (item) =>
          item.product.id == product.id &&
          item.selectedColor == color &&
          item.selectedSize == size,
    );

    if (existingIndex >= 0) {
      _items[existingIndex].quantity++;
    } else {
      _items.add(
        CartItem(
          product: product,
          selectedColor: color,
          selectedSize: size,
          quantity: 1,
          isSelected: false,
        ),
      );
    }
    notifyListeners();
  }

  void removeItem(int index) {
    _items.removeAt(index);
    notifyListeners();
  }

  void increaseQuantity(int index) {
    _items[index].quantity++;
    notifyListeners();
  }

  void decreaseQuantity(int index) {
    if (_items[index].quantity > 1) {
      _items[index].quantity--;
      notifyListeners();
    }
  }

  void toggleSelection(int index) {
    _items[index].isSelected = !_items[index].isSelected;
    notifyListeners();
  }

  void selectAll(bool value) {
    for (var item in _items) {
      item.isSelected = value;
    }
    notifyListeners();
  }

  void clearCart() {
    _items.clear();
    notifyListeners();
  }
}