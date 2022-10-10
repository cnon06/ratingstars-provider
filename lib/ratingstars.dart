import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'starsvm.dart';

class RatingStars extends StatelessWidget {
  const RatingStars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var rating = Provider.of<StarsVM>(context, listen: false);

    final stars = List<Widget>.generate(5, (index) {
      return GestureDetector(
        onTap: () {
          rating.valTransfer(index);
          //rating.value = index;
        },
        child: Consumer<StarsVM>(
          builder: (_, value, __) => index <= rating.value
              ? Icon(
                  Icons.star,
                  color: Colors.amber[600],
                )
              : const Icon(Icons.star_border_outlined),
        ),
      );
    });

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: stars,
    );
  }
}
