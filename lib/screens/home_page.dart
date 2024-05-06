import '../Constants/app_colors.dart';
import '../widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import '../widgets/profile_row.dart';
import '../widgets/tab_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    const String imagePath1 = 'assets/image/jenny_23.png';
    const String imagePath2 = 'assets/image/corolina.jpg';
    const String imagePath3 = 'assets/image/laurent.png';
    const String imagePath4 = 'assets/image/lily.png';
    const String imagePath5 = 'assets/image/adela.png';
    const String imagePath6 = 'assets/image/agnes.png';

    return Scaffold(
      appBar: CustomAppBar(theme: textTheme),
      body: Padding(
        padding:
            const EdgeInsets.only(right: 26, left: 26, top: 20, bottom: 20),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Color(0xFFFAFAFA),
                  borderRadius: BorderRadius.circular(200)),
              child: Row(
                children: [
                  TabButton(
                    textTheme: textTheme,
                    backgroungColor: AppColors.colorPrimary,
                    text: "Near You",
                  ),
                  TabButton(
                    textTheme: textTheme,
                    backgroungColor: Colors.transparent,
                    text: "New Matches",
                    isRight: true,
                  ),
                ],
              ),
            ),
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
                        imagePath1: imagePath3,
                        imagePath2: imagePath4,
                        profileName1: 'Laurent, 27',
                        profileName2: 'Lily James, 29',
                        countryCard1: 'New York, USA',
                        countryCard2: 'Malaysia',
                      ),
                      ProfileRow(
                        imagePath1: imagePath5,
                        imagePath2: imagePath6,
                        profileName1: 'Adela, 21',
                        profileName2: 'Agnes, 24',
                        countryCard1: 'Canada',
                        countryCard2: 'Italy',
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
