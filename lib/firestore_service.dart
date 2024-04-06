// ignore_for_file: avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final CollectionReference usersCollection = FirebaseFirestore.instance.collection('users');

  Future<void> addUserData(String uid,String email, String password) async {
    try {
      await FirebaseFirestore.instance.collection('users').doc(uid).set({
        'email': email,
        'password' : password,
      });
      print("Data added successfully");
        
    } catch (e) {
      print("Error adding user: $e");
    }
  }

  Future<Map<String, dynamic>?> getUser(String uid) async {
    try {
      DocumentSnapshot snapshot = await usersCollection.doc(uid).get();
      return snapshot.data() as Map<String, dynamic>?;
    } catch (e) {
      print("Error getting user: $e");
      return null;
    }
  }

  Future<void> updateUser(String uid, String newEmail) async {
    try {
      await usersCollection.doc(uid).update({
        'email': newEmail,
      });
    } catch (e) {
      print("Error updating user: $e");
    }
  }

  Future<void> deleteUser(String uid) async {
    try {
      await usersCollection.doc(uid).delete();
    } catch (e) {
      print("Error deleting user: $e");
    }
  }
}

