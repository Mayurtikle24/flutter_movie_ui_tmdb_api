import 'package:flutter/material.dart';

class ListTileUI extends StatelessWidget {
  final String genere;
  final int index;
  const ListTileUI({
    Key? key,
    required this.genere,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 8),
        height: 30,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: index == 0
                ? Color.fromARGB(255, 167, 20, 10)
                : Colors.grey[900]),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Text(
              genere,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 17,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ));
  }
}
