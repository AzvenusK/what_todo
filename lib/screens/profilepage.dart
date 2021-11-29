import 'package:what_todo/groupinfo.dart';
import 'package:what_todo/profileinfo.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Column(
          children: <Widget>[
            ProfileData('Mia', 'Mia123', 'Go Green'),
            GroupMembers(),
          ],
        ),
      ),
    );
  }
}
