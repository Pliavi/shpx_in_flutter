import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class SHPXFonts {
  static final body = GoogleFonts.roboto(
    textStyle: const TextStyle(
      fontSize: 20,
      height: 1.5,
      color: Color(0xff737373),
    ),
  );

  static final button = GoogleFonts.roboto(
    textStyle: const TextStyle(
      fontSize: 20,
      height: 1.5,
      fontWeight: FontWeight.w500,
      color: Color(0xff4b4b4b),
    ),
  );

  static final caption = GoogleFonts.roboto(
    textStyle: const TextStyle(
      fontSize: 12,
      height: 1.2,
      color: Color(0xff737373),
    ),
  );

  static final menuItem = GoogleFonts.roboto(
    textStyle: const TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w500,
      color: Color(0x884b4b4b),
    ),
  );

  static final menuItemActive = GoogleFonts.roboto(
    textStyle: const TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w500,
      color: Color(0xff4b4b4b),
    ),
  );

  static final serifTitle = GoogleFonts.dmSerifDisplay(
    textStyle: const TextStyle(
      fontSize: 30,
      color: Color(0xff4b4b4b),
      letterSpacing: 0,
    ),
  );

  static final productTitle = GoogleFonts.dmSerifDisplay(
    textStyle: const TextStyle(
      fontSize: 26,
      color: Color(0xff4b4b4b),
      letterSpacing: 0,
    ),
  );

  static final productPrice = GoogleFonts.dmSerifDisplay(
    textStyle: const TextStyle(
      fontSize: 20,
      color: Color(0xff737373),
      letterSpacing: 0,
    ),
  );
}
