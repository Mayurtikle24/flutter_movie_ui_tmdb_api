import 'package:flutter/material.dart';
import 'package:flutter_movie_ui/pages/tv_show_detail_screen.dart';
import 'package:flutter_movie_ui/widgets/popular_tvshows/tvCardUI.dart';

class PopularTvShowsList extends StatelessWidget {
  const PopularTvShowsList({
    Key? key,
    required this.tvShows_popular,
  }) : super(key: key);

  final List tvShows_popular;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 380,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: tvShows_popular.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return TvShowDetailScreen(
                      index: index, popularTvShows: tvShows_popular);
                }));
              },
              child: TvCardUI(popularTvshow: tvShows_popular, index: index),
            );
          }),
    );
  }
}
