import 'package:flutter/material.dart';

class ActorCard extends StatelessWidget {
  const ActorCard({
    Key? key,
    required this.img,
  }) : super(key: key);
  final String img;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.9 / 3,
      child: Container(
        margin: const EdgeInsets.only(right: 20),
        height: 90,
        width: 70,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover)),
      ),
    );
  }
}

class ActorList extends StatelessWidget {
  const ActorList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          ActorCard(img: "assets/images/actor1.jpg"),
          ActorCard(img: "assets/images/actor2.jpg"),
          ActorCard(img: "assets/images/actor3.jpg"),
          ActorCard(img: "assets/images/actor4.jpg"),
          ActorCard(img: "assets/images/actor5.jpg"),
        ],
      ),
    );
  }
}
