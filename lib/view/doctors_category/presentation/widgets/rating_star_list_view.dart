import 'package:flutter/material.dart';

class RatingStarListView extends StatelessWidget {
  const RatingStarListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
          5,
          (index) => const Padding(
                padding: EdgeInsets.symmetric(horizontal: 4),
                child: Icon(
                  Icons.star,
                  size: 13,
                  color: Colors.amber,
                ),
              )),
    );
  }
}
