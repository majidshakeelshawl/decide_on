import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_it_done/widgets/c_clipper_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff9BA3EB),
        body: Column(
          children: [
            // my custom created widget
            CClipperWidget(
              clipper: WaveClipperOne(),
              color: const Color(0xff646FD4),
              heightfactor: 0.25,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Get It Done",
                    style: GoogleFonts.fredokaOne(
                      textStyle: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.08,
                        color: const Color(0xffB1BCE6),
                      ),
                    ),
                  ),
                  Text(
                    "Help across the world",
                    style: GoogleFonts.chewy(
                      textStyle: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.03,
                        color: const Color(0xffDBDFFD),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 50, 50, 8),
                  child: TextField(
                    onChanged: (value) {},
                    decoration: const InputDecoration(
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: FaIcon(
                          FontAwesomeIcons.envelope,
                          color: const Color(0xff646FD4),
                        ),
                      ),
                      hintText: "Enter Email",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),

                // ################################
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 8, 50, 16),
                  child: TextField(
                    onChanged: (value) {},
                    decoration: const InputDecoration(
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: FaIcon(
                          FontAwesomeIcons.userLock,
                          color: const Color(0xff646FD4),
                        ),
                      ),
                      hintText: "Enter Password",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    obscureText: true,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          color: Color(0xff646FD4),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        height: 50,
                        width: 200,
                        child: Center(
                          child: Text(
                            "Login",
                            style: GoogleFonts.viga(
                              fontSize: 18,
                              color: Color(0xffBDD1FF),
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xff5B73D8),
                          borderRadius: new BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        height: 50,
                        width: 120,
                        child: Center(
                          child: Text(
                            "Sign Up",
                            style: GoogleFonts.viga(
                              fontSize: 18,
                              color: Color(0xffBDD1FF),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 120,
            ),
            Center(
              child: Text(
                "Chinar Labs 🍁",
                style: GoogleFonts.courierPrime(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
