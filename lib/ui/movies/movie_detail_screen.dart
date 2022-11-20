import 'package:flutter/material.dart';
import '../../models/movie.dart';

class MovieDetailScreen extends StatefulWidget {
  const MovieDetailScreen(
    this.movie, {
    super.key,
  });

  final Movie movie;

  @override
  State<MovieDetailScreen> createState() => _MovieDetailScreenState();
}

class _MovieDetailScreenState extends State<MovieDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.movie.name),
        actions: [
          buildFavoriteIcon(),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          SizedBox(
            child: Image.network(widget.movie.posterUrl),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            widget.movie.name,
            style: const TextStyle(
              color: Colors.blueAccent,
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
            softWrap: true,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Quốc gia: ${widget.movie.nation}',
            style: const TextStyle(
              fontSize: 15,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            'Thể loại: ${widget.movie.genre}',
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 15,
            ),
          ),
          Text(
            'Năm sản xuất: ${widget.movie.year}',
            style: const TextStyle(
              fontSize: 15,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            widget.movie.description,
            style: const TextStyle(
              fontSize: 15,
            ),
            textAlign: TextAlign.justify,
            softWrap: true,
          ),
          const SizedBox(
            height: 100,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_arrow_outlined),
        onPressed: () {
          print('Play video');
        },
      ),
    );
  }
}

Widget buildFavoriteIcon() {
  return IconButton(
    icon: const Icon(
      Icons.favorite_border,
    ),
    onPressed: () {
      print("Set is favorite.");
    },
  );
}
