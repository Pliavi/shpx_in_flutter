part of '../home_page.dart';

class _ProductSection extends StatelessWidget {
  const _ProductSection({Key? key}) : super(key: key);

  final _productList = const [
    _ProductCard(
      name: "Chaise Molle",
      imagePath: "assets/images/product-1.png",
      price: "\$28,00",
    ),
    _ProductCard(
      name: "Beau Tableau",
      imagePath: "assets/images/product-2.png",
      price: "\$48,00",
    ),
    _ProductCard(
      name: "Luminaire Moderne",
      imagePath: "assets/images/product-3.png",
      price: "\$22,00",
    ),
    _ProductCard(
      name: "Chaise Molle",
      imagePath: "assets/images/product-4.png",
      price: "\$32,00",
    ),
    _ProductCard(
      name: "Canapé D'Angle",
      imagePath: "assets/images/product-5.png",
      price: "\$78,00",
    ),
    _ProductCard(
      name: "Chaise Ronde",
      imagePath: "assets/images/product-6.png",
      price: "\$18,00",
    ),
  ];

  final _categories = const [
    "All",
    "Lamp",
    "Chair",
    "Table",
    "Sofa",
  ];

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final isScreenMedium = screenSize.width > 768;
    final isScreenLarge = screenSize.width > 900;
    final titleTextStyle = SHPXFonts.serifTitle;
    final seeAllTextStyle = SHPXFonts.button;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Products", style: titleTextStyle),
            if (!isScreenLarge)
              Row(
                children: [
                  Text("All", style: seeAllTextStyle),
                  const Icon(Icons.arrow_drop_down)
                ],
              )
          ],
        ),
        const SizedBox(height: 20),
        if (isScreenMedium)
          Column(
            children: [
              Wrap(
                spacing: 16,
                alignment: WrapAlignment.center,
                children: _categories
                    .mapIndexed(
                      (index, category) => TextButton(
                        onPressed: () {},
                        child: Text(
                          category,
                          style: index == 0
                              ? SHPXFonts.menuItemActive
                              : SHPXFonts.menuItem,
                        ),
                      ),
                    )
                    .toList(),
              ),
              const SizedBox(height: 40),
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: isScreenLarge ? 3 : 2,
                crossAxisSpacing: 30,
                mainAxisSpacing: 90,
                childAspectRatio: 1,
                clipBehavior: Clip.none,
                children: _productList,
              ),
            ],
          )
        else
          SizedBox(
            height: 365,
            child: ListView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              clipBehavior: Clip.none,
              children: _productList,
            ),
          )
      ],
    );
  }
}
