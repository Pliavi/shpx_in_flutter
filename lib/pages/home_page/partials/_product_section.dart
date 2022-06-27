part of '../home_page.dart';

class _ProductSection extends StatelessWidget {
  const _ProductSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final titleTextStyle = SHPXFonts.serifTitle;
    final seeAllTextStyle = SHPXFonts.button;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Products", style: titleTextStyle),
            Row(
              children: [
                Text("All", style: seeAllTextStyle),
                const Icon(Icons.arrow_drop_down)
              ],
            )
          ],
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 365,
          child: ListView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            clipBehavior: Clip.none,
            children: const [
              _ProductCard(
                name: "Chaise Molle",
                imagePath: "assets/images/product-1.png",
              ),
              _ProductCard(
                name: "Beau Tableau",
                imagePath: "assets/images/product-2.png",
              ),
              _ProductCard(
                name: "Luminaire Moderne",
                imagePath: "assets/images/product-3.png",
              ),
            ],
          ),
        )
      ],
    );
  }
}
