import 'package:flutter/material.dart';

class GroupMembersData {
  final String name;

  GroupMembersData({
    this.name,
  });
}

final List<GroupMembersData> groupMembers = [
  GroupMembersData(name: 'Mia'),
  GroupMembersData(name: 'Anmol'),
  GroupMembersData(name: 'Barbara'),
  GroupMembersData(name: 'Jaroslav'),
];

class GroupMembers extends StatelessWidget {
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
