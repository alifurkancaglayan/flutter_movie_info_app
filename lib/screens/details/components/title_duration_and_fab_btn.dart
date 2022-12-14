import 'package:flutter/material.dart';
import 'package:flutter_movie_info_app/constans.dart';
import 'package:flutter_movie_info_app/models/movie.dart';

class TitleDurationAndFabBtn extends StatelessWidget {
  const TitleDurationAndFabBtn({
    Key? key,
    required this.movie,
  }) : super(key: key);

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
                  movie.title!,
                  style: Theme.of(context).textTheme.headline5,
                ),
                SizedBox(
                  height: kDefaultPadding / 2,
                ),
                Row(
                  children: [
                    Text(
                      "${movie.year}",
                      style: TextStyle(
                        color: kTextLightColor,
                      ),
                    ),
                    SizedBox(
                      width: kDefaultPadding / 2,
                    ),
                    Text(
                      "PG-13",
                      style: TextStyle(
                        color: kTextLightColor,
                      ),
                    ),
                    SizedBox(
                      width: kDefaultPadding / 2,
                    ),
                    Text(
                      "2h 32 min",
                      style: TextStyle(
                        color: kTextLightColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 64,
            width: 64,
            child: FlatButton(
              onPressed: () {},
              color: kSecondaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Icon(
                Icons.add,
                size: 28,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
