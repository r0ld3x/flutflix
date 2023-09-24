class Movie {
  String title;
  String backDropPath;
  String originalTitle;
  String overview;
  String posterPath;
  String releaseDate;
  num voteAverage;

  Movie({
    required this.title,
    required this.backDropPath,
    required this.originalTitle,
    required this.overview,
    required this.posterPath,
    required this.releaseDate,
    required this.voteAverage,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
        title: json["title"],
        backDropPath: json["backdrop_path"],
        originalTitle: json["original_title"],
        overview: json["overview"],
        posterPath: json["poster_path"],
        releaseDate: json["release_date"],
        voteAverage: json["vote_average"]);
  }

  Map<String, dynamic> toJson() => {
        "title": title,
        "backdrop_path": backDropPath,
        "original_title": originalTitle,
        "overview": overview,
        "poster_path": posterPath,
        "release_date": releaseDate,
      };
}
