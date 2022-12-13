import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class IgtvPage extends StatefulWidget {
  BottomNavigationBar bottomNavigationBar;
  IgtvPage({super.key, required this.bottomNavigationBar});

  @override
  State<IgtvPage> createState() => _IgtvPageState();
}

class _IgtvPageState extends State<IgtvPage> {
  List dataList = List.empty();

  // getAllData() async {
  //   var response = await http.get("url")
  //   if (response.statusCode == 200) {
  //     setState(() {
  //       dataList = json.decode(response.body);
  //     });
  //     return dataList;
  //   }
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   getAllData();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("IGTV"),
        automaticallyImplyLeading: false,
      ),
      body: const Text("IGTV PAGE"),
      bottomNavigationBar: widget.bottomNavigationBar,
    );
  }
}
