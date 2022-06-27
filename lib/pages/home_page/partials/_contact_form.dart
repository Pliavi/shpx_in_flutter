part of '../home_page.dart';

class _ContactForm extends StatelessWidget {
  const _ContactForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final titleTextStyle = SHPXFonts.serifTitle;
    final buttonTextStyleWhite = SHPXFonts.button.copyWith(color: Colors.white);
    final buttonTextStyle = SHPXFonts.button;

    return Container(
      decoration: const BoxDecoration(
        color: SHPXColors.primary,
        borderRadius: BorderRadius.only(topRight: Radius.circular(50)),
      ),
      padding: const EdgeInsets.all(40),
      child: Column(
        children: [
          Text(
            "Get your\nquotation today",
            style: titleTextStyle,
          ),
          const SizedBox(height: 14),
          TextButton(
            style: TextButton.styleFrom(
              fixedSize: const Size(175, 50),
              backgroundColor: Colors.grey.shade700,
              shape: const BeveledRectangleBorder(),
            ),
            onPressed: () {},
            child: Text("Quote me", style: buttonTextStyleWhite),
          ),
          const SizedBox(height: 14),
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
    );
  }
}
