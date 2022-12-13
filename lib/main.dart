import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:instagram/pages/login.dart';

List<CameraDescription>? cameras;
Future<void> main() async {
  // make sure program is initialized and find available cameras
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const Login(),
    );
  }
}
