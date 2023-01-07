// ignore_for_file: file_names, non_constant_identifier_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:instagram/models/user.dart';

Future createUser(
    {required String userFullName,
    required String username,
    required String Email,
    required String password}) async {
  final Userr = FirebaseFirestore.instance.collection("users").doc();

  final user = User(
      id: Userr.id,
      userFullName: userFullName,
      username: username,
      email: Email,
      password: password);

  final json = user.toJson();
  await Userr.set(json);
}
