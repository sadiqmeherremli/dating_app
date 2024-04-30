import 'package:flutter/material.dart';
import 'profile_card.dart'; // Profil kartı widget'ını içeriye dahil edin

class ProfileRow extends StatelessWidget {
  final String imagePath1; // İlk fotoğrafın yolu
  final String imagePath2; // İkinci fotoğrafın yolu
  

  const ProfileRow({
    Key? key,
    required this.imagePath1,
    required this.imagePath2,
  }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Expanded(
            child: ProfileCard(imagePath: imagePath1, theme: textTheme, ), // İlk fotoğraf için Profil Kartı
          ),
          SizedBox(width: 10), // İki profil arasında boşluk bırakır
          Expanded(
            child: ProfileCard(imagePath: imagePath2, theme: textTheme, ), // İkinci fotoğraf için Profil Kartı
          ),
        ],
      ),
    );
  }
}

