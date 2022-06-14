import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie_ui/model/ComingSoonmovie.dart';
import 'package:flutter_movie_ui/widgets/coming_soon_movies/coming_soon_ImageCard.dart';

class ComingSoonMovieDisplayList extends StatelessWidget {
  const ComingSoonMovieDisplayList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 230,
        child: CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            autoPlayCurve: Curves.fastLinearToSlowEaseIn,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
            viewportFraction: 0.8,
            initialPage: 0,
          ),
          items: [
            ComingSoonImageCard(movie: ComingSoonMovieList.movies[0]),
            ComingSoonImageCard(movie: ComingSoonMovieList.movies[2]),
            ComingSoonImageCard(movie: ComingSoonMovieList.movies[4]),
            ComingSoonImageCard(movie: ComingSoonMovieList.movies[5]),
            ComingSoonImageCard(movie: ComingSoonMovieList.movies[6]),
            ComingSoonImageCard(movie: ComingSoonMovieList.movies[7]),
          ],
        ));
  }
}
