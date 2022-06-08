import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it_done/models/user.dart';

class AuthService {
  final _auth = FirebaseAuth.instance;

  CustomUser? _userFromFirebaseUser(User user) {
    return user != null ? CustomUser(uid: user.uid, user: user) : null;
  }

  User? currentUser() {
    print("USER FROM CUSTOM CLASS ${_auth.currentUser}");
    return _auth.currentUser;
  }

  //signinwithemailpassword
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
}
