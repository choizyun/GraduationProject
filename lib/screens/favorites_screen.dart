import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

class FavoritesScreen extends StatelessWidget {
  final List<String> favoritePlaces = [
    'Place 1',
    'Place 2',
    'Place 3',
  ];

  final Logger _logger = Logger('FavoritesScreen');

  FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Favorite Places')),
      body: ListView(
        children: favoritePlaces.map((place) {
          return ListTile(
            title: Text(place),
            onTap: () {
              // Handle place selection
              _logger.info('Selected: $place');
            },
          );
        }).toList(),
      ),
    );
  }
}
