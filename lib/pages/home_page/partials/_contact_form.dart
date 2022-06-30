part of '../home_page.dart';

class _ContactForm extends StatelessWidget {
  const _ContactForm();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isScreenLarge = screenWidth > 768;
    final titleTextStyle = SHPXFonts.serifTitle;
    final buttonTextStyleWhite = SHPXFonts.button.copyWith(color: Colors.white);
    final buttonTextStyle = SHPXFonts.button;

    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: SHPXColors.primary,
        borderRadius: BorderRadius.only(topRight: Radius.circular(50)),
      ),
      padding: EdgeInsets.all(isScreenLarge ? 90 : 40),
      child: Column(
        children: [
          Text(
            "Get your quotation today",
            style: titleTextStyle,
          ),
          const SizedBox(height: 14),
          Wrap(
            spacing: 14,
            runSpacing: 14,
            children: [
              TextButton(
                style: TextButton.styleFrom(
                  fixedSize: const Size(175, 50),
                  backgroundColor: Colors.grey.shade700,
                  shape: const BeveledRectangleBorder(),
                ),
                onPressed: () {},
                child: Text("Quote me", style: buttonTextStyleWhite),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  fixedSize: const Size(175, 50),
                  backgroundColor: Colors.white,
                  shape: const BeveledRectangleBorder(),
                ),
                onPressed: () {},
                child: Text("Contact sales", style: buttonTextStyle),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
