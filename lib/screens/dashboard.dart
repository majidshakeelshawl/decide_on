import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/cbutton.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  final _auth = FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance;
  var currentDocument = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Hello"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          CButton(
            onTap: () async {
              try {
                currentDocument = await _firestore
                    .collection('users')
                    .doc(_auth.currentUser?.uid)
                    .get();
                print(currentDocument.data());
                // await _firestore
                //     .collection('users')
                //     .doc(_auth.currentUser?.uid)
                //     .update({"name": "WHO", "country": "Switzerland"});
                // currentDocument = await _firestore
                //     .collection('users')
                //     .doc(_auth.currentUser?.uid)
                //     .get();
                // print(currentDocument.data());
              } catch (error) {
                print("Error ::: ${error}");
              }
            },
            font: GoogleFonts.akayaTelivigala(),
            buttonColor: Colors.red,
            width: 100.3,
            margin: EdgeInsets.all(10),
            borderColor: Colors.blue,
            height: 200.3,
            text: 'Try Firestore',
          ),
          Center(
            child: Column(
              children: [
                Text(""),
              ],
            ),
          )
        ],
      ),
    );
  }
}
