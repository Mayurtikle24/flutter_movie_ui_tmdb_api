import 'package:flutter/material.dart';
import 'package:flutter_movie_ui/pages/detail_screen.dart';
import '../../model/ComingSoonmovie.dart';
import 'moviecard.dart';

class TrendingMovies extends StatelessWidget {
  TrendingMovies({
    Key? key,
    required this.trending,
  }) : super(key: key);
  final List trending;
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 380,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          itemCount: trending.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailScreen(index: index, trending: trending);
                }));
              },
              child: MovieCardUI(trending: trending, index: index),
            );
          }),
    );
  }
}
