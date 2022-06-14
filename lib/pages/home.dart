import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_movie_ui/Constants.dart';
import 'package:flutter_movie_ui/views/movie_genere_list.dart';
import 'package:flutter_movie_ui/widgets/popular_tvshows/popularTvShowsList.dart';
import 'package:flutter_movie_ui/widgets/coming_soon_movies/comingSoon_movie_displayList.dart';
import 'package:flutter_movie_ui/widgets/text_widget/heading_title_text.dart';
import 'package:flutter_movie_ui/views/topbar.dart';
import 'package:flutter_movie_ui/widgets/trending_movies/trendingmovies.dart';
import 'package:tmdb_api/tmdb_api.dart';
import '../views/topbar.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({Key? key}) : super(key: key);

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  List trendingMovies = [];
  List topRatedMovies = [];
  List popularTvShows = [];

  @override
  void initState() {
    loadMovies();
    super.initState();
  }

  loadMovies() async {
    TMDB tmdbWithCutomLogs = TMDB(
        ApiKeys(Constants.apiKey, Constants.accessToken),
        logConfig: const ConfigLogger(showErrorLogs: true, showLogs: true));

    Map trandingResult = await tmdbWithCutomLogs.v3.trending
        .getTrending(mediaType: MediaType.all);
    Map topRatedResult = await tmdbWithCutomLogs.v3.movies.getTopRated();
    Map popularTVShowsResult = await tmdbWithCutomLogs.v3.tv.getTopRated();
    setState(() {
      trendingMovies = trandingResult['results'];
      topRatedMovies = topRatedResult['results'];
      popularTvShows = popularTVShowsResult['results'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
          color: Color.fromARGB(255, 207, 204, 204),
          size: 22,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Home Cinema".toUpperCase(),
          style: Theme.of(context).textTheme.caption?.copyWith(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: "Muli"),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 15),
            child: const CircleAvatar(
              backgroundImage: AssetImage("assets/images/profile1.png"),
            ),
          )
        ],
      ),
      backgroundColor: Colors.black87,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TopBarUI(),
                const SizedBox(height: 20),
                const Text(
                  "Coming Soon",
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: "Muli",
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                const ComingSoonMovieDisplayList(),
                const SizedBox(height: 30),
                GenereListView(),
                const SizedBox(height: 30),
                const HeadingTitleText(title: "Trending Now", textSize: 25),
                const SizedBox(height: 20),
                TrendingMovies(trending: trendingMovies),
                const SizedBox(height: 5),
                const HeadingTitleText(title: "Popular TV Shows", textSize: 25),
                const SizedBox(height: 20),
                PopularTvShowsList(tvShows_popular: popularTvShows)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
