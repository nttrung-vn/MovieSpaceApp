import 'package:flutter/material.dart';
import 'movies/movie_overview_screen.dart';
import 'movies/movie_favorite_screen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static final List<Widget> _pages = [
    const SafeArea(
      child: MoviesOverviewScreen(),
    ),
    const SafeArea(
      child: MoviesFavoriteScreen(),
    ),
    Container(color: Colors.yellow),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.movie),
            label: 'Movie',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_sharp),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
