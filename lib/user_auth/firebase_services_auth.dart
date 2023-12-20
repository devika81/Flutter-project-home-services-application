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
        await FirebaseFirestore.instance
            .collection('users')
            .doc(uid)
            .set(extraDetails);
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

  Future<List<Map<String, dynamic>>?> fetchUserDataWithCategory(
      String category) async {
    try {
      QuerySnapshot querySnapshot = await FirebaseFirestore.instance
          .collection('users')
          .where('serviceCategory', isEqualTo: category)
          .get();
      if (querySnapshot.docs.isNotEmpty) {
        List<Map<String, dynamic>> userList = [];

        for (var doc in querySnapshot.docs) {
          var userData = doc.data() as Map<String, dynamic>;
          userData['docId'] = doc.id;
          userList.add(userData);
        }
        return userList;
      } else {
        // Handle the case when no documents match the query
        showToast(message: 'No user found for the category: $category');
      }
    } catch (e) {
      if (e is FirebaseException) {
        print(e.message); // Print the error message to the console
        showToast(message: e.message!);
      }
    }
    return null;
  }
  Future<void> createOrder(String docId) async {
  try {
    // Fetch user data using docId
    DocumentSnapshot userDoc = await FirebaseFirestore.instance
        .collection('users')
        .doc(docId)
        .get();

    if (userDoc.exists) {
      // Extract user data
      Map<String, dynamic> userData = userDoc.data() as Map<String, dynamic>;

      // Create a new order document
      await FirebaseFirestore.instance.collection('orders').add({
        'userId': docId, // Assuming userId is a field you want to include
        'orderDetails': 'Some order details', // Add more fields as needed
        "providerDetails" : userData,
        'timestamp': FieldValue.serverTimestamp(),
      });

      showToast(message: 'Order created successfully!');
    } else {
      showToast(message: 'User not found with docId: $docId');
    }
  } catch (e) {
    if (e is FirebaseException) {
      print(e.message); // Print the error message to the console
      showToast(message: e.message!);
    }
  }
}
}
