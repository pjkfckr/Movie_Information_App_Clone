
import 'package:flutter/material.dart';
import 'package:movie_info_app/constants.dart';

import 'categories.dart';
import 'genre.dart';
import 'movie_carousel.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // it enable scroll on small device
    return SingleChildScrollView(
      child: Column(
        children: const [
          CategoryList(),
          Genres(),
          SizedBox(height: kDefaultPadding,),
          MovieCarousel(),
        ],
      ),
    );
  }
}


