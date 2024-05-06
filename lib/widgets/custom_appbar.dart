import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../constants/app_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.theme,
  });
  final TextTheme theme;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.bgColor,
      leadingWidth:80 ,
      leading: const Padding(
  padding: EdgeInsets.only(left: 26),
  child: CircleAvatar(
    radius: 22, 
          backgroundImage: AssetImage("assets/image/profile_picture.jpg"),
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hello,Sadig",
            style: theme.displayLarge,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset(
                "assets/icon/location_icon.svg",
                width: 16,
                height: 16,
              ),
              Text(
                "Baku, Azerbaijan",
                style: theme.displaySmall,
              ),
            ],
          )
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(
            right: 26,
          ),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColors.notificationCardColor),
            child: Padding(
              padding: const EdgeInsets.all(13),
              child: SvgPicture.asset(
                "assets/icon/notification_icon.svg",
                width: 18,
                height: 19.72,
                
               
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}

