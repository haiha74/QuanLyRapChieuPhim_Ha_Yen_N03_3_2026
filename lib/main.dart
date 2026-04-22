import 'package:flutter/material.dart';
import 'movie.dart';
import 'list_movie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ListMovie dsMovie = ListMovie();

    //CREATE
    dsMovie.createMovie(
      Movie(
        movieId: 1,
        title: "Avengers: Endgame",
        description: "Phim siêu anh hùng Marvel",
        runtime: 181,
        posterUrl: "poster1.jpg",
        trailerUrl: "trailer1.mp4",
        status: "NOW_SHOWING",
        releaseDate: DateTime(2026, 4, 20),
        createdAt: DateTime.now(),
        showtimes: [],
      ),
    );

    dsMovie.createMovie(
      Movie(
        movieId: 2,
        title: "Dune Part Two",
        description: "Phim khoa học viễn tưởng",
        runtime: 166,
        posterUrl: "poster2.jpg",
        trailerUrl: "trailer2.mp4",
        status: "COMING_SOON",
        releaseDate: DateTime(2026, 5, 1),
        createdAt: DateTime.now(),
        showtimes: [],
      ),
    );

    dsMovie.createMovie(
      Movie(
        movieId: 3,
        title: "Kung Fu Panda 4",
        description: "Phim hoạt hình",
        runtime: 94,
        posterUrl: "poster3.jpg",
        trailerUrl: "trailer3.mp4",
        status: "NOW_SHOWING",
        releaseDate: DateTime(2026, 4, 25),
        createdAt: DateTime.now(),
        showtimes: [],
      ),
    );

    //EDIT
    dsMovie.editMovie(
      2,
      Movie(
        movieId: 2,
        title: "Dune Part Two Updated",
        description: "Phim khoa học viễn tưởng",
        runtime: 170,
        posterUrl: "poster2_new.jpg",
        trailerUrl: "trailer2_new.mp4",
        status: "NOW_SHOWING",
        releaseDate: DateTime(2026, 5, 5),
        createdAt: DateTime.now(),
        showtimes: [],
      ),
    );

    //READ
    List<Movie> danhSach = dsMovie.readMovies();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Câu 4 - CRUD Movie"),
        ),
        body: ListView.builder(
          itemCount: danhSach.length,
          itemBuilder: (context, index) {
            Movie movie = danhSach[index];
            return Card(
              margin: const EdgeInsets.all(10),
              child: ListTile(
                title: Text(movie.title),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("ID: ${movie.movieId}"),
                    Text("Mô tả: ${movie.description}"),
                    Text("Thời lượng: ${movie.runtime} phút"),
                    Text("Trạng thái: ${movie.status}"),
                    Text("Poster: ${movie.posterUrl}"),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}