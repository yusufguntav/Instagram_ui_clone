// ignore_for_file: depend_on_referenced_packages

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:instagram/pages/loginPage.dart';
import 'package:firebase_core/firebase_core.dart';

List<CameraDescription>? cameras;
Future<void> main() async {
  // make sure program is initialized and find available cameras
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

final navigatorkey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorkey,
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const Login(),
    );
  }
}
