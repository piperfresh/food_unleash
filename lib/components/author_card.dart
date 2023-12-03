import 'package:flutter/material.dart';
import 'package:food_unleash/components/circle_image.dart';
import 'package:food_unleash/food_unleash_theme.dart';

class AuthorCard extends StatefulWidget {
  final String authorName;
  final ImageProvider imageProvider;
  final String jobTitle;

  const AuthorCard({
    super.key,
    required this.authorName,
    required this.imageProvider,
    required this.jobTitle,
  });

  @override
  State<AuthorCard> createState() => _AuthorCardState();
}

class _AuthorCardState extends State<AuthorCard> {
  bool _isFavorite = false;

  void toggleFavorite() {
    setState(() {
      _isFavorite = !_isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleImage(
                imageProvider: widget.imageProvider,
                imageRadius: 28,
              ),
              const SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.authorName,
                    style: FoodUnleashTheme.lightTextTheme.displayMedium,
                  ),
                  Text(
                    widget.jobTitle,
                    style: FoodUnleashTheme.lightTextTheme.displaySmall,
                  ),
                ],
              ),
            ],
          ),
          IconButton(
            iconSize: 30,
            onPressed: () {
              final snackBar = SnackBar(
                content: _isFavorite
                    ? const Text('Unfavorite')
                    : const Text('Favorite'),
              );
              toggleFavorite();
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            icon: _isFavorite
                ? const Icon(
                    Icons.favorite,
                  )
                : const Icon(
                    Icons.favorite_border,
                  ),
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
