import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants/app_assets.dart';
import '../constants/app_colors.dart';

class ProfileCard extends StatelessWidget {
  final String imagePath;
  final TextTheme theme;
  final String profileName;
  final String country;

  const ProfileCard({
    Key? key,
    required this.imagePath,
    required this.theme,
    required this.profileName,
    required this.country,
  }) : super(key: key);

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
          Expanded(
            child: Container(
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
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 6, left: 14),
                      child: Text(
                        profileName,
                        style: theme.displayLarge,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16, left: 11),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            AppAssets.locationIcon,
                            width: 16,
                            height: 16,
                            // ignore: deprecated_member_use
                            color: AppColors.colorBorder,
                          ),
                          Text(country, style: theme.displaySmall),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  color: const Color(0xFFFEECEC),
                                  borderRadius: BorderRadius.circular(12)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 8, top: 8),
                                child: SvgPicture.asset(
                                  AppAssets.likeIcon,
                                  width: 10,
                                  height: 10,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 6,
                          ),
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
                                  AppAssets.hiIcon,
                                  width: 14,
                                  height: 14,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
