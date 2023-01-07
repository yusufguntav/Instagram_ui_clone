// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:gallery_saver/gallery_saver.dart';
import '../main.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({Key? key}) : super(key: key);
  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  CameraController? controller;
  String imagePath = "";
  @override
  void initState() {
    super.initState();
    controller = CameraController(cameras![0], ResolutionPreset.max);
    controller?.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!controller!.value.isInitialized) {
      return Container();
    }
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          // Camera preview
          Expanded(
              flex: 5,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: CameraPreview(controller!),
              )),
          Expanded(
            // Take photo
            child: TextButton(
                onPressed: () async {
                  try {
                    final image = await controller!.takePicture();
                    GallerySaver.saveImage(image.path);
                  } catch (e) {
                    debugPrint(e.toString());
                  }
                },
                child: const Text("Take Photo")),
          ),
        ],
      )),
    );
  }
}
