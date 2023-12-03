import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_unleash/app_state/tab_manager.dart';

class EmptyGroceryScreen extends ConsumerStatefulWidget {
  const EmptyGroceryScreen({super.key});

  @override
  ConsumerState<EmptyGroceryScreen> createState() => _EmptyGroceryScreenState();
}

class _EmptyGroceryScreenState extends ConsumerState<EmptyGroceryScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child: Image.asset('assets/images/empty_list.png'),
              ),
            ),
            Text(
              'No Groceries',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'Shopping for ingredients\n'
              'Tap the + button to write them down!',
              textAlign: TextAlign.center,
            ),
            MaterialButton(
              textColor: Colors.white,
              color: Colors.green,
              onPressed: () {
                ref.read(tabManagerProvider.notifier).goToRecipe();
              },
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              child: const Text('Browse Recipes'),
            )
          ],
        ),
      ),
    );
  }
}
