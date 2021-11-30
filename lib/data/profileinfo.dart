import 'package:flutter/material.dart';
import 'package:what_todo/data/levels.dart';

class ProfileData extends StatelessWidget {
  final String name;
  final String username;
  final String group;

  ProfileData(
    this.name,
    this.username,
    this.group,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            name,
            style: TextStyle(
              fontSize: 24.0,
              color: Colors.black,
            ),
          ),
          Text(
            "Username: " + username,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.deepPurpleAccent,
            ),
          ),
          Text(
            "Clan: " + group,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.deepOrangeAccent,
            ),
          ),
          Level(),
          Text(
            "Exp: 350/700",
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black26,
            ),
          ),
          Text(
            "Lv 3",
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}
