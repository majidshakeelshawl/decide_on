import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class CClipperWidget extends StatelessWidget {
  final Widget child;
  const CClipperWidget({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: WaveClipperTwo(),
      child: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.blue[300],
        height: MediaQuery.of(context).size.height * 0.25,
        child: child,
      ),
    );
  }
}
