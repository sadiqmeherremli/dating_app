import 'package:flutter/material.dart';
import 'package:dating_app/constants/app_colors.dart';
import 'package:flutter_svg/svg.dart';

class NavigationMenu extends StatefulWidget implements PreferredSizeWidget {
  final int pageIndex;
  final ValueChanged<int>? onItemTapped;

  const NavigationMenu({
    Key? key,
    required this.pageIndex,
    this.onItemTapped,
  }) : super(key: key);

  @override
  _NavigationMenuState createState() => _NavigationMenuState();

  @override
Size get preferredSize => const Size.fromHeight(kToolbarHeight);

}

class _NavigationMenuState extends State<NavigationMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: 20,
        left: 20,
        bottom: 20,
        top: 0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: const Color(0xFF252527),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildIconButton(
                SvgPicture.asset(
                  "assets/icon/home_icon.svg",
                ),
                0),
            _buildIconButton(
              SvgPicture.asset(
                "assets/icon/favorite_icon.svg",
              ),
              1,
            ),
            _buildIconButton(
                SvgPicture.asset(
                  "assets/icon/message_icon.svg",
                ),
                2),
            _buildIconButton(
                SvgPicture.asset(
                  "assets/icon/user_icon.svg",
                ),
                3),
          ],
        ),
      ),
    );
  }

  Widget _buildIconButton(Widget icon, int pageIndex) {
    return GestureDetector(
      onTap: () {
        widget.onItemTapped?.call(pageIndex);
      },
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: widget.pageIndex == pageIndex
              ? AppColors.colorPrimary
              : Colors.transparent,
        ),
        padding: const EdgeInsets.all(12),
        child: icon,
      ),
    );
  }
}
