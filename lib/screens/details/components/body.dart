import 'package:flutter/material.dart';
import 'package:movie_info_app/constants.dart';
import 'package:movie_info_app/models/movie.dart';
import 'package:movie_info_app/screens/details/components/title_duration_and_ele_btn.dart';

import 'backdrop_rating.dart';
import 'cast _and_crew.dart';
import 'genre.dart';

class Body extends StatelessWidget {
  final Movie movie;

  const Body({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BackdropAndRating(size: size, movie: movie),
          SizedBox(height: kDefaultPadding / 2,),
          TitleDurationAndEleBtn(movie: movie),
          Genre(movie: movie),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: kDefaultPadding / 2,
              horizontal: kDefaultPadding
            ),
            child: Text(
              "Plot Summary",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Text(movie.plot, style: const TextStyle(color: Color(0xFF737599)),),
          ),
          CastAndCrew(casts: movie.cast,),
        ],
      ),
    );
  }
}







