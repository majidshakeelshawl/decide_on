import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get_it_done/constants/light.dart';
import 'package:get_it_done/widgets/c_clipper_widget.dart';

import '../constants/light.dart';
import '../constants/light_dark.dart';
import '../widgets/cbutton.dart';
import 'login.dart';

class Home extends StatelessWidget {
  //final _auth = FirebaseAuth.instance;
  late var userEmail;
  late var userPassword;
  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        // Used to make keyboard unfocused not closing after clicking other than input
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          resizeToAvoidBottomInset:
              false, // Will not bring the bottom widgets up : fixes overflow
          backgroundColor: klBackgroundColorScaffold,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // CLIPPER: APP NAME AND TAGLINE
              CClipperWidget(
                clipper: WaveClipperOne(),
                color: klBackgroundColorHomeClipper,
                heightFactor: 0.25,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Decide On",
                      style: klFontLogo(context),
                    ),
                    Text(
                      "reviews that matter",
                      style: klFontTagLine(context),
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
                          const Login(),
                          Padding(
                            padding: kldPaddingLoginSignUpButtonColumn(context),
                            child: CButton(
                              onTap: () {
                                Navigator.pushNamed(context, '/signup');
                              },
                              borderColor: klBorderColorSignUpButton,
                              buttonColor: klColorSignUpButton,
                              height: kldHeightLoginSignUpButton(context),
                              width: kldWidthLoginSignUpButton(context),
                              text: "Register",
                              font: klFontLoginSignUpButton(context),
                              margin: const EdgeInsets.only(top: 3),
                            ),
                          )
                        ],
                      ),
                    ),
                    // COMPANY NAME AND LOGO
                    Padding(
                      padding: kldPaddingCompanyNameLogoRow(context),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Headway",
                            style: klFontCompanyName(context),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          klIconCompanyLogo(context),
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
