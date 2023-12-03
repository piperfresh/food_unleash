import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_unleash/components/components.dart';
import 'package:food_unleash/model/models.dart';

class GroceryListScreen extends ConsumerWidget {
  final GroceryManager groceryManager;

  const GroceryListScreen({super.key, required this.groceryManager});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final groceryItems = ref.watch(groceryManagerProvider).groceryItems;
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListView.separated(
          itemBuilder: (context, index) {
            final groceryItem = groceryItems[index];
            return GroceryTile(
              groceryItem: groceryItem,
              key: Key(groceryItem.id),
              onComplete: (change){
               if(change != null){
                 groceryManager.completeItem(index, change);
               }
              },
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              height: 16.0,
            );
          },
          itemCount: groceryItems.length),
    );
  }
}
