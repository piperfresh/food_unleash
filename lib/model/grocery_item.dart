import 'package:flutter/material.dart';

enum Importance {
  low,
  medium,
  high,
}

class GroceryItem {
  final String id;
  final String name;
  final Color color;
  final Importance importance;
  final int quantity;
  final DateTime dateTime;
  final bool isComplete;

  GroceryItem({
    required this.id,
    this.isComplete = false,
    required this.dateTime,
    required this.importance,
    required this.quantity,
    required this.name,
    required this.color,
  });

//? copyWith copies and creates a completely new instance of GroceryItem. This
//? will be useful later, when you manage the state of the items.
  GroceryItem copyWith({
    String? id,
    String? name,
    Color? color,
    Importance? importance,
    DateTime? dateTime,
    int? quantity,
    bool? isComplete,
  }) {
    return GroceryItem(
        id: id ?? this.id,
        dateTime: dateTime ?? this.dateTime,
        importance: importance ?? this.importance,
        quantity: quantity ?? this.quantity,
        name: name ?? this.name,
        color: color ?? this.color,
        isComplete: isComplete ?? this.isComplete);
  }
}
