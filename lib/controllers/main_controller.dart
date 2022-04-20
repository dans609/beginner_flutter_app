import 'package:submission_bmafp/models/Film.dart';
import 'package:submission_bmafp/models/Movies.dart';
import 'package:submission_bmafp/models/TvShows.dart';

class Controller {
  Controller._();

  static List<Film> getAllFilm() {
    List<Film> data = [];
    data.addAll(tvShowsList);
    data.addAll(moviesList);
    data.shuffle();

    return data;
  }
}