import 'package:cloud_firestore/cloud_firestore.dart';

extension FirebaseFirestoreX on FirebaseFirestore {
  CollectionReference<Map<String, dynamic>> usersCollection() => FirebaseFirestore.instance.collection('users');
  DocumentReference<Map<String, dynamic>> userFromId(String uid) => usersCollection().doc(uid);
  CollectionReference<Map<String, dynamic>> userOrdersCollection(String uid) => userFromId(uid).collection('orders');
  DocumentReference<Map<String, dynamic>> userOrderFromId(String uid, String orderId) =>
      userOrdersCollection(uid).doc(orderId);
}
