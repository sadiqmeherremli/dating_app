import '../Constants/app_colors.dart';
import '../widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import '../widgets/profile_row.dart';
import '../widgets/tab_button.dart';

class HomePage extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const HomePage({Key? key});
  

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    // Sabit fotoğraf yolları
    const String imagePath1 = 'assets/image/jenny_23.png';
    const String imagePath2 = 'assets/image/corolina.jpg';
    const String imagePath3 = 'assets/image/laurent.png';
    const String imagePath4 = 'assets/image/liyy.png';

    return Scaffold(
      appBar: CustomAppBar(theme: textTheme),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
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
            const SizedBox(height: 24),
            Expanded(
              child: ListView.builder(
                itemCount: 2, // Toplam iki satır olacak
                itemBuilder: (context, index) {
                  return const Column(
                    children: [
                      // Profil satırı 1
                      ProfileRow(
                        imagePath1: imagePath1,
                        imagePath2: imagePath2,
                      ),
                  
                      // Profil satırı 2
                      ProfileRow(
                        imagePath1: imagePath1,
                        imagePath2: imagePath2,
                      ),
                     // Satırlar arası boşluk
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

