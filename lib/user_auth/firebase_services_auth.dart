import 'package:firebase_auth/firebase_auth.dart';
import 'package:home_services_app/toast/toast.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseAuthService {
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> register(String email, String password,
      {Map<String, dynamic>? extraDetails}) async {
    try {
      UserCredential credential = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      String uid = credential.user!.uid;

      // Store additional details in Firebase Firestore
      if (extraDetails != null) {
        await FirebaseFirestore.instance.collection('users').doc(uid).set(extraDetails);
      }

      return credential.user;
    } catch (e) {
      if (e is FirebaseAuthException) {
        print(e.message); // Print the error message to the console
        showToast(message: e.message as String);
      }
    }
  }

  Future<User?> login(String email, String password) async {
    try {
      UserCredential credential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return credential.user;
    } catch (e) {
        if (e is FirebaseAuthException) {
        print(e.message); // Print the error message to the console
        showToast(message: e.message as String);
      }
    }
    return null;
  }
}
