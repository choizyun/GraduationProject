import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'place_recommendation_screen.dart';

class EmotionSelectionScreen extends StatelessWidget {
  final List<String> emotions = [
    'Calm and Sad',
    'Energetic and Happy',
    'Relaxed and Content',
    'Excited and Motivated',
    'Stressed and Anxious',
    'Angry and Frustrated',
    'Lonely and Isolated',
    'Grateful and Thankful'
  ];

  final Logger _logger = Logger('EmotionSelectionScreen');

  EmotionSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Select Your Emotion')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: emotions.map((emotion) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to the place recommendation screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          PlaceRecommendationScreen(emotion: emotion),
                    ),
                  );
                  _logger.info('Selected: $emotion');
                },
                child: Text(emotion),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
