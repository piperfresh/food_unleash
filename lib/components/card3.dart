import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:food_unleash/food_unleash_theme.dart';
import 'package:food_unleash/model/explore_recipe.dart';

class Card3 extends StatelessWidget {
  final ExploreRecipe recipe;
  const Card3({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(width: 350, height: 450),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/magazine_pics/mag2.png'),
          ),
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.book,
                    color: Colors.white,
                    size: 40,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Recipe Trends',
                    style: FoodUnleashTheme.darkTextTheme.displayMedium,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Wrap(
                        alignment: WrapAlignment.start,
                        spacing: 12,
                        runSpacing: 12,
                        children: [
                          ChipWidget(
                            text: 'Healthy',
                            onDeleted: () {
                              log('Delete');
                            },
                          ),
                          ChipWidget(
                            text: 'Vegan',
                            onDeleted: () {
                              log('Delete');
                            },
                          ),
                          const ChipWidget(
                            text: 'Carrots',
                          ),
                          const ChipWidget(text: 'Greens'),
                          const ChipWidget(text: 'Wheat'),
                          const ChipWidget(text: 'Pescetarian'),
                          const ChipWidget(text: 'Mint'),
                          // const ChipWidget(text: 'Lemongrass'),
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ChipWidget extends StatelessWidget {
  final String text;
  final void Function()? onDeleted;

  const ChipWidget({
    super.key,
    required this.text,
    this.onDeleted,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        text,
        style: FoodUnleashTheme.darkTextTheme.bodyLarge,
      ),
      backgroundColor: Colors.black.withOpacity(0.7),
      onDeleted: onDeleted,
    );
  }
}
