import 'package:dating_app/screens/message_page.dart';
import 'package:dating_app/screens/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:dating_app/constants/typography_theme.dart';
import 'package:dating_app/screens/home_page.dart';
import 'package:dating_app/screens/favorite_page.dart';
import 'package:dating_app/widgets/navigation_menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _pageIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dating App',
      theme: TypographyTheme.appThemeData,
      home: Scaffold(
        body: _getPage(_pageIndex),
        bottomNavigationBar: NavigationMenu(
          pageIndex: _pageIndex,
          onItemTapped: _onItemTapped,
        ),
      ),
    );
  }

  Widget _getPage(int index) {
    switch (index) {
      case 0:
        return const HomePage();
      case 1:
        return const FavoritePage();
      case 2:
        return const MessagePage();
      case 4:
        return const ProfilePage();

      default:
        return Container();
    }
  }
}
