import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../views/actor_Card.dart';

class TvShowDetailScreen extends StatelessWidget {
  const TvShowDetailScreen({
    Key? key,
    required this.index,
    required this.popularTvShows,
  }) : super(key: key);

  final int index;
  final List popularTvShows;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.black,
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 400,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        alignment: FractionalOffset.center,
                        image: NetworkImage('https://image.tmdb.org/t/p/w500' +
                            popularTvShows[index]['backdrop_path']),
                        fit: BoxFit.fitWidth)),
              ),
              Positioned(
                top: 40,
                left: 20,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    CupertinoIcons.chevron_back,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
              ),
              const Positioned(
                top: 200,
                left: 170,
                child: Icon(
                  Icons.play_circle_filled_outlined,
                  color: Color.fromARGB(255, 251, 38, 22),
                  size: 30,
                ),
              ),
              Positioned(
                top: 340,
                child: Container(
                  padding: const EdgeInsets.only(left: 20, top: 8),
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: const [0.1, 0.3, 0.5, 0.7, 0.9],
                      colors: [
                        Colors.black.withOpacity(0.1),
                        Colors.black.withOpacity(0.1),
                        Colors.black.withOpacity(0.8),
                        Colors.black.withOpacity(0.9),
                        Colors.black
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Container(
                    margin: const EdgeInsets.only(right: 10),
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 27, 27, 27)),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        child: Text(
                          popularTvShows[index]['first_air_date'],
                          style: const TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    )),
                Container(
                    margin: const EdgeInsets.only(right: 10),
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 27, 27, 27)),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        child: Text(
                          popularTvShows[index]['original_language'],
                          style: const TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.white,
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )),
                const SizedBox(width: 80),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 30, right: 20),
                      child: Icon(
                        CupertinoIcons.add,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                    Icon(
                      CupertinoIcons.share,
                      color: Colors.white,
                      size: 20,
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              popularTvShows[index]['name'] != null
                  ? popularTvShows[index]['name']
                  : 'Loading',
              textAlign: TextAlign.justify,
              style: const TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 20,
                  fontFamily: "PlayfairDisplay",
                  color: Colors.white),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 20),
            child: Container(
              height: 100,
              child: Text(
                popularTvShows[index]['overview'],
                textAlign: TextAlign.justify,
                maxLines: 5,
                textScaleFactor: 1,
                softWrap: true,
                style: const TextStyle(
                    fontSize: 15,
                    fontFamily: "Poppins-ExtraLight",
                    color: Colors.white70,
                    wordSpacing: 1,
                    overflow: TextOverflow.ellipsis,
                    fontWeight: FontWeight.w200,
                    decoration: TextDecoration.none),
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.only(right: 250),
            child: Text(
              "Actor",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  decoration: TextDecoration.none),
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.only(left: 30),
            child: ActorList(),
          )
        ]),
      ),
    );
    ;
  }
}
