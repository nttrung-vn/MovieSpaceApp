import 'package:flutter/material.dart';
import '../../models/movie.dart';

class MovieListTile extends StatelessWidget {
  final Movie movie;

  const MovieListTile(
    this.movie, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(movie.name),
        subtitle: Text('${movie.nation} (${movie.year})'),
        leading: CircleAvatar(
          backgroundImage: NetworkImage(movie.posterUrl),
        ),
        trailing: SizedBox(
          width: 100,
          child: Row(
            children: <Widget>[
              buildEditButton(context),
              buildDeleteButton(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildDeleteButton(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.delete),
      onPressed: () async {
        print('Delete a movie');
      },
      color: Theme.of(context).errorColor,
    );
  }

  Widget buildEditButton(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.edit),
      onPressed: () {
        print('Go to edit screen movie');
      },
      color: Theme.of(context).primaryColor,
    );
  }
}
