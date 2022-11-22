import 'package:flutter/material.dart';
import 'movies_grid.dart';

enum FilterOptions { favorites, all }

class MoviesFavoriteScreen extends StatefulWidget {
  const MoviesFavoriteScreen({super.key});

  @override
  State<MoviesFavoriteScreen> createState() => _MoviesFavoriteScreenState();
}

class _MoviesFavoriteScreenState extends State<MoviesFavoriteScreen> {
  final _showOnlyFavorites = true;
  // var _showOnlyFavorites = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Favorite'),
        actions: <Widget>[
          buildSearchButton(context),
          // buildProductFilterMenu(),
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

  // Widget buildProductFilterMenu() {
  //   return PopupMenuButton(
  //     onSelected: (FilterOptions selectedValue) {
  //       setState(() {
  //         if (selectedValue == FilterOptions.favorites) {
  //           _showOnlyFavorites = true;
  //         } else {
  //           _showOnlyFavorites = false;
  //         }
  //       });
  //     },
  //     icon: const Icon(
  //       Icons.more_vert,
  //     ),
  //     itemBuilder: (context) => [
  //       const PopupMenuItem(
  //         value: FilterOptions.favorites,
  //         child: Text('Only Favorites'),
  //       ),
  //       const PopupMenuItem(
  //         value: FilterOptions.all,
  //         child: Text('Show All'),
  //       )
  //     ],
  //   );
  // }
}
