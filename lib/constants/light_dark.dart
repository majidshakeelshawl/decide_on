import 'package:flutter/material.dart';

//Padding
kldPaddingEmailTextField(BuildContext context) {
  return (EdgeInsets.fromLTRB(
      MediaQuery.of(context).size.width * 0.05,
      MediaQuery.of(context).size.height * 0.1,
      MediaQuery.of(context).size.width * 0.05,
      0));
}

kldPaddingPasswordTextField(BuildContext context) {
  return (EdgeInsets.fromLTRB(
      MediaQuery.of(context).size.width * 0.05,
      MediaQuery.of(context).size.height * 0.01,
      MediaQuery.of(context).size.width * 0.05,
      MediaQuery.of(context).size.height * 0.1));
}

kldPaddingLoginSignUpButtonColumn(BuildContext context) {
  return (EdgeInsets.fromLTRB(MediaQuery.of(context).size.width * 0.1, 0,
      MediaQuery.of(context).size.width * 0.1, 0));
}
