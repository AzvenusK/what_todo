import 'package:flutter/material.dart';

List<String> groupMembers = ['Tolstoy DiCaprio','Mia Fulu Stevenson', 'Anmol Kumar', 'Barbara Bergant', 'Jaroslav Hudacky'];

class GroupMembers extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      width: 250.0,
      margin: EdgeInsets.only(
        top: 15.0,
        bottom: 15.0
      ),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black54),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(children: [
        Text(
            "Go Green Members",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.deepOrangeAccent,
          ),
        ),
        ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: groupMembers.length,
          itemBuilder: (context, index) {
            return new Text(
              groupMembers[index],
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 16.0,
              ),
            );
          },
        ),
      ]),
    );
  }
}
