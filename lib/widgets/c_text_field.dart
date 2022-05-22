import 'package:flutter/material.dart';

class CTextField extends StatelessWidget {
  final bool obscureText;
  final bool hasIcon;
  final String hintText;
  final TextStyle hintTextFont;
  final TextStyle userTextFont;
  //  give inside as FaIcon(fontawesome) for prefixIcon
  final Widget prefixIcon;
  final TextInputType keyboardType;

  const CTextField(
      {Key? key,
      required this.hasIcon,
      required this.prefixIcon,
      required this.obscureText,
      required this.hintText,
      required this.keyboardType,
      required this.hintTextFont,
      required this.userTextFont})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: userTextFont,
      onChanged: (value) {},
      decoration: InputDecoration(
        prefixIcon: hasIcon
            ? Padding(
                padding: const EdgeInsets.all(8.0),
                child: prefixIcon,
              )
            : null,
        hintStyle: hintTextFont,
        hintText: hintText,
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
      obscureText: obscureText,
      keyboardType: keyboardType,
    );
  }
}
