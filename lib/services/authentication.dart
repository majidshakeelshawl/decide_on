import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final _auth = FirebaseAuth.instance;

  User? currentUser() {
    return _auth.currentUser;
  }

  // signinwithemailpassword
  Future signInWithEmailAndPassword({email, password}) async {
    _auth.signOut(); // find and fix the cache user problem
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return result;
    } catch (err) {
      print(err.toString());
    }
  }

  //  Sign Out : will send null to stream user above
  Future signOut() async {
    try {
      await _auth.signOut();
      print(_auth.currentUser);
    } catch (error) {
      print(error.toString());
    }
  }
}
