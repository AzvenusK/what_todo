import 'package:flutter/material.dart';
import 'package:what_todo/data/socialposts.dart';

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
            )
          ],
        ),
      ),
    );
  }
}
