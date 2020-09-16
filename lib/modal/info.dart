class Movie {
  static List<Movie> getmovies() => [
    Movie(
        "Avengers Infinity war",
        "2009",
        "8",
        "18 decem",
        "162 min",
        "action",
        "romance",
        "tom cruise",
        "a",
      "assets/images/infinity.jpg",


    ),
    Movie("Fantastic", "2009", "8", "18 decem", "162 min", "action",
        "sdfghrbvyfyvyzbsecfgbrbvsgedr", "srk", "b",
          "assets/images/fantastic",



        ),
    Movie("Avengers end game", "200", "pg-13", "18 decem", "162 min", "action",
        "once upon  atime", "chris hemsworth", "c",
          "assets/images/endgame.jpg",


        ),   Movie(
        "Jack",
        "2009",
        "9",
        "18 decem",
        "162 min",
        "action",
        "romance",
        "tom cruise",
        "a",
      "assets/images/jack.jpg",

    ),
  ];
  String title;
  String year;
  String rated;
  String released;
  String runtime;
  String genre;
  String actors;
  String plot;
  String director;
  String images;

  Movie(this.title, this.year, this.rated, this.released, this.runtime,
      this.genre, this.plot, this.actors, this.director, this.images);
}
