import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_unleash/model/models.dart';
import 'package:food_unleash/screens/explore_screen.dart';
import 'package:food_unleash/screens/grocery_screen.dart';
import 'package:food_unleash/screens/recipe_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static List<Widget> pages = [
    ExploreScreen(),
    RecipesScreen(),
    GroceryScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer(
        builder: (BuildContext context, WidgetRef ref, Widget? child) {
      // final consume = ref.watch(tabManagerProvider.notifier);
      final bottomIndexNavBar = ref.watch(tabManagerProvider);
      return Scaffold(
        appBar: AppBar(
          title: Text(
            'Food Unleash',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        body: pages[bottomIndexNavBar.index],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: bottomIndexNavBar.index,
          onTap: (value) {
            ref.read(tabManagerProvider.notifier).goToTab(value);
          },
          selectedItemColor:
              Theme.of(context).textSelectionTheme.selectionColor,
          items: const [
            BottomNavigationBarItem(
              label: 'Explore',
              icon: Icon(Icons.explore),
            ),
            BottomNavigationBarItem(
              label: 'Recipes',
              icon: Icon(Icons.credit_card_rounded),
            ),
            BottomNavigationBarItem(
              label: 'To Buy',
              icon: Icon(Icons.list),
            ),
          ],
        ),
      );
    });
  }
}
