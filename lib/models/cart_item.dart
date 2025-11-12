import 'product.dart';

class CartItem {
  final Product product;
  final String selectedColor;
  final int selectedSize;
  int quantity;
  bool isSelected;

  CartItem({
    required this.product,
    required this.selectedColor,
    required this.selectedSize,
    this.quantity = 1,
    this.isSelected = false,
  });

  double get totalPrice => product.price * quantity;
}