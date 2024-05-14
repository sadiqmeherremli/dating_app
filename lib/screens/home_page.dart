import '../constants/app_colors.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/profile_grid.dart';
import 'package:flutter/material.dart';
import '../widgets/tab_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isNearYouSelected = true;
  bool _isNewMatchesSelected = false;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: CustomAppBar(theme: textTheme),
      body: Padding(
        padding:
            const EdgeInsets.only(right: 26, left: 26, top: 20, bottom: 20),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: const Color(0xFFFAFAFA),
                  borderRadius: BorderRadius.circular(200)),
              child: Row(
                children: [
                  TabButton(
                    onPressed: () {
                      setState(() {
                        _isNearYouSelected = true;
                        _isNewMatchesSelected = false;
                      });
                    },
                    text: "Near You",
                    textTheme: textTheme,
                    backgroundColor: _isNearYouSelected
                        ? AppColors.colorPrimary
                        : Colors.white,
                    isSelected: _isNearYouSelected,
                  ),
                  TabButton(
                    onPressed: () {
                      setState(() {
                        _isNearYouSelected = false;
                        _isNewMatchesSelected = true;
                      });
                    },
                    text: "New Matches",
                    isRight: true,
                    textTheme: textTheme,
                    backgroundColor: _isNewMatchesSelected
                        ? AppColors.colorPrimary
                        : Colors.white,
                    isSelected: _isNewMatchesSelected,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Expanded(
              child: ProfileGrid(),
            ),
          ],
        ),
      ),
    );
  }
}
