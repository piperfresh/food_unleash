import 'package:flutter/material.dart';
import 'package:food_unleash/components/author_card.dart';
import 'package:food_unleash/food_unleash_theme.dart';

import '../model/explore_recipe.dart';

class Card2 extends StatelessWidget {
  final ExploreRecipe recipe;
  const Card2({super.key, required this.recipe});

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
              fit: BoxFit.cover,
              image: AssetImage('assets/images/magazine_pics/mag5.png'),
            ),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Column(
          children: [
            const AuthorCard(
                authorName: 'Abass Sulaimon',
                imageProvider: AssetImage('assets/images/profile_pics/abass.jpeg'),
                jobTitle: 'Smoothie Caterer'),
            Expanded(
                child: Stack(
              children: [
                Positioned(
                  bottom: 16,
                  right: 16,
                  child: Text(
                    'Recipe',
                    style: FoodUnleashTheme.lightTextTheme.displayLarge,
                  ),
                ),
                Positioned(
                    left: 16,
                    bottom: 70,
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        'Smoothies',
                        style: FoodUnleashTheme.lightTextTheme.displayLarge,
                      ),
                    ))
              ],
            ))
          ],
        ),
      ),
    );
  }
}
