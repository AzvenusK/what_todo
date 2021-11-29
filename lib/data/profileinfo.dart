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
        children: [
          Text(
            name,
          ),
          Text(
            "Your username: " + username,
          ),
          Text(
            "Your Group: " + group,
          ),
          Text(
            "Your Group Level: Level 3",
          ),
          Level(),
        ],
      ),
    );
  }
}
