import 'package:flutter/material.dart';
import 'list_tile.dart';

class GenereListView extends StatelessWidget {
  GenereListView({Key? key}) : super(key: key);

  List<String> genere = [
    "All",
    "Action",
    "Comedy",
    "Romance",
    "Fantacy",
    "Thriller",
    "Horror",
    "Sci-Fi"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: genere.length,
          itemBuilder: (context, index) {
            return ListTileUI(
              genere: genere[index],
              index: index,
            );
          }),
    );
  }
}
