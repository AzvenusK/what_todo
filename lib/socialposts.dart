import 'package:flutter/material.dart';

class SocialPostData {
  final String username;
  final String post;

  SocialPostData({
    this.username,
    this.post,
  });
}

class SocialPosts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
    );
  }
}
