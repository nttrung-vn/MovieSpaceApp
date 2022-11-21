import 'package:flutter/material.dart';
import 'ui/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movies Space',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: SafeArea(
      //   child: MovieDetailScreen(
      //     MoviesManager().items[0],
      //   ),
      // ),
      // home: const Home(),
      // home: SafeArea(
      //   child: MovieGridTile(
      //     MoviesManager().items[0],
      //   ),
      // ),
      // home: const SafeArea(
      //   child: MoviesOverviewScreen(),
      // ),
      home: const SafeArea(
        child: MoviesManagerScreen(),
      ),
    );
  }
}
