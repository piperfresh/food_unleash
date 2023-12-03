import 'package:flutter/material.dart';
import 'package:food_unleash/components/components.dart';

import '../model/post.dart';

class FriendPostListView extends StatelessWidget {
  final List<Post> friendPosts;

  const FriendPostListView({super.key, required this.friendPosts});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 16,
        left: 16,
        top: 0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Social Worker',
            style: Theme.of(context).textTheme.displayLarge,
          ),
          const SizedBox(
            height: 16,
          ),
          ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final post = friendPosts[index];
              return FriendPostTile(post: post);
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 16,
              );
            },
            itemCount: friendPosts.length,
          ),
        ],
      ),
    );
  }
}
