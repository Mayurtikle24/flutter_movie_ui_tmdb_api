import 'package:flutter/material.dart';

import 'package:flutter_movie_ui/model/ComingSoonmovie.dart';

class ComingSoonImageCard extends StatelessWidget {
  final ComingSoonMovie movie;
  const ComingSoonImageCard({
    Key? key,
    required this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 400,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(movie.img),
            fit: BoxFit.cover,
            alignment: Alignment.center),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(children: [
        Positioned(
          top: 170,
          left: 15,
          child: Text(
            movie.title,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: "PlayfairDisplaySC"),
          ),
        ),
        const Positioned(
          left: 230,
          top: 14,
          child: Icon(Icons.share, size: 20, color: Colors.white),
        ),
        const Center(
          child: Icon(
            Icons.play_circle_filled_outlined,
            color: Color.fromARGB(255, 219, 32, 19),
            size: 30,
          ),
        )
      ]),
    );
  }
}
