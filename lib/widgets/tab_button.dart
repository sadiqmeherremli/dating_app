import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

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

