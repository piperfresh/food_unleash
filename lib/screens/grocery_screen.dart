import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_unleash/model/grocery_manager.dart';
import 'package:food_unleash/screens/empty_grocery_screen.dart';
import 'package:food_unleash/screens/grocery_item_screen.dart';
import 'package:food_unleash/screens/grocery_list_screen.dart';

class GroceryScreen extends ConsumerStatefulWidget {
  const GroceryScreen({super.key});

  @override
  ConsumerState<GroceryScreen> createState() => _GroceryScreenState();
}

class _GroceryScreenState extends ConsumerState<GroceryScreen> {
  @override
  Widget build(BuildContext context) {
    final manager = ref.watch(groceryManagerProvider);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return GroceryItemScreen(
                onCreate: (item) {
                  manager.addItem(item);
                  Navigator.pop(context);
                },
                onUpdate: (item) {});
          }));
        },
      ),
      body: buildGroceryScreen(),
    );
  }
}

Widget buildGroceryScreen() {
  return Consumer(builder: (context, ref, child) {
    final groceryManager = ref.watch(groceryManagerProvider);
    if (groceryManager.groceryItems.isNotEmpty) {
      return GroceryListScreen(groceryManager: groceryManager);
    } else {
      return const EmptyGroceryScreen();
    }
  });
}
