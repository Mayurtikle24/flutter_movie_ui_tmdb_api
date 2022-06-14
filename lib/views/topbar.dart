import 'package:flutter/material.dart';

class TopBarUI extends StatelessWidget {
  const TopBarUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          Text(
            "Series",
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
          Text(
            "Film",
            style: TextStyle(
                fontSize: 20, color: Color.fromARGB(255, 204, 29, 17)),
          ),
          Text(
            "My List",
            style: TextStyle(fontSize: 18, color: Colors.white),
          )
        ],
      ),
    );
  }
}
