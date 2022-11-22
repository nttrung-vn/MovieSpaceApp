import 'package:flutter/material.dart';
import 'movies_grid.dart';

enum FilterOptions { favorites, all }

class MoviesHomeScreen extends StatefulWidget {
  const MoviesHomeScreen({super.key});

  @override
  State<MoviesHomeScreen> createState() => _MoviesHomeScreenState();
}

class _MoviesHomeScreenState extends State<MoviesHomeScreen> {
  final _showOnlyFavorites = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movie Space'),
        actions: <Widget>[
          buildSearchButton(context),
        ],
      ),
      body: MoviesGrid(_showOnlyFavorites),
    );
  }

  Widget buildSearchButton(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.search),
      onPressed: () {
        print('Search');
      },
    );
  }
}
