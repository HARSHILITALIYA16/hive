import 'package:flutter/material.dart';
import 'package:favorite_button/favorite_button.dart';


class favourite extends StatelessWidget {
  const favourite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return FavoriteButton(
      isFavorite: true,
      iconSize: 35,
      // iconDisabledColor: Colors.white,
      valueChanged: (_isFavorite) {
        print('Is Favorite : $_isFavorite');
      },
    );
  }
}
