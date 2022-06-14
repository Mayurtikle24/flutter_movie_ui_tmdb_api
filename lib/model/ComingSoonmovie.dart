class ComingSoonMovie {
  final String title;
  final String agelimit;
  final String genere;
  final String rating;
  final String img;

  ComingSoonMovie({
    required this.title,
    required this.agelimit,
    required this.genere,
    required this.rating,
    required this.img,
  });
}

class ComingSoonMovieList {
  static final movies = [
    ComingSoonMovie(
        title: "Avtar",
        agelimit: "13+",
        genere: "Adventure",
        rating: "5.0",
        img: "assets/images/avtar.jpg"),
    ComingSoonMovie(
        title: "Gangubai Kathiawadi",
        agelimit: "18+",
        genere: "Biography",
        rating: "4.5",
        img: "assets/images/gangubai_kathiawadi.jpg"),
    ComingSoonMovie(
        title: "Jayeshbhi Jordaar",
        agelimit: "17+",
        genere: "Drama",
        rating: "4.2",
        img: "assets/images/Jayeshbhai_Jordaar.jpg"),
    ComingSoonMovie(
        title: "KGF-2",
        agelimit: "13+",
        genere: "Action",
        rating: "5.0",
        img: "assets/images/KGF.jpg"),
    ComingSoonMovie(
        title: "Mortal Engines",
        agelimit: "13+",
        genere: "Fantacy",
        rating: "5.0",
        img: "assets/images/mortal_engines.jpg"),
    ComingSoonMovie(
        title: "Prithvirah Chouhan",
        agelimit: "13+",
        genere: "Drama",
        rating: "3.0",
        img: "assets/images/Prithviraj.jpg"),
    ComingSoonMovie(
        title: "RRR",
        agelimit: "13+",
        genere: "Drama",
        rating: "4.0",
        img: "assets/images/RRR.jpg"),
    ComingSoonMovie(
        title: "Doctor Strange",
        agelimit: "13+",
        genere: "Fantacy",
        rating: "5.0",
        img: "assets/images/doctor_strange.jpg"),
    ComingSoonMovie(
        title: "Harry Potter",
        agelimit: "12+",
        genere: "Fantacy",
        rating: "5.0",
        img: "assets/images/harry_potter.jpg"),
  ];
}
