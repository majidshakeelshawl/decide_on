import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_it_done/services/authentication.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

// Dash
class _DashBoardState extends State<DashBoard> {
  final _auth = AuthService();
  final _firestore = FirebaseFirestore.instance;
  var _isFetched = false;
  var _currentDocument;

  void _setUser() async {
    _currentDocument = await _firestore
        .collection('users')
        .doc(_auth.currentUser()!.uid)
        .get();
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
          title: const Text("Dashboard"),
          actions: [
            InkWell(
              child: const FaIcon(
                FontAwesomeIcons.shuttleSpace,
                size: 50,
              ),
              onTap: () async {
                await _auth.signOut();
                Navigator.pushNamed(context, '/');
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
          ],
        ),
      ),
    );
  }
}
