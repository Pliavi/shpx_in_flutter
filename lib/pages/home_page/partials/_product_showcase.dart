part of '../home_page.dart';

class _ProductShowcase extends StatelessWidget {
  const _ProductShowcase({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    final titleTextStyle = SHPXFonts.serifTitle;
    final contentTextStyle = SHPXFonts.body;

    return LayoutBuilder(builder: (_, constraints) {
      final widgetWidth = constraints.maxWidth;
      final screenMargin = (widgetWidth - screenWidth) / 2;

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 380,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  right: screenMargin,
                  top: 65,
                  width: screenWidth,
                  child: Container(
                    color: SHPXColors.primary,
                    height: 86,
                    width: screenWidth,
                  ),
                ),
                Positioned(
                  left: 34,
                  child: Container(
                    width: screenWidth,
                    height: 380,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(60),
                      ),
                      image: DecorationImage(
                        image: AssetImage("assets/images/kitchen.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 40),
          Text(
            "Showcase",
            style: titleTextStyle,
          ),
          const SizedBox(height: 16),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. A, eleifend viverra nam libero tellus. Luctus ornare ac, dolor tempor pellentesque nec.",
            style: contentTextStyle,
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              SizedBox(
                width: 50,
                height: 50,
                child: TextButton(
                  style: TextButton.styleFrom(
                    shape: const RoundedRectangleBorder(),
                    backgroundColor: SHPXColors.primary.withOpacity(0.5),
                  ),
                  onPressed: null,
                  child: Icon(
                    Icons.arrow_back,
                    color: SHPXColors.darkGray.withOpacity(0.5),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              SizedBox(
                width: 50,
                height: 50,
                child: TextButton(
                  style: TextButton.styleFrom(
                    shape: const RoundedRectangleBorder(),
                    backgroundColor: SHPXColors.primary,
                  ),
                  onPressed: () {},
                  child: const Icon(Icons.arrow_forward,
                      color: SHPXColors.darkGray),
                ),
              ),
            ],
          )
        ],
      );
    });
  }
}
