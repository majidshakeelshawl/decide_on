import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it_done/services/authentication.dart';

class FireStoreService {
  final _firestore = FirebaseFirestore.instance;
  final _auth = AuthService();

  Future getDocument(String collectionName) async {
    try {
      final data = await _firestore
          .collection(collectionName)
          .doc(_auth.currentUser()!.uid)
          .get();
      return data;
    } catch (error) {
      //handle error here
    }
  }
}
