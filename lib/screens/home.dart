import 'package:flutter/material.dart';
import 'package:get_it_done/widgets/c_clipper_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue[200],
        body: Column(
          children: [
            CClipperWidget(
              child: Center(
                child: Text(
                  "Get It Done",
                  style: GoogleFonts.chewy(
                    textStyle: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.08),
                  ),
                ),
              ),
            ),
            Container(),
          ],
        ),
      ),
    );
  }
}
