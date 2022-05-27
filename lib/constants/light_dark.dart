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

kldPaddingCompanyNameLogoRow(BuildContext context) {
  return (EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.03));
}

// height & width
kldHeightLoginSignUpButton(BuildContext context) {
  return (MediaQuery.of(context).size.height * 0.09);
}

kldWidthLoginSignUpButton(BuildContext context) {
  return (MediaQuery.of(context).size.width * 2);
}
