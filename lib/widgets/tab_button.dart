import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class TabButton extends StatefulWidget {
  const TabButton({
    Key? key,
    required this.textTheme,
    required this.backgroundColor,
    required this.text,
    this.isRight = false,
    required this.onPressed,
    required this.isSelected,
  }) : super(key: key);

  final TextTheme textTheme;
  final Color backgroundColor;
  final String text;
  final bool isRight;
  final VoidCallback onPressed;
  final bool isSelected;

  @override
  // ignore: library_private_types_in_public_api
  _TabButtonState createState() => _TabButtonState();
}

class _TabButtonState extends State<TabButton> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          widget.onPressed();
        },
        child: Container(
          decoration: BoxDecoration(
            color:
                widget.isSelected ? AppColors.colorPrimary : Color(0xFFFAFAFA),
            borderRadius: BorderRadius.circular(200),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 14),
            child: Center(
              child: Text(
                widget.text,
                style: widget.textTheme.displayLarge?.copyWith(
                  color: widget.isSelected
                      ? AppColors.colorWhite
                      : AppColors.colorBlack,
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
