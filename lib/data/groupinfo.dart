import 'package:flutter/material.dart';

List<String> groupMembers = ['Mia', 'Anmol', 'Barbara', 'Jaroslav'];

class GroupMembers extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Column(children: [
        Text("Your Group Members:"),
        ListView.builder(
          itemCount: groupMembers.length,
          itemBuilder: (context, index) {
            return new Text(
              groupMembers[index],
              style: TextStyle(fontSize: 20),
            );
          },
        ),
      ]),
    );
  }
}
