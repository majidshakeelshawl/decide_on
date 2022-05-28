import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

// Colors
const klBackgroundColorScaffold = Color(0xffF6F6F6); //CDC2AE
const klBackgroundColorHomeClipper = Color(0xffC0D9E5); //ECE5C7
const klBorderColorEmailPasswordTextField = Color(0xff065C6F);
const klBorderColorLoginButton = Color(0x96065C6F);
const klBorderColorSignUpButton = Color(0xff64958F);
const klColorLoginButton = Color(0x86065C6F);
const klColorSignUpButton = Color(0x66065C6F);

// Icons
const klIconEmailTextField = FaIcon(
  FontAwesomeIcons.envelope,
  color: Color(0xff065C6F),
);
const klIconPasswordTextField = FaIcon(
  FontAwesomeIcons.userShield,
  color: Color(0xff065C6F),
);
klIconCompanyLogo(BuildContext context) {
  return (const FaIcon(
    FontAwesomeIcons.canadianMapleLeaf,
    size: 20,
    color: Color(0xff065C6F),
  ));
}

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
    fontSize: MediaQuery.of(context).size.width * 0.04,
    color: const Color(0xff065C6F),
  ));
}

klFontEmailUser(BuildContext context) {
  return (GoogleFonts.outfit(
    fontSize: MediaQuery.of(context).size.width * 0.05,
    color: const Color(0xff354259),
  ));
}

klFontPasswordHint(BuildContext context) {
  return (GoogleFonts.akayaTelivigala(
    fontSize: MediaQuery.of(context).size.width * 0.04,
    color: const Color(0xff065C6F),
  ));
}

klFontPasswordUser(BuildContext context) {
  return (GoogleFonts.viga(
    fontSize: MediaQuery.of(context).size.width * 0.05,
    color: const Color(0xff354259),
  ));
}

klFontLoginSignUpButton(BuildContext context) {
  return (GoogleFonts.viga(
    fontSize: MediaQuery.of(context).size.width * 0.04,
    color: const Color(0xff000000),
  ));
}

klFontCompanyName(BuildContext context) {
  return (GoogleFonts.josefinSans(
    color: const Color(0xff065C6F),
  ));
}
