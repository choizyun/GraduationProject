import 'package:flutter/material.dart';
import 'emotion_selection_screen.dart';
import 'spotify_music_selection_screen.dart';
import 'favorites_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => EmotionSelectionScreen()),
                );
              },
              child: const Text('Select Emotion'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SpotifyMusicSelectionScreen()),
                );
              },
              child: const Text('Select Music via Spotify'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FavoritesScreen()),
                );
              },
              child: const Text('View Favorite Places'),
            ),
          ],
        ),
      ),
    );
  }
}
