import 'movie.dart';

class ListMovie {
  List<Movie> listMovie = [];

  // Create: thêm 1 bản ghi mới
  void createMovie(Movie movie) {
    listMovie.add(movie);
  }

  // Read: đọc tất cả bản ghi
  List<Movie> readMovies() {
    return listMovie;
  }

  // Edit: sửa bản ghi theo movieId
  void editMovie(int id, Movie movieMoi) {
    for (int i = 0; i < listMovie.length; i++) {
      if (listMovie[i].movieId == id) {
        listMovie[i] = movieMoi;
        break;
      }
    }
  }
}