import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../constants/light.dart';
import '../constants/light_dark.dart';
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
    return Padding(
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
    );
  }
}
