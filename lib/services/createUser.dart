import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:instagram/models/user.dart';

Future createUser(
    {required String userFullName,
    required String username,
    required String Email,
    required String password}) async {
  final Userr = FirebaseFirestore.instance.collection("users").doc(username);

  final user = User(
      id: Userr.id,
      userFullName: userFullName,
      username: username,
      email: Email,
      password: password);

  final json = user.toJson();
  await Userr.set(json);
}
