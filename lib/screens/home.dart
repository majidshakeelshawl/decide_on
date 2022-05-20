import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueAccent[100],
        body: Column(
          children: [
            Container(
              child: Text(
                "Get It Done",
                style: GoogleFonts.chewy(
                  textStyle: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.08),
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
