import 'package:flutter/material.dart';
import 'package:what_todo/levels.dart';

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
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Flexible(
            flex: 1,
            child: Text(
              name,
            ),
          ),
          Flexible(
            flex: 1,
            child: Text(
              "Your username: " + username,
            ),
          ),
          Flexible(
            flex: 1,
            child: Text(
              "Your Group: " + group,
            ),
          ),
          Flexible(
            flex: 1,
            child: Text(
              "Your Group Level:",
            ),
          ),
          Flexible(
            flex: 1,
            child: Level(),
          ),
        ],
      ),
    );
  }
}
