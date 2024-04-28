import 'package:dating_app/Constants/app_colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

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
            SizedBox(height: 24),
            Expanded(
              child: ListView.builder(
                itemCount: 3, // Kaç tane ProfileRow olacağını belirleyin
                itemBuilder: (context, index) {
                  return ProfileRow();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// İki insan profili içeren bir satır widget'i
class ProfileRow extends StatelessWidget {
  const ProfileRow({Key? key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Expanded(
            child: ProfileCard(),
          ),
          SizedBox(width: 10), // İki profil arasında boşluk bırakır
          Expanded(
            child: ProfileCard(),
          ),
        ],
      ),
    );
  }
}


// Tek bir profil kartı widget'i
class ProfileCard extends StatelessWidget {
  const ProfileCard({Key? key});

  @override
  Widget build(BuildContext context) {
    return Card(
      // Profil kartı içeriği buraya gelecek
      child: Column(
        children: [
          Container(
            height: 143, // Profil kartının yüksekliği
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                color: AppColors.bgColor,
        spreadRadius: 0,
        blurRadius: 0,
        offset: Offset(0, 0), // changes position of shadow
                
              ),
              ],
              

              color: Colors.green,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(14),
                topRight: Radius.circular(14),
              ), // Örnek renk
            ),
            // Profil kartı içeriği buraya gelecek
            child: Center(
              child: Text("image"),
            ),
          ),
          Container(
            height: 99, // Profil kartının yüksekliği
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
               // changes position of shadow
                color: AppColors.bgColor
              ),],
              color: AppColors.bgColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(14),
                bottomRight: Radius.circular(14),
              ),
            ),
            // Profil kartı içeriği buraya gelecek
            child: Center(
              child: Text("about"),
            ),
          ),
        ],
      ),
    );
  }
}










class TabButton extends StatelessWidget {
  const TabButton({
    super.key,
    required this.textTheme,
    required this.backgroungColor,
    required this.text,  this.isRight = false,
  });

  final TextTheme textTheme;
  final Color backgroungColor;
  final String text;
  final bool isRight ;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: backgroungColor, borderRadius: BorderRadius.circular(200)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 14),
          child: Center(
            child: Text(
              text,
              style: textTheme.displayLarge
                  ?.copyWith(color: isRight?AppColors.colorBlack : AppColors.colorWhite, fontSize: 14),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key, required this.theme,
  });
  final TextTheme theme;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.bgColor,
      
      leading: const Icon(Icons.person),
      title:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Text("Hello,Sadig",style: theme.displayLarge ,), 
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Icon(Icons.location_on, size: 16,color: AppColors.colorPrimary, ),
            Text("Baku, Azerbaijan",style: theme.displaySmall,),
          ],
        )],
      ),
      actions: [
        
        Container( 
        
          
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColors.notificationCardColor),
            child: const Padding(
              padding: EdgeInsets.all(13),
              child: Icon(Icons.notifications_outlined),
            )),
      ],
    );
  }

  @override
  
  Size get preferredSize => const Size.fromHeight(56);
}
