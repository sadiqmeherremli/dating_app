import 'package:dating_app/widgets/profile_grid.dart';
import 'package:flutter/material.dart';



class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {


  @override
  Widget build(BuildContext context) {
   

    return Scaffold(
      appBar: AppBar(title: Text("Favorites")),
      body: Padding(
        padding:
            const EdgeInsets.only(right: 26, left: 26, top: 20, bottom: 20),
        child: Column(
          children: [
           
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
