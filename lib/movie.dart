class Movie {
  int? movieId;
  String title;
  String? description;
  int runtime;
  String posterUrl;
  String? trailerUrl;
  String status;
  DateTime? releaseDate;
  DateTime? createdAt;
  List<dynamic> showtimes;

  Movie({
    this.movieId,
    required this.title,
    this.description,
    required this.runtime,
    required this.posterUrl,
    this.trailerUrl,
    required this.status,
    this.releaseDate,
    this.createdAt,
    this.showtimes = const [],
  });

  void hienThiThongTin() {
    print("movieId: $movieId");
    print("title: $title");
    print("description: $description");
    print("runtime: $runtime");
    print("posterUrl: $posterUrl");
    print("trailerUrl: $trailerUrl");
    print("status: $status");
    print("releaseDate: $releaseDate");
    print("createdAt: $createdAt");
    print("showtimes: $showtimes");
  }

  void capNhatTrangThai(String trangThaiMoi) {
    status = trangThaiMoi;
  }

  void capNhatThoiLuong(int thoiLuongMoi) {
    runtime = thoiLuongMoi;
  }

  Map<String, dynamic> toJson() {
    return {
      'movieId': movieId,
      'title': title,
      'description': description,
      'runtime': runtime,
      'posterUrl': posterUrl,
      'trailerUrl': trailerUrl,
      'status': status,
      'releaseDate': releaseDate?.toIso8601String(),
      'createdAt': createdAt?.toIso8601String(),
      'showtimes': showtimes,
    };
  }

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      movieId: json['movieId'],
      title: json['title'] ?? '',
      description: json['description'],
      runtime: json['runtime'] ?? 0,
      posterUrl: json['posterUrl'] ?? '',
      trailerUrl: json['trailerUrl'],
      status: json['status'] ?? '',
      releaseDate: json['releaseDate'] != null
          ? DateTime.tryParse(json['releaseDate'])
          : null,
      createdAt: json['createdAt'] != null
          ? DateTime.tryParse(json['createdAt'])
          : null,
      showtimes: json['showtimes'] ?? [],
    );
  }

  @override
  String toString() {
    return "Movie(movieId: $movieId, title: $title, description: $description, runtime: $runtime, posterUrl: $posterUrl, trailerUrl: $trailerUrl, status: $status, releaseDate: $releaseDate, createdAt: $createdAt, showtimes: $showtimes)";
  }
}