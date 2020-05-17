import 'package:got/firstpage/movedetails.dart';

class MovieService {
  List<MovieDetail> fetchMovies() {
    List<MovieDetail> movies = [];
    MovieDetail movie = MovieDetail(
        "assets/images/img2.png", 4, 9, "16 jun 2017", "7 Seasons: 7 episodes");
    movies.add(movie);
    movie = MovieDetail("assets/images/img3.png", 3, 8, "24 apirl 2016",
        "6 Seasons: 10 episodes");
    movies.add(movie);
    movie = MovieDetail("assets/images/img4.png", 3, 12, "24 apirl 2016",
        "5 Seasons: 10 episodes");
    movies.add(movie);
    return movies;
  }
}
