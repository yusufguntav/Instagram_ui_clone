// ignore_for_file: file_names

import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/user.dart';

Stream<List<User>> readUsers() =>
    FirebaseFirestore.instance.collection("users").snapshots().map((snapshot) =>
        snapshot.docs.map((doc) => User.fromJson(doc.data())).toList());
