

import 'package:flutter/cupertino.dart';
import 'components.dart';
import 'package:food_unleash/model/explore_recipe.dart';

Widget buildCard({required ExploreRecipe recipe}){
  if(recipe.cardType == RecipeCardType.card1){
    return Card1(recipe:  recipe);
  } else if(recipe.cardType == RecipeCardType.card2){
    return Card2(recipe: recipe);
  } else {
    return Card3(recipe: recipe);
  }
}