import 'package:flutter/material.dart';
import 'package:dating_app/constants/app_colors.dart';
import 'package:flutter_svg/svg.dart';
import '../constants/app_assets.dart';

class NavigationMenu extends StatefulWidget implements PreferredSizeWidget {
  final int pageIndex;
  final ValueChanged<int>? onItemTapped;

  const NavigationMenu({
    Key? key,
    required this.pageIndex,
    this.onItemTapped,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
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
                AppAssets.homeIconPath,
                // ignore: deprecated_member_use
                color: widget.pageIndex == 0 ? Colors.white : null,
              ),
              0,
            ),
            _buildIconButton(
              SvgPicture.asset(
                AppAssets.favoriteIconPath,
                // ignore: deprecated_member_use
                color: widget.pageIndex == 1 ? Colors.white : null,
              ),
              1,
            ),
            _buildIconButton(
              SvgPicture.asset(
                AppAssets.messageIconPath,
                // ignore: deprecated_member_use
                color: widget.pageIndex == 2 ? Colors.white : null,
              ),
              2,
            ),
            _buildIconButton(
              SvgPicture.asset(
                AppAssets.userIconPath,
                // ignore: deprecated_member_use
                color: widget.pageIndex == 3 ? Colors.white : null,
              ),
              3,
            ),
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
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: widget.pageIndex == pageIndex
              ? AppColors.colorPrimary
              : Colors.transparent,
        ),
        child: icon,
      ),
    );
  }
}
