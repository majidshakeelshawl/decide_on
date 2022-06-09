import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it_done/models/user.dart';

class AuthService {
  final _auth = FirebaseAuth.instance;

  CustomUser? _userFromFirebaseUser(User user) {
    return user != null ? CustomUser(uid: user.uid, user: user) : null;
  }

  User? currentUser() {
    return _auth.currentUser;
  }

  // CustomUser Stream: will return null when user signs-out
  Stream<CustomUser?> get user {
    return _auth.authStateChanges().map((user) => _userFromFirebaseUser(user!));
  }

  // signinwithemailpassword
  Future signInWithEmailAndPassword({email, password}) async {
    _auth.signOut(); // find and fix the cache user problem
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
      return _userFromFirebaseUser(user!);
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
