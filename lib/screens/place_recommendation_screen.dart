import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'place_detail_screen.dart';

class PlaceRecommendationScreen extends StatelessWidget {
  final String emotion;
  final Logger _logger = Logger('PlaceRecommendationScreen');

  PlaceRecommendationScreen({super.key, required this.emotion});

  @override
  Widget build(BuildContext context) {
    // Dummy data for place recommendations
    final List<String> places = getPlacesForEmotion(emotion);

    return Scaffold(
      appBar: AppBar(title: Text('Recommended Places for $emotion')),
      body: ListView.builder(
        itemCount: places.length,
        itemBuilder: (context, index) {
          final place = places[index];
          return ListTile(
            title: Text(place),
            onTap: () {
              // Navigate to the place detail screen
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PlaceDetailScreen(place: place),
                ),
              );
              _logger.info('Selected place: $place');
            },
          );
        },
      ),
    );
  }

  List<String> getPlacesForEmotion(String emotion) {
    // This is a dummy implementation. Replace it with actual logic to get place recommendations based on emotion.
    switch (emotion) {
      case 'Calm and Sad':
        return ['Calm Cafe', 'Peaceful Park', 'Quiet Library'];
      case 'Energetic and Happy':
        return ['Fun Amusement Park', 'Dance Club', 'Energetic Gym'];
      case 'Relaxed and Content':
        return ['Relaxing Spa', 'Cozy Restaurant', 'Comfortable Lounge'];
      case 'Excited and Motivated':
        return ['Motivational Seminar', 'Adventure Park', 'High-Energy Gym'];
      case 'Stressed and Anxious':
        return ['Stress Relief Center', 'Yoga Studio', 'Relaxation Garden'];
      case 'Angry and Frustrated':
        return [
          'Anger Management Center',
          'Boxing Gym',
          'Therapeutic Massage Center'
        ];
      case 'Lonely and Isolated':
        return ['Community Center', 'Social Cafe', 'Pet Adoption Center'];
      case 'Grateful and Thankful':
        return ['Charity Center', 'Thankful Cafe', 'Gratitude Garden'];
      default:
        return [];
    }
  }
}
