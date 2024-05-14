import 'package:flutter/material.dart';
import 'profile_card.dart';

class ProfileRow extends StatelessWidget {
  final String imagePath1;
  final String imagePath2;
  final String profileName1;
  final String profileName2;
  final String countryCard1;
  final String countryCard2;

  const ProfileRow({
    Key? key,
    required this.imagePath1,
    required this.imagePath2,
    required this.profileName1,
    required this.profileName2,
    required this.countryCard1,
    required this.countryCard2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Expanded(
            child: ProfileCard(
              imagePath: imagePath1,
              theme: textTheme,
              profileName: profileName1,
              country: countryCard1,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: ProfileCard(
              imagePath: imagePath2,
              theme: textTheme,
              profileName: profileName2,
              country: countryCard2,
            ),
          ),
        ],
      ),
    );
  }
}

