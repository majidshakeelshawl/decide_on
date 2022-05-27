import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

kLogoFont(BuildContext context) {
  return (GoogleFonts.fredokaOne(
    textStyle: TextStyle(
      fontSize: MediaQuery.of(context).size.height * 0.08,
      color: const Color(0xff065C6F),
    ),
  ));
}

kTagLineFont(BuildContext context) {
  return (GoogleFonts.chewy(
    textStyle: TextStyle(
      fontSize: MediaQuery.of(context).size.height * 0.03,
      color: const Color(0xff354259),
    ),
  ));
}
