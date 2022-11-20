import '../../models/movie.dart';

class MoviesManager {
  final List<Movie> _items = [
    Movie(
      id: 'm1',
      name: 'Black Panther: Wakanda Forever',
      description:
          'Black Panther: Wakanda Forever là một bộ phim siêu anh hùng của Mỹ năm 2022 dựa trên nhân vật Black Panther của Marvel Comics. Được sản xuất bởi Marvel Studios và được phân phối bởi Walt Disney Studios Motion Pictures, đây là phần tiếp theo của Black Panther (2018) và là bộ phim thứ 30 trong Vũ trụ Điện ảnh Marvel (MCU).',
      nation: 'USA',
      genre: 'Superhero',
      posterUrl: 'https://metiz.vn/media/poster_film/black.jpg',
      watchUrl: 'https://www.youtube.com/watch?v=_Z3QKkl1WyM',
      year: 2022,
      isFavorite: true,
    ),
  ];

  int get itemCount {
    return _items.length;
  }

  List<Movie> get items {
    return [..._items];
  }

  List<Movie> get favoriteItems {
    return _items.where((prodItem) => prodItem.isFavorite).toList();
  }
}
