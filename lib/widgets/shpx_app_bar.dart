import 'package:flutter/material.dart';
import 'package:flutter_shpx/constants/fonts.dart';

class SHPXAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SHPXAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return AppBar(
      toolbarHeight: 100,
      backgroundColor: Colors.white,
      actions: (width < 768)
          ? null
          : [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart_outlined),
              ),
            ],
      title: (width < 768)
          ? null
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text("Home", style: SHPXFonts.menuItemActive),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("About", style: SHPXFonts.menuItem),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("Products", style: SHPXFonts.menuItem),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("Contact", style: SHPXFonts.menuItem),
                )
              ],
            ),
      leadingWidth: 100,
      leading: Padding(
        padding: const EdgeInsets.only(left: 28),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text("SHPX", style: SHPXFonts.serifTitle),
        ),
      ),
    );
  }
}
