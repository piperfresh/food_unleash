import 'package:flutter/material.dart';
import 'package:food_unleash/components/components.dart';
import 'package:food_unleash/components/friend_post_list_view.dart';
import 'package:food_unleash/model/explore_data.dart';

import '../api/food_unleash_api.dart';

class ExploreScreen extends StatelessWidget {
  final foodUnleashApi = FoodUnleashService();

  ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: foodUnleashApi.getExploreData(),
      builder: (BuildContext context, AsyncSnapshot<ExploreData> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.connectionState == ConnectionState.done) {
          final recipes = snapshot.data?.todayRecipes ?? [];
          final posts = snapshot.data?.friendPosts ?? [];
          return ListView(
            scrollDirection: Axis.vertical,
            children: [
              TodayRecipeListView(recipes: recipes),
              FriendPostListView(friendPosts: posts),
            ],
          );
        } else {
          return Text('${snapshot.error}');
        }
      },
    );
  }
}
