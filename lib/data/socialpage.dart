import 'package:flutter/material.dart';
import 'package:what_todo/data/socialposts.dart';
import 'package:what_todo/screens/profilepage.dart';

class SocialPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SocialPageState();
}

class _SocialPageState extends State<SocialPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(
          top: 100.0
        ),
        padding: const EdgeInsets.all(10.0),
        height: MediaQuery.of(context).size.height + 0.98,
        child: Column(
          children: [
            SocialPost(
              username: 'Martha-the-activist',
              post:
                  'Palm oil is bad for the environment, try to fild alternatives and not eat it',
            ),
            SocialPost(
              username: 'Mia123',
              post:
                  'Turning off all electronics at night can help reduce your emissions, remember to do this before going to bed',
            ),
            SizedBox(
              width: 250.0,
              child: TextButton(
                child: const Text("Profile"),
                style: TextButton.styleFrom(
                    primary: Color(0xFFFFFFFF),
                    backgroundColor: Color(0xFF65FFB3),
                    textStyle: TextStyle(fontSize: 20)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return ProfilePage();
                    }),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
