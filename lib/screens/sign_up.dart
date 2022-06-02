import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get_it_done/widgets/c_clipper_widget.dart';

import '../constants/light.dart';
import '../constants/light_dark.dart';
import '../widgets/c_text_field.dart';
import '../widgets/cbutton.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _auth = FirebaseAuth.instance;
  late String userEmail;
  late String userPassword;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Column(
            children: [
              CClipperWidget(
                clipper: WaveClipperOne(),
                color: klBackgroundColorHomeClipper,
                heightFactor: 0.25,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Get Started",
                      style: klFontLogo(context),
                    ),
                    Text(
                      "Tell us About Yourself",
                      style: klFontTagLine(context),
                    ),
                  ],
                ),
              ),
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
              Padding(
                padding: kldPaddingLoginSignUpButtonColumn(context),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // SIGN UP BUTTON
                    CButton(
                      onTap: () async {
                        try {
                          await _auth.createUserWithEmailAndPassword(
                              email: userEmail, password: userPassword);
                          if (mounted) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('User Created'),
                                duration: Duration(seconds: 3),
                              ),
                            );
                            Navigator.pop(context);
                          }
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
      ),
    );
  }
}
