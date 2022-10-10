import 'package:flutter/material.dart';

class RatingStars extends StatefulWidget {
  const RatingStars({Key? key}) : super(key: key);

  @override
  State<RatingStars> createState() => _RatingStarsState();
}

class _RatingStarsState extends State<RatingStars> {
  int rating = -1;

  @override
  Widget build(BuildContext context) {
    final stars = List<Widget>.generate(5, (index) {
      return GestureDetector(
          onTap: () {
            setState(() {
              rating = index;
            });
           
          },
          child: index <= rating
              ? Icon(
                  Icons.star,
                  color: Colors.amber[600],
                )
              : const Icon(Icons.star_border_outlined));
    });

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: stars,
    );
  }
}
