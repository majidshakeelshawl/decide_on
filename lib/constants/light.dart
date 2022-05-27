import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

// Colors
const klBackgroundColorScaffold = Color(0xffCDC2AE);
const klBackgroundColorHomeClipper = Color(0xffECE5C7);
const klBorderColorEmailPasswordTextField = Color(0xff065C6F);

// Icons
const klIconEmailTextField = FaIcon(
  FontAwesomeIcons.envelope,
  color: Color(0xff065C6F),
);
const klIconPasswordTextField = FaIcon(
  FontAwesomeIcons.userShield,
  color: Color(0xff065C6F),
);

// Fonts
klFontLogo(BuildContext context) {
  return (GoogleFonts.fredokaOne(
    textStyle: TextStyle(
      fontSize: MediaQuery.of(context).size.height * 0.08,
      color: const Color(0xff065C6F),
    ),
  ));
}

klFontTagLine(BuildContext context) {
  return (GoogleFonts.chewy(
    textStyle: TextStyle(
      fontSize: MediaQuery.of(context).size.height * 0.03,
      color: const Color(0xff354259),
    ),
  ));
}

klFontEmailHint(BuildContext context) {
  return (GoogleFonts.akayaTelivigala(
    fontSize: 18,
    color: const Color(0xff065C6F),
  ));
}

klFontEmailUser(BuildContext context) {
  return (GoogleFonts.stylish(
    fontSize: 18,
    color: const Color(0xff354259),
  ));
}

klFontPasswordHint(BuildContext context) {
  return (GoogleFonts.akayaTelivigala(
    fontSize: 18,
    color: const Color(0xff065C6F),
  ));
}

klFontPasswordUser(BuildContext context) {
  return (GoogleFonts.viga(
    fontSize: 18,
    color: const Color(0xff354259),
  ));
}
