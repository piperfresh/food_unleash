import 'package:flutter/material.dart';
import 'package:food_unleash/model/models.dart';

class RecipeThumbnail extends StatelessWidget {
  final SimpleRecipe simpleRecipe;

  const RecipeThumbnail({super.key, required this.simpleRecipe});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(18)),
              child: Image.asset(
                simpleRecipe.dishImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            simpleRecipe.title,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Text(
            simpleRecipe.duration,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}
