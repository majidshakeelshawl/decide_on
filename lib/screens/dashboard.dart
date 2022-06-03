import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  final _auth = FirebaseAuth.instance;
  DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("${_auth.currentUser?.displayName}"),
        centerTitle: true,
      ),
    );
  }
}
