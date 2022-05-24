import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_it_done/widgets/c_clipper_widget.dart';
import 'package:get_it_done/widgets/c_text_field.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/cbutton.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff9BA3EB),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // CLIPPER: APP NAME AND TAGLINE
            CClipperWidget(
              clipper: WaveClipperOne(),
              color: const Color(0xff646FD4),
              heightfactor: 0.25,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Get It Done",
                    style: GoogleFonts.fredokaOne(
                      textStyle: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.08,
                        color: const Color(0xffB1BCE6),
                      ),
                    ),
                  ),
                  Text(
                    "Help across the world",
                    style: GoogleFonts.chewy(
                      textStyle: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.03,
                        color: const Color(0xffDBDFFD),
                      ),
                    ),
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
                            keyboardType: TextInputType.emailAddress,
                            hasIcon: true,
                            prefixIcon: const FaIcon(
                              FontAwesomeIcons.envelope,
                              color: Color(0xff646FD4),
                            ),
                            hintText: "Enter Email",
                            obscureText: false,
                            hintTextFont: GoogleFonts.akayaTelivigala(
                                fontSize: 18, color: const Color(0xff646FD4)),
                            userTextFont: GoogleFonts.viga(
                              fontSize: 18,
                              color: const Color(0xffBDD1FF),
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
                            keyboardType: TextInputType.text,
                            hasIcon: true,
                            prefixIcon: const FaIcon(
                              FontAwesomeIcons.userLock,
                              color: Color(0xff646FD4),
                            ),
                            hintText: "Enter Password",
                            obscureText: true,
                            hintTextFont: GoogleFonts.akayaTelivigala(
                                fontSize: 18, color: const Color(0xff646FD4)),
                            userTextFont: GoogleFonts.viga(
                              fontSize: 18,
                              color: const Color(0xffBDD1FF),
                            ),
                          ),
                        ),

                        // BUTTONS: LOGIN & SIGN UP
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                              MediaQuery.of(context).size.width * 0.05,
                              0,
                              MediaQuery.of(context).size.width * 0.05,
                              0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              // LOGIN BUTTON
                              Flexible(
                                flex: 2,
                                child: CButton(
                                  buttonColor: const Color(0xff646FD4),
                                  font: GoogleFonts.viga(
                                    fontSize: 18,
                                    color: const Color(0xffBDD1FF),
                                  ),
                                  height:
                                      MediaQuery.of(context).size.height * 0.09,
                                  width: MediaQuery.of(context).size.width * 2,
                                  text: "Login",
                                  margin: const EdgeInsets.only(right: 0),
                                ),
                              ),
                              // SIGN UP BUTTON
                              Flexible(
                                child: CButton(
                                  buttonColor: const Color(0xff5B73D8),
                                  height:
                                      MediaQuery.of(context).size.height * 0.09,
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  text: "Sign Up",
                                  font: GoogleFonts.viga(
                                    fontSize: 18,
                                    color: const Color(0xffBDD1FF),
                                  ),
                                  margin: const EdgeInsets.only(left: 3),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // COMPANY NAME AND LOGO
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Chinar Labs",
                        style: GoogleFonts.josefinSans(
                            color: const Color(0xffDBDFFD)),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const FaIcon(
                        FontAwesomeIcons.canadianMapleLeaf,
                        size: 20,
                        color: Color(0xffDBDFFD),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
