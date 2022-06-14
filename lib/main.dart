import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_movie_ui/pages/home.dart';
import 'package:flutter_movie_ui/pages/splashScreen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Movie App UI',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: "Muli",
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: const SplashScreen(),
    );
  }
}
