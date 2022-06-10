import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_it_done/services/authentication.dart';
import 'package:get_it_done/widgets/c_text_field.dart';
import 'package:get_it_done/widgets/cbutton.dart';
import 'package:google_fonts/google_fonts.dart';

class MoreInfo extends StatefulWidget {
  const MoreInfo({Key? key}) : super(key: key);

  @override
  State<MoreInfo> createState() => _MoreInfoState();
}

class _MoreInfoState extends State<MoreInfo> {
  final _auth = AuthService();
  final _fireStore = FirebaseFirestore.instance;
  late String profession;
  late String name;
  late String country;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CTextField(
              hasIcon: true,
              prefixIcon: const FaIcon(FontAwesomeIcons.idCard),
              obscureText: false,
              hintText: "Enter Name",
              keyboardType: TextInputType.name,
              hintTextFont: GoogleFonts.aBeeZee(),
              userTextFont: GoogleFonts.aBeeZee(),
              borderWidth: 2.2,
              borderColor: Colors.red,
              onChanged: (value) {
                name = value;
              }),
          CTextField(
              hasIcon: true,
              prefixIcon: const FaIcon(FontAwesomeIcons.toolbox),
              obscureText: false,
              hintText: "Enter Profession",
              keyboardType: TextInputType.name,
              hintTextFont: GoogleFonts.aBeeZee(),
              userTextFont: GoogleFonts.aBeeZee(),
              borderWidth: 2.2,
              borderColor: Colors.red,
              onChanged: (value) {
                profession = value;
              }),
          CTextField(
              hasIcon: true,
              prefixIcon: const FaIcon(FontAwesomeIcons.globe),
              obscureText: false,
              hintText: "Enter Country",
              keyboardType: TextInputType.name,
              hintTextFont: GoogleFonts.aBeeZee(),
              userTextFont: GoogleFonts.aBeeZee(),
              borderWidth: 2.2,
              borderColor: Colors.red,
              onChanged: (value) {
                country = value;
              }),
          CButton(
              onTap: () async {
                await _fireStore
                    .collection('users')
                    .doc(_auth.currentUser()!.uid)
                    .set({
                  "name": name,
                  "country": country,
                  "profession": profession,
                  "reviews": 0,
                });
                print("Saved Data");
              },
              buttonColor: Colors.blueGrey,
              height: 90,
              width: 320,
              text: "Done",
              font: GoogleFonts.abhayaLibre(),
              margin: EdgeInsets.all(30.0),
              borderColor: Colors.pink)
        ],
      ),
    );
  }
}
