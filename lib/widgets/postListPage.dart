// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:instagram/widgets/post.dart';

class PostListPage extends StatefulWidget {
  PostListPage({super.key, required this.posts});
  List<Post> posts;
  @override
  State<PostListPage> createState() => _PostListPageState();
}

class _PostListPageState extends State<PostListPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: widget.posts.length,
        itemBuilder: (BuildContext context, int index) {
          return widget.posts[index];
        });
  }
}
