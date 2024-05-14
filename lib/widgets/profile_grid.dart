import 'package:flutter/material.dart';
import 'profile_card.dart';

// ignore: use_key_in_widget_constructors
class ProfileGrid extends StatelessWidget {
  final List<Map<String, String>> profiles = [
    {
      'imagePath': 'assets/image/jenny_23.png',
      'profileName': 'Jenny, 23',
      'country': 'Indonesia',
    },
    {
      'imagePath': 'assets/image/corolina.jpg',
      'profileName': 'Coroline Sky, 29',
      'country': 'Spain',
    },
    {
      'imagePath': 'assets/image/laurent.png',
      'profileName': 'Laurent, 23',
      'country': 'New York, USA',
    },
    {
      'imagePath': 'assets/image/lily.png',
      'profileName': 'Lily James, 29',
      'country': 'Malaysia',
    },
    {
      'imagePath': 'assets/image/adela.png',
      'profileName': 'Adela, 21',
      'country': 'Canada',
    },
    {
      'imagePath': 'assets/image/agnes.png',
      'profileName': 'Agnes, 20',
      'country': 'Italy',
    },
  ];

@override
Widget build(BuildContext context) {
  
  final screenWidth = MediaQuery.of(context).size.width;

  
  final columnWidth = screenWidth / 2;

 
  final aspectRatio = columnWidth / 310; 

  return GridView.builder(
    itemCount: profiles.length,
    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      maxCrossAxisExtent: columnWidth,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      childAspectRatio: aspectRatio,
    ),
    itemBuilder: (BuildContext context, int index) {
      final profile = profiles[index];
      final imagePath = profile['imagePath']!;
      final profileName = profile['profileName']!;
      final country = profile['country']!;
      return ProfileCard(
        key: ValueKey("$index"),
        imagePath: imagePath,
        theme: Theme.of(context).textTheme,
        profileName: profileName,
        country: country,
      );
    },
  );
}
}