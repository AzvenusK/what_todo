import 'package:what_todo/data/groupinfo.dart';
import 'package:what_todo/data/profileinfo.dart';
import 'package:flutter/material.dart';
import 'package:what_todo/data/socialpage.dart';
import 'package:what_todo/screens/dailydatapage.dart';
import 'package:what_todo/screens/homepage.dart';

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
        height: MediaQuery.of(context).size.height + 0.98,
        child: ListView(
          children: <Widget>[
            ProfileData('Mia', 'Mia123', 'Go Green'),
            GroupMembers(),
            TextButton(
              child: const Text("Social Feed"),
              style: TextButton.styleFrom(
                  primary: Color(0xFFFFFFFF),
                  backgroundColor: Color(0xFF65FFB3),
                  textStyle: TextStyle(fontSize: 20)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return SocialPage();
                  }),
                );
              },
            ),
            TextButton(
              child: const Text("My Daily Data"),
              style: TextButton.styleFrom(
                  primary: Color(0xFFFFFFFF),
                  backgroundColor: Color(0xFF65FFB3),
                  textStyle: TextStyle(fontSize: 20)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return DailyDataPage();
                  }),
                );
              },
            ),
            TextButton(
              child: const Text("My Daily Tasks"),
              style: TextButton.styleFrom(
                  primary: Color(0xFFFFFFFF),
                  backgroundColor: Color(0xFF65FFB3),
                  textStyle: TextStyle(fontSize: 20)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return Homepage();
                  }),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
