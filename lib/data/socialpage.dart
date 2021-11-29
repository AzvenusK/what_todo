import 'package:flutter/material.dart';
import 'package:what_todo/socialposts.dart';

class SocialPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SocialPageState();
}

class _SocialPageState extends State<SocialPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Social Feed"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SocialPosts(),
          ],
        ),
      ),
    );
  }
}
