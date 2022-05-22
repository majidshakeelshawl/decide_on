import 'package:flutter/material.dart';

class CButton extends StatelessWidget {
  final Color buttonColor;
  final double height;
  final double width;
  final String text;
  final TextStyle font;
  final EdgeInsetsGeometry margin;
  const CButton(
      {Key? key,
      required this.buttonColor,
      required this.height,
      required this.width,
      required this.text,
      required this.font,
      required this.margin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: margin,
        decoration: BoxDecoration(
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
