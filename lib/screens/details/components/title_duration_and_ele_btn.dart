import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/movie.dart';

class TitleDurationAndEleBtn extends StatelessWidget {
  const TitleDurationAndEleBtn({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(kDefaultPadding),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  movie.title,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                SizedBox(height: kDefaultPadding / 2,),
                Row(
                  children: [
                    Text(
                      "${movie.year}",
                      style: TextStyle(color: kTExtLightColor),
                    ),
                    SizedBox(width: kDefaultPadding,),
                    Text(
                      "PG-13",
                      style: TextStyle(color: kTExtLightColor),
                    ),
                    SizedBox(width: kDefaultPadding,),
                    Text(
                      "2h 32min",
                      style: TextStyle(color: kTExtLightColor),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 64,
            width: 64,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: kSecondaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                  )
              ),
              child: Icon(Icons.add, size: 20, color: Colors.white,),
            ),
          )
        ],
      ),
    );
  }
}
