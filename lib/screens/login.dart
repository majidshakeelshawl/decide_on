import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../constants/light.dart';
import '../constants/light_dark.dart';
import '../widgets/c_text_field.dart';
import '../widgets/cbutton.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _auth = FirebaseAuth.instance;
  late String userEmail;
  late String userPassword;
  @override
  Widget build(BuildContext context) {
    return Column(
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
                    _auth.signOut();
                    print(_auth.currentUser);
                    final loggedInUser = await _auth.signInWithEmailAndPassword(
                        email: userEmail, password: userPassword);
                    if (mounted) {
                      loggedInUser.user != null
                          ? Navigator.pushNamed(context, '/dashboard')
                          : null;
                    }
                  } catch (error) {
                    print(_auth.currentUser);
                    if (_auth.currentUser == null) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Invalid Email or Password"),
                          duration: Duration(seconds: 2),
                        ),
                      );
                    }
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
            ],
          ),
        ),
      ],
    );
  }
}