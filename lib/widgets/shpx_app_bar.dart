import 'package:flutter/material.dart';
import 'package:flutter_shpx/constants/colors.dart';
import 'package:flutter_shpx/constants/fonts.dart';

class SHPXAppBar extends StatefulWidget implements PreferredSizeWidget {
  const SHPXAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(390);

  @override
  State<SHPXAppBar> createState() => _SHPXAppBarState();
}

class _SHPXAppBarState extends State<SHPXAppBar> {
  bool _isScrolledUnder = false;

  ScrollNotificationObserverState? _scrollNotificationObserver;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _scrollNotificationObserver?.removeListener(_handleScrollNotification);
    _scrollNotificationObserver = ScrollNotificationObserver.of(context);
    _scrollNotificationObserver?.addListener(_handleScrollNotification);
  }

  @override
  void dispose() {
    if (_scrollNotificationObserver != null) {
      _scrollNotificationObserver!.removeListener(_handleScrollNotification);
      _scrollNotificationObserver = null;
    }
    super.dispose();
  }

  void _handleScrollNotification(ScrollNotification notification) {
    if (notification is ScrollUpdateNotification) {
      final bool oldScrolledUnder = _isScrolledUnder;
      _isScrolledUnder = notification.depth == 0 &&
          notification.metrics.extentBefore > 0 &&
          notification.metrics.axis == Axis.vertical;
      if (_isScrolledUnder != oldScrolledUnder) {
        setState(() {});
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isScreenLarge = screenWidth > 768;

    return isScreenLarge
        ? _LargeAppBar(isScrolledUnder: _isScrolledUnder)
        : _SmallAppBar(isScrolledUnder: _isScrolledUnder);
  }
}

class _SmallAppBar extends StatelessWidget {
  const _SmallAppBar({required this.isScrolledUnder});

  final bool isScrolledUnder;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: isScrolledUnder ? 4 : 0,
      shadowColor: Colors.black12,
      color: isScrolledUnder ? null : Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 36),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("SHPX", style: SHPXFonts.serifTitle),
            TextButton(
              style: TextButton.styleFrom(fixedSize: const Size.square(50)),
              onPressed: () => Scaffold.of(context).openEndDrawer(),
              child: Image.asset(
                "assets/icons/menu.png",
                width: 30,
                height: 20,
              ),
            ),
            // AppBar()
          ],
        ),
      ),
    );
  }
}

class _LargeAppBar extends StatelessWidget {
  const _LargeAppBar({required this.isScrolledUnder});

  final bool isScrolledUnder;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: isScrolledUnder ? 4 : 0,
      shadowColor: Colors.black12,
      color: isScrolledUnder ? null : Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 36),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("SHPX", style: SHPXFonts.serifTitle),
            Wrap(
              spacing: 60,
              children: [
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
            Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Icon(
                    Icons.search,
                    color: SHPXColors.darkGray,
                  ),
                ),
                const SizedBox(width: 8),
                TextButton(
                  onPressed: () {},
                  child: const Icon(
                    Icons.shopping_cart_outlined,
                    color: SHPXColors.darkGray,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
