import 'package:flutter/material.dart';
import 'package:dating_app/constants/app_colors.dart';

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
  Size get preferredSize => const Size.fromHeight(56);
}

class _NavigationMenuState extends State<NavigationMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: 20,
        left: 20,
        bottom: 20,
        top: 2,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color(0xFF252527),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildIconButton(Icons.home, 0),
            _buildIconButton(Icons.favorite, 1,),
            _buildIconButton(Icons.message_rounded, 2),
            _buildIconButton(Icons.person_outline_rounded, 3),
          ],
        ),
      ),
    );
  }

  Widget _buildIconButton(IconData icon, int pageIndex) {
    return GestureDetector(
      onTap: () {
        widget.onItemTapped?.call(pageIndex);
      },
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: widget.pageIndex == pageIndex ? AppColors.colorPrimary : Colors.transparent,
        ),
        child: Icon(
          icon,
          color: AppColors.bgColor,
          size: 32,
        ),
        padding: const EdgeInsets.all(12),
      ),
    );
  }
}
