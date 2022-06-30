import 'package:flutter/material.dart';
import 'package:flutter_shpx/constants/constants.dart';

class SHPXMenuDrawer extends StatelessWidget {
  const SHPXMenuDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(50),
      ),
      child: SafeArea(
        child: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            controller: ScrollController(),
            children: [
              SizedBox(
                height: 50,
                child: Material(
                  shadowColor: Colors.blueGrey.shade50.withOpacity(0.3),
                  elevation: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.search),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.shopping_cart_outlined),
                      ),
                    ],
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text("Home", style: SHPXFonts.menuItemActive),
              ),
              TextButton(
                onPressed: () {},
                child: Text("About", style: SHPXFonts.menuItemActive),
              ),
              TextButton(
                onPressed: () {},
                child: Text("Products", style: SHPXFonts.menuItemActive),
              ),
              TextButton(
                onPressed: () {},
                child: Text("Contact", style: SHPXFonts.menuItemActive),
              )
            ],
          ),
        ),
      ),
    );
  }
}
