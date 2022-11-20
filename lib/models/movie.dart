class Movie {
  final String? id;
  final String name;
  final String description;
  final String nation;
  final String genre;
  final String posterUrl;
  final String watchUrl;
  final int year;
  final bool isFavorite;

  Movie({
    this.id,
    required this.name,
    required this.description,
    required this.nation,
    required this.genre,
    required this.posterUrl,
    required this.watchUrl,
    required this.year,
    this.isFavorite = false,
  });

  Movie copyWith({
    String? id,
    String? name,
    String? description,
    String? nation,
    String? genre,
    String? posterUrl,
    String? watchUrl,
    int? year,
    bool? isFavorite,
  }) {
    return Movie(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      nation: nation ?? this.nation,
      genre: genre ?? this.genre,
      posterUrl: posterUrl ?? this.posterUrl,
      watchUrl: watchUrl ?? this.watchUrl,
      year: year ?? this.year,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }
}
