part of '../home_page.dart';

class _ProductCard extends StatelessWidget {
  const _ProductCard({
    Key? key,
    this.padding = const EdgeInsets.all(16.0),
    this.name = "Chaise Molle",
    this.price = "\$18,00",
    required this.imagePath,
  }) : super(key: key);

  final EdgeInsets padding;
  final String name;
  final String price;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    final nameTheme = SHPXFonts.productTitle;
    final priceTheme = SHPXFonts.productPrice;

    return Padding(
      padding: padding,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 38, horizontal: 36),
        width: 286,
        decoration: const BoxDecoration(
          color: SHPXColors.primary,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50),
          ),
        ),
        child: Column(
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
              height: 150,
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.bottomCenter,
                children: [
                  Positioned(
                    top: 30,
                    child: Image.asset(
                      imagePath,
                      height: 215,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
