import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_it_done/constants/light_theme.dart';
import 'package:get_it_done/widgets/c_clipper_widget.dart';
import 'package:get_it_done/widgets/c_text_field.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/light_dark.dart';
import '../widgets/cbutton.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        // Used to make keyboard unfocused not closing after clicking other than input
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          resizeToAvoidBottomInset:
              false, // Will not bring the bottom widgets up : fixes overflow
          backgroundColor: klScaffoldBackgroundColor,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // CLIPPER: APP NAME AND TAGLINE
              CClipperWidget(
                clipper: WaveClipperOne(),
                color: klClipperBackgroundColor,
                heightfactor: 0.25,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Get It Done",
                      style: kldLogoFont(context),
                    ),
                    Text(
                      "Help across the world",
                      style: kldTagLineFont(context),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // EMAIL PASSWORD AND BUTTONS
                    Expanded(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(
                                MediaQuery.of(context).size.width * 0.05,
                                MediaQuery.of(context).size.height * 0.1,
                                MediaQuery.of(context).size.width * 0.05,
                                0),
                            child: CTextField(
                              borderWidth: 3.0,
                              borderColor: const Color(0xff065C6F),
                              keyboardType: TextInputType.emailAddress,
                              hasIcon: true,
                              prefixIcon: const FaIcon(
                                FontAwesomeIcons.envelope,
                                color: Color(0xff065C6F),
                              ),
                              hintText: "Enter Email",
                              obscureText: false,
                              hintTextFont: GoogleFonts.akayaTelivigala(
                                fontSize: 18,
                                color: const Color(0xff065C6F),
                              ),
                              userTextFont: GoogleFonts.stylish(
                                fontSize: 18,
                                color: const Color(0xff354259),
                              ),
                            ),
                          ),

                          // PASSWORD FIELD
                          Padding(
                            padding: EdgeInsets.fromLTRB(
                                MediaQuery.of(context).size.width * 0.05,
                                MediaQuery.of(context).size.height * 0.01,
                                MediaQuery.of(context).size.width * 0.05,
                                MediaQuery.of(context).size.height * 0.1),
                            child: CTextField(
                              borderWidth: 3.0,
                              borderColor: const Color(0xff065C6F),
                              keyboardType: TextInputType.text,
                              hasIcon: true,
                              prefixIcon: const FaIcon(
                                FontAwesomeIcons.userShield,
                                color: Color(0xff065C6F),
                              ),
                              hintText: "Enter Password",
                              obscureText: true,
                              hintTextFont: GoogleFonts.akayaTelivigala(
                                fontSize: 18,
                                color: const Color(0xff065C6F),
                              ),
                              userTextFont: GoogleFonts.viga(
                                fontSize: 18,
                                color: const Color(0xff354259),
                              ),
                            ),
                          ),

                          // BUTTONS: LOGIN & SIGN UP
                          Padding(
                            padding: EdgeInsets.fromLTRB(
                                MediaQuery.of(context).size.width * 0.1,
                                0,
                                MediaQuery.of(context).size.width * 0.1,
                                0),
                            child: Column(
//                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                // LOGIN BUTTON
                                CButton(
                                  borderColor: const Color(0x96065C6F),
                                  buttonColor: const Color(0xff64958F),
                                  font: GoogleFonts.viga(
                                    fontSize: 18,
                                    color: const Color(0xffECE5C7),
                                  ),
                                  height:
                                      MediaQuery.of(context).size.height * 0.09,
                                  width: MediaQuery.of(context).size.width * 2,
                                  text: "Login",
                                  margin: const EdgeInsets.only(right: 0),
                                ),
                                // SIGN UP BUTTON
                                CButton(
                                  borderColor: const Color(0xff64958F),
                                  buttonColor: const Color(0x96065C6F),
                                  height:
                                      MediaQuery.of(context).size.height * 0.09,
                                  width: MediaQuery.of(context).size.width * 2,
                                  text: "Sign Up",
                                  font: GoogleFonts.viga(
                                    fontSize: 18,
                                    color: const Color(0xffECE5C7),
                                  ),
                                  margin: const EdgeInsets.only(top: 3),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    // COMPANY NAME AND LOGO
                    Padding(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).size.height * 0.03),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Chinar Labs",
                            style: GoogleFonts.josefinSans(
                              color: const Color(0xff065C6F),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const FaIcon(
                            FontAwesomeIcons.canadianMapleLeaf,
                            size: 20,
                            color: Color(0xff065C6F),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
