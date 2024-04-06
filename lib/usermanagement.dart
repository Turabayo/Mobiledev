// ignore_for_file: use_key_in_widget_constructors, avoid_print, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
///import 'firestore_service.dart';

class UserManagementScreen extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> updateUserData(String documentId, String newEmail) async {
    try {
      await _firestore.collection('table1').doc(documentId).update({
        'email': newEmail,
        
      });
      print('Data updated successfully');
    } catch (e) {
      print('Error updating data: $e');
    }
  }

  Future<void> deleteUserData(String documentId) async {
    try {
      await _firestore.collection('table1').doc(documentId).delete();
      print('Data deleted successfully');
    } catch (e) {
      print('Error deleting data: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Management'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () async {
                
                await updateUserData('documentId', 'newEmail');
              },
              child: Text('Update User'),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () async {
              
                await deleteUserData('documentId');
              },
              child: Text('Delete User'),
            ),
          ],
        ),
      ),
    );
  }
}
