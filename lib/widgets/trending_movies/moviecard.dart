import 'package:flutter/material.dart';

import 'package:flutter_movie_ui/model/ComingSoonmovie.dart';

class MovieCardUI extends StatelessWidget {
  // final Movie movie;
  final List trending;
  final int index;

  const MovieCardUI({
    Key? key,
    required this.trending,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.9 / 3,
      child: Container(
        margin: EdgeInsets.only(right: 20),
        height: 380,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(8),
              height: 270,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      //image: AssetImage(movie.img)
                      image: NetworkImage('https://image.tmdb.org/t/p/w500' +
                          trending[index]['poster_path']),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(20)),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        margin: EdgeInsets.only(right: 8),
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[900]),
                        child: const Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: Text(
                              "Action",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )),
                    Container(
                        margin: EdgeInsets.only(right: 8),
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[900]),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '${trending[index]["original_language"]}',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ))
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              trending[index]['title'] != null
                  ? trending[index]['title']
                  : 'Loading',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontFamily: "PlayfairDisplay"),
              textAlign: TextAlign.center,
              overflow: TextOverflow.clip,
            )
          ],
        ),
      ),
    );
  }
}
