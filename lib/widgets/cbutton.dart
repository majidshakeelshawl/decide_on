import 'package:flutter/material.dart';

class CButton extends StatelessWidget {
  final Color buttonColor;
  final double height;
  final double width;
  final String text;
  final TextStyle font;
  final Color borderColor;
  final Function()? onTap;
  final EdgeInsetsGeometry margin;
  const CButton(
      {Key? key,
      required this.buttonColor,
      required this.height,
      required this.width,
      required this.text,
      required this.font,
      required this.margin,
      required this.borderColor,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: margin,
        decoration: BoxDecoration(
          border: Border.all(color: borderColor),
          color: buttonColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        height: height,
        width: width,
        child: Center(
          child: Text(
            text,
            style: font,
          ),
        ),
      ),
    );
  }
}
