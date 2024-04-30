import 'package:flutter/material.dart';
import '../constants/app_colors.dart';


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

