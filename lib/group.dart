import 'package:flutter/material.dart';

class GroupMembers {
  final String name;

  GroupMembers({
    this.name,
  });
}

final List<GroupMembers> groupMembers = [
  GroupMembers(name: 'Mia'),
  GroupMembers(name: 'Anmol'),
  GroupMembers(name: 'Barbara'),
  GroupMembers(name: 'Jaroslav'),
];

class GroupMembersData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Column(children: [
        Flexible(
          child: Text("Your Group Members:"),
        )
      ]),
    );
  }
}
