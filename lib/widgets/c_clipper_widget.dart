import 'package:flutter/material.dart';

class CClipperWidget extends StatelessWidget {
  // child widget for the Clipper
  final Widget child;
  // type of clipper required
  final CustomClipper<Path> clipper;
  // color of the container
  final Color color;
  // height-factor for the container to be clipped
  final double heightFactor;

  const CClipperWidget(
      {Key? key,
      required this.child,
      required this.clipper,
      required this.color,
      required this.heightFactor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: clipper,
      child: Container(
        width: MediaQuery.of(context).size.width,
        color: color,
        height: MediaQuery.of(context).size.height * heightFactor,
        child: child,
      ),
    );
  }
}
