part of '../home_page.dart';

class _ProductCard extends StatelessWidget {
  const _ProductCard({
    Key? key,
    this.margin = const EdgeInsets.all(16.0),
    this.name = "Chaise Molle",
    this.price = "\$18,00",
    required this.imagePath,
  }) : super(key: key);

  final EdgeInsets margin;
  final String name;
  final String price;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    final nameTheme = SHPXFonts.productTitle;
    final priceTheme = SHPXFonts.productPrice;

    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        margin: margin,
        padding: const EdgeInsets.symmetric(vertical: 38, horizontal: 36),
        width: 286,
        decoration: const BoxDecoration(
          color: SHPXColors.primary,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: nameTheme,
              overflow: TextOverflow.fade,
              softWrap: false,
            ),
            Text(price, style: priceTheme),
            const SizedBox(height: 8),
            SizedBox(
              height: 0,
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  PositionedDirectional(
                    bottom: -constraints.maxHeight + 90,
                    child: Image.asset(
                      imagePath,
                      height: (constraints.maxHeight * 0.6).clamp(0, 250),
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    });
  }
}
