import 'package:flutter/cupertino.dart';
import 'package:food_unleash/food_unleash_theme.dart';
import 'package:food_unleash/model/explore_recipe.dart';

class Card1 extends StatelessWidget {
  final ExploreRecipe recipe;
  final String title = 'The art of Dough';
  final String description = 'Learn to make a perfect bread';
  final String chef = 'Abass Sulaimon';
  final String category = 'Editor\'s choice';

  const Card1({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/magazine_pics/mag1.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Stack(
          children: [
            Text(category, style: FoodUnleashTheme.darkTextTheme.bodyLarge),
            Positioned(
              top: 20,
              child: Text(title,
                  style: FoodUnleashTheme.darkTextTheme.headlineSmall),
            ),
            Positioned(
              bottom: 30,
              right: 0,
              child: Text(description,
                  style: FoodUnleashTheme.darkTextTheme.bodyLarge),
            ),
            Positioned(
              bottom: 10,
              right: 0,
              child:
                  Text(chef, style: FoodUnleashTheme.darkTextTheme.bodyLarge),
            ),
          ],
        ),
      ),
    );
  }
}
