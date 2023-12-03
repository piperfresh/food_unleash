import 'package:flutter/material.dart';
import 'package:food_unleash/api/food_unleash_api.dart';
import 'package:food_unleash/components/components.dart';
import 'package:food_unleash/model/models.dart';

class RecipesScreen extends StatelessWidget {
  final exploreService = FoodUnleashService();

  RecipesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: exploreService.getRecipes(),
      builder: (context, AsyncSnapshot<List<SimpleRecipe>> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(
            child: Text('${snapshot.error}'),
          );
        } else {
          final simpleRecipe = snapshot.data;
          return RecipesGridView(
            recipes: simpleRecipe ?? [],
          );
        }
      },
    );
  }
}
