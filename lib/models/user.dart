import 'package:firebase_auth/firebase_auth.dart';

class CustomUser {
  final String uid;
  final User user;
  CustomUser({required this.uid, required this.user});
}
