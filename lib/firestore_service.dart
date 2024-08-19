import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> addAdmin(String email, String password) async {
  await FirebaseFirestore.instance.collection('Admin').add({
    'email': email,
    'password': password,
  });

  print('Admin added: $email');
}
