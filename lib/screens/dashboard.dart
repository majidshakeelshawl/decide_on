import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  final _auth = FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance;
  var _isFetched = false;
  var _currentDocument;

  void _setUser() async {
    var currentUser = _auth.currentUser;
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
