import 'package:flutter/material.dart';

import '../widgets/profile_row.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    const String imagePath1 = 'assets/image/jenny_23.png';
    const String imagePath2 = 'assets/image/corolina.jpg';

    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 24),
            Expanded(
              child: ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return const Column(
                    children: [
                      ProfileRow(
                        imagePath1: imagePath1,
                        imagePath2: imagePath2,
                        profileName1: 'Jenny, 23',
                        profileName2: 'Caroline Sky, 29',
                        countryCard1: 'Indonesia',
                        countryCard2: 'Spain',
                      ),
                      ProfileRow(
                        imagePath1: imagePath1,
                        imagePath2: imagePath2,
                        profileName1: 'Laurent, 27',
                        profileName2: 'Lily James, 29',
                        countryCard1: 'New York, USA',
                        countryCard2: 'Malaysia',
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
