import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_it_done/services/auth.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

//Dash
class _DashBoardState extends State<DashBoard> {
  final _auth = AuthService();
  final _auth2 = FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance;
  var _isFetched = false;
  var _currentDocument;

  void _setUser() async {
    var currentUser = _auth2.currentUser;
    _currentDocument =
        await _firestore.collection('users').doc(currentUser?.uid).get();
    print("${_currentDocument.data()} in init method");
    _isFetched = true;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _setUser();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Dashboard"),
          actions: [
            InkWell(
              child: const FaIcon(
                FontAwesomeIcons.person,
                size: 50.2,
              ),
              onTap: () async {
                await _auth.signOut();
                print("Pressed Sign Out");
              },
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: _isFetched
                  ? Text(
                      "${_currentDocument.data()["name"]}",
                      style: const TextStyle(
                          fontSize: 40, fontWeight: FontWeight.bold),
                    )
                  : null,
            ),
            Center(
                child: _isFetched
                    ? Text(
                        "${_currentDocument.data()["country"]}",
                        style: const TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w500),
                      )
                    : null),
            Center(
                child: _isFetched
                    ? Text(
                        "${_currentDocument.data()["state"]}",
                        style: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400),
                      )
                    : null),
          ],
        ),
      ),
    );
  }
}
