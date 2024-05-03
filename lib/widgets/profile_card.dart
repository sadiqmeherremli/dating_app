import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';  
import '../constants/app_colors.dart';

class ProfileCard extends StatelessWidget {
  final String imagePath; 
  final TextTheme theme;

  const ProfileCard({Key? key, required this.imagePath,  required this.theme}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 143,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
              boxShadow: const [
                BoxShadow(
                  color: AppColors.bgColor,
                  spreadRadius: 0,
                  blurRadius: 0,
                  offset: Offset(0, 0),
                ),
              ],
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(14),
                topRight: Radius.circular(14),
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(color: AppColors.bgColor),
              ],
              color: AppColors.bgColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(14),
                bottomRight: Radius.circular(14),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 14,top: 10), 
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 6),
                    child: Text("Jenny, 23", style: theme.displayLarge),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: Row(
                      children: [
                        const Icon(Icons.location_on, size: 16, color: AppColors.colorBorder),
                        Text("Indonesia",style: theme.displaySmall),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFFFEECEC),
                            borderRadius: BorderRadius.circular(12)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 8, top:8),
                        
                            child: SvgPicture.asset(
                              "assets/image/icon_like.svg",
                              width: 10,
                              height: 10,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 6,),
                       Expanded(
                         child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFFFAFAFA),
                              borderRadius: BorderRadius.circular(12)),
                          child: Padding(
                              padding: const EdgeInsets.only(
                                top: 6,
                                bottom: 6,
                              ),
                              child: Image.asset(
                                "assets/image/icon_hi.png",
                                width: 14,
                                height: 14,
                              )),
                        ),
                      ),
                      const SizedBox(
                        width: 14,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


