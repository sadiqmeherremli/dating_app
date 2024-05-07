import 'package:flutter/material.dart';
import 'package:dating_app/constants/typography_theme.dart';
import 'package:dating_app/screens/home_page.dart';
import 'package:dating_app/screens/favorite_page.dart';
import 'package:dating_app/widgets/navigation_menu.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dating App',
      theme: TypographyTheme.appThemeData,
      initialRoute: '/', // Ana sayfa için '/'
      routes: {
        '/': (context) => Scaffold(
          body: HomePage(),
          bottomNavigationBar: NavigationMenu(
            pageIndex: 0,
            onItemTapped: (index) {
              if (index != 0) {
                switch (index) {
                  case 1:
                    Navigator.pushNamed(context, '/favorite');
                    break;
                     case 2:
                    Navigator.pushNamed(context, '/message');
                    break;
                     case 3:
                    Navigator.pushNamed(context, '/profile');
                    break;
                     case 4:
                   default:
                    break;
                }
              }
            },
          ),
        ),
        '/favorite': (context) => Scaffold(
          body: FavoritePage(), // Burada FavoritePage yerine diğer sayfaları ekleyebilirsiniz
          bottomNavigationBar: NavigationMenu(
            pageIndex: 1,
            onItemTapped: (index) {
              if (index == 0) {
                Navigator.popUntil(context, ModalRoute.withName('/'));
              } else if (index != 1) {
                Navigator.pushNamed(context, '/');
              }
            },
          ),
        ),
        // Diğer sayfaların yönlendirmelerini burada ekleyebilirsiniz
      },
    );
  }
}
