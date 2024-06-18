import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

class PlaceDetailScreen extends StatelessWidget {
  final String place;
  final Logger _logger = Logger('PlaceDetailScreen');

  PlaceDetailScreen({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Place Details')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Details for $place', style: const TextStyle(fontSize: 24)),
            // Add more details about the place here
          ],
        ),
      ),
    );
  }
}
