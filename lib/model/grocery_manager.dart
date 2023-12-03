import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'grocery_item.dart';

class GroceryManager extends ChangeNotifier {
  final List<GroceryItem> _groceryItems = [];

  List<GroceryItem> get groceryItems => List.unmodifiable(_groceryItems);

  //? To delete an item
  void deleteItem(int index) {
    _groceryItems.removeAt(index);
    notifyListeners();
  }

  //? To add an item
  void addItem(GroceryItem item) {
    _groceryItems.add(item);
    notifyListeners();
  }

  //? To update an item if there's amy changes
  void updateItem(GroceryItem item, int index) {
    _groceryItems[index] = item;
    notifyListeners();
  }

  //? To mark the item as complete or not complete
  void completeItem(int index, bool change) {
    final item = _groceryItems[index];
    _groceryItems[index] = item.copyWith(isComplete: change);
    notifyListeners();
  }
}

final groceryManagerProvider =
    ChangeNotifierProvider<GroceryManager>((ref) => GroceryManager());
