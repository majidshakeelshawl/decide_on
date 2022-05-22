import 'package:flutter/material.dart';

class CTextField extends StatelessWidget {
  final bool obscureText;
  final bool hasIcon;
  final String hintText;
  // as FaIcon(fontawesome)
  final Widget prefixIcon;
  final TextInputType keyboardType;

  const CTextField(
      {Key? key,
      required this.hasIcon,
      required this.prefixIcon,
      required this.obscureText,
      required this.hintText,
      required this.keyboardType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {},
      decoration: InputDecoration(
        prefixIcon: hasIcon
            ? Padding(
                padding: const EdgeInsets.all(8.0),
                child: prefixIcon,
              )
            : null,
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
