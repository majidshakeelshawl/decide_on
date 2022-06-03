import 'package:flutter/material.dart';

import '../constants/light.dart';
import '../constants/light_dark.dart';
import '../widgets/cbutton.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
