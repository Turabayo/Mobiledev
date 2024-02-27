import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseService {
  static Future<void> addData() async {
    CollectionReference table1 = FirebaseFirestore.instance.collection('table1');
    CollectionReference table2 = FirebaseFirestore.instance.collection('table2');
    CollectionReference table3 = FirebaseFirestore.instance.collection('table3');

    await table1.add({'email':'v.bamurange@alustudent.com', 'password': 'v@123'});
    await table2.add({'email': 'i.turabayo@alustudent.com', 'password': 't@123'});
    await table3.add({'email': 'a.coulibaly@alustudent.com', 'password': 'a@123'});
  }
}