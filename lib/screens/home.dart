import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get_it_done/constants/light.dart';
import 'package:get_it_done/widgets/c_clipper_widget.dart';
import 'package:get_it_done/widgets/c_text_field.dart';

import '../constants/light_dark.dart';
import '../widgets/cbutton.dart';

class Home extends StatelessWidget {
  final _auth = FirebaseAuth.instance;
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
                          Padding(
                            padding: kldPaddingEmailTextField(context),
                            child: CTextField(
                              onChanged: (value) {
                                userEmail = value;
                              },
                              borderWidth: 3.0,
                              borderColor: klBorderColorEmailPasswordTextField,
                              keyboardType: TextInputType.emailAddress,
                              hasIcon: true,
                              prefixIcon: klIconEmailTextField,
                              hintText: "Enter Email",
                              obscureText: false,
                              hintTextFont: klFontEmailHint(context),
                              userTextFont: klFontEmailUser(context),
                            ),
                          ),
                          // PASSWORD FIELD
                          Padding(
                            padding: kldPaddingPasswordTextField(context),
                            child: CTextField(
                              onChanged: (value) {
                                userPassword = value;
                              },
                              borderWidth: 3.0,
                              borderColor: klBorderColorEmailPasswordTextField,
                              keyboardType: TextInputType.text,
                              hasIcon: true,
                              prefixIcon: klIconPasswordTextField,
                              hintText: "Enter Password",
                              obscureText: true,
                              hintTextFont: klFontPasswordHint(context),
                              userTextFont: klFontPasswordUser(context),
                            ),
                          ),

                          // BUTTONS: LOGIN & SIGN UP
                          Padding(
                            padding: kldPaddingLoginSignUpButtonColumn(context),
                            child: Column(
//                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                // LOGIN BUTTON
                                CButton(
                                  onTap: () async {
                                    try {
                                      final loggedInUser = await _auth
                                          .signInWithEmailAndPassword(
                                              email: userEmail,
                                              password: userPassword);
                                      loggedInUser != null
                                          ? Navigator.pushNamed(
                                              context, '/dashboard')
                                          : null;
                                    } catch (error) {
                                      print(error);
                                    }
                                  },
                                  borderColor: klBorderColorLoginButton,
                                  buttonColor: klColorLoginButton,
                                  font: klFontLoginSignUpButton(context),
                                  height: kldHeightLoginSignUpButton(context),
                                  width: kldWidthLoginSignUpButton(context),
                                  text: "Login",
                                  margin: const EdgeInsets.only(right: 0),
                                ),
                                // SIGN UP BUTTON
                                CButton(
                                  onTap: () async {
                                    try {
                                      await _auth
                                          .createUserWithEmailAndPassword(
                                              email: userEmail,
                                              password: userPassword);
                                    } catch (error) {
                                      print(error);
                                    }
                                  },
                                  borderColor: klBorderColorSignUpButton,
                                  buttonColor: klColorSignUpButton,
                                  height: kldHeightLoginSignUpButton(context),
                                  width: kldWidthLoginSignUpButton(context),
                                  text: "Sign Up",
                                  font: klFontLoginSignUpButton(context),
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
