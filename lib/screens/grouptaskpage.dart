import 'package:flutter/material.dart';
import 'package:what_todo/screens/profilepage.dart';


class GroupTaskPage extends StatefulWidget {
  @override
  _GroupTaskPageState createState() => _GroupTaskPageState();
}

class _GroupTaskPageState extends State<GroupTaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            color: Colors.white,
            child: Stack(
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: 250.0,
                      child: TextButton(
                        child: const Text("Profile"),
                        style: TextButton.styleFrom(
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
              ],
            ),
          )
      ),
    );
  }
}

