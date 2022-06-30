part of '../home_page.dart';

class _ProductShowcase extends StatefulWidget {
  const _ProductShowcase({Key? key}) : super(key: key);

  @override
  State<_ProductShowcase> createState() => _ProductShowcaseState();
}

class _ProductShowcaseState extends State<_ProductShowcase> {
  final _slides = ShowCaseSlideMock.slides;
  int _selectedIndex = 0;

  get _currentSlide => _slides[_selectedIndex];

  void _onNext() {
    setState(() {
      _selectedIndex = (_selectedIndex + 1) % _slides.length;
    });
  }

  void _onPrevious() {
    setState(() {
      _selectedIndex = (_selectedIndex - 1) % _slides.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return LayoutBuilder(
      builder: (context, constraints) {
        final widgetWidth = constraints.maxWidth;
        final screenMargin = (screenWidth - widgetWidth) / 2.0;
        final isLargeScreen = widgetWidth > 768;

        return isLargeScreen
            ? _LargeScreenSlider(
                key: ValueKey(_selectedIndex),
                onNext: _onNext,
                onPrevious: _onPrevious,
                slide: _currentSlide,
                screenMargin: screenMargin,
              )
            : _SmallScreenSlider(
                key: ValueKey(_selectedIndex),
                onNext: _onNext,
                onPrevious: _onPrevious,
                slide: _currentSlide,
              );
      },
    );
  }
}

class _SmallScreenSlider extends StatelessWidget {
  const _SmallScreenSlider({
    required super.key,
    required this.slide,
    required this.onNext,
    required this.onPrevious,
  });

  final ShowCaseSlide slide;
  final VoidCallback onNext;
  final VoidCallback onPrevious;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final titleTextStyle = SHPXFonts.serifTitle;
    final contentTextStyle = SHPXFonts.body;

    return LayoutBuilder(builder: (_, constraints) {
      final widgetWidth = constraints.maxWidth;
      final screenMargin = (widgetWidth - screenWidth) / 2.0;

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
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    child: Container(
                      key: key,
                      width: screenWidth.clamp(0, 1280 - 34),
                      height: 380,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(60),
                        ),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(slide.image),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 40),
          Text(
            slide.title,
            style: titleTextStyle,
          ),
          const SizedBox(height: 16),
          Text(
            slide.content,
            style: contentTextStyle,
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              _SliderButton(onClick: onPrevious, icon: Icons.arrow_back),
              const SizedBox(width: 12),
              _SliderButton(onClick: onNext, icon: Icons.arrow_forward),
            ],
          )
        ],
      );
    });
  }
}

class _LargeScreenSlider extends StatelessWidget {
  const _LargeScreenSlider({
    required super.key,
    required this.screenMargin,
    required this.slide,
    required this.onPrevious,
    required this.onNext,
  });

  final double screenMargin;
  final ShowCaseSlide slide;
  final VoidCallback onPrevious;
  final VoidCallback onNext;

  @override
  Widget build(BuildContext context) {
    final titleTextStyle = SHPXFonts.serifTitle;
    final contentTextStyle = SHPXFonts.body;

    return Column(
      children: [
        SizedBox(
          height: 0,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                height: 86,
                left: -screenMargin,
                top: 65,
                width: screenMargin,
                child: Container(
                  color: SHPXColors.primary,
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Flexible(
              flex: 2,
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                child: AspectRatio(
                  key: key,
                  aspectRatio: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(60),
                      ),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(slide.image),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 16),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    slide.title,
                    style: titleTextStyle,
                  ),
                  SizedBox(height: 16),
                  Text(
                    slide.content,
                    style: contentTextStyle,
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      _SliderButton(
                        onClick: onPrevious,
                        icon: Icons.arrow_back,
                      ),
                      SizedBox(width: 16),
                      _SliderButton(
                        onClick: onNext,
                        icon: Icons.arrow_forward,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}

class _SliderButton extends StatelessWidget {
  const _SliderButton({required this.onClick, required this.icon});

  final VoidCallback? onClick;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: const RoundedRectangleBorder(),
          backgroundColor: SHPXColors.primary,
        ),
        onPressed: onClick,
        child: Icon(icon, color: SHPXColors.darkGray),
      ),
    );
  }
}
