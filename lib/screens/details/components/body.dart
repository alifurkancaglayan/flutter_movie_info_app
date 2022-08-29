import 'package:flutter/material.dart';
import 'package:flutter_movie_info_app/components/genre_card.dart';
import 'package:flutter_movie_info_app/constans.dart';
import 'package:flutter_movie_info_app/models/movie.dart';
import 'package:flutter_movie_info_app/screens/details/components/backdrop_and_rating.dart';
import 'package:flutter_movie_info_app/screens/details/components/cast_and_crew.dart';
import 'package:flutter_movie_info_app/screens/details/components/cast_card.dart';
import 'package:flutter_movie_info_app/screens/details/components/genres.dart';
import 'package:flutter_movie_info_app/screens/details/components/title_duration_and_fab_btn.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  final Movie movie;
  const Body({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BackdropAndRating(size: size, movie: movie),
          SizedBox(height: kDefaultPadding / 2),
          TitleDurationAndFabBtn(movie: movie),
          Genres(movie: movie),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: kDefaultPadding / 2,
              horizontal: kDefaultPadding,
            ),
            child: Text(
              "Plot Summary",
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Text(
              movie.plot!,
              style: TextStyle(
                color: Color(0xFF737599),
              ),
            ),
          ),
          CastAndCrew(
            casts: movie.cast!,
          ),
        ],
      ),
    );
  }
}
