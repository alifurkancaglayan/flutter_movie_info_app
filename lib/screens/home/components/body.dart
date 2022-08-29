import 'package:flutter/material.dart';
import 'package:flutter_movie_info_app/constans.dart';
import 'package:flutter_movie_info_app/screens/home/components/categories.dart';
import 'package:flutter_movie_info_app/screens/home/components/genres.dart';
import 'package:flutter_movie_info_app/screens/home/components/movie_card.dart';
import 'package:flutter_movie_info_app/screens/home/components/movie_carousel.dart';
import '../../../models/movie.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          CategoryList(),
          Genres(),
          SizedBox(
            height: kDefaultPadding,
          ),
          MovieCarousel(),
        ],
      ),
    );
  }
}
