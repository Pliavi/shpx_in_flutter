part of '../home_page.dart';

class _HeroSlider extends StatelessWidget {
  const _HeroSlider({Key? key}) : super(key: key);

  final images = const [
    "https://images.unsplash.com/photo-1592222376988-92af20d4d06c"
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final titleTextStyle = SHPXFonts.serifTitle.copyWith(height: 1.0);
    final contentTextStyle = SHPXFonts.caption;

    return SizedBox(
      height: 365,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            left: 66,
            width: width.clamp(0, 1280 - 66),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(60),
              ),
              child: Image.network(
                width: width,
                height: 365,
                images[0],
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 63,
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  color: Colors.white.withOpacity(0.78),
                  width: 234,
                  padding: const EdgeInsets.symmetric(vertical: 32.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Modern Interior\nfor your\nDream House",
                        style: titleTextStyle,
                      ),
                      const SizedBox(height: 16.0),
                      SizedBox(
                        width: 167,
                        child: Text(
                          "We custom make design to suits your needs.",
                          style: contentTextStyle,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
