import 'package:flutter/material.dart';

class TvCardUI extends StatelessWidget {
  const TvCardUI({
    Key? key,
    required this.popularTvshow,
    required this.index,
  }) : super(key: key);

  final List popularTvshow;
  final int index;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.9 / 3,
      child: Container(
        margin: const EdgeInsets.only(right: 20),
        height: 380,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              height: 270,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      //image: AssetImage(movie.img)
                      image: NetworkImage('https://image.tmdb.org/t/p/w500' +
                          popularTvshow[index]['poster_path']),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(20)),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        margin: const EdgeInsets.only(right: 8),
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[900]),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: Text(
                              popularTvshow[index]['first_air_date'],
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )),
                    Container(
                        margin: const EdgeInsets.only(right: 8),
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
                                  '${popularTvshow[index]["original_language"]}',
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
            const SizedBox(height: 10),
            Text(
              popularTvshow[index]['name'] != null
                  ? popularTvshow[index]['name']
                  : 'Loading',
              style: const TextStyle(
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
