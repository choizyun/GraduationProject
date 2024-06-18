import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

class SpotifyMusicSelectionScreen extends StatelessWidget {
  final Logger _logger = Logger('SpotifyMusicSelectionScreen');

  SpotifyMusicSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Select Music via Spotify')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Handle Spotify music selection
            _logger.info('Spotify music selection triggered');
          },
          child: const Text('Login to Spotify and Select Music'),
        ),
      ),
    );
  }
}
