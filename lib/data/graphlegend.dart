import 'package:flutter/material.dart';

class Legend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 20.0,
        right: 20.0,
        bottom: 15.0,
      ),
      child: Column(
        children: <Widget>[
          Text(
            'The colour of bar indicates how well you are doing in terms of your emissions',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 14.0,
                color: Colors.black26
            ),
          ),
          Text(
            'Gold means you are doing well',
            style: TextStyle(
                fontSize: 14.0,
                color: Colors.black54
            ),
          ),
          Text(
            'Silver means that you are doing well but could improve',
            style: TextStyle(
                fontSize: 14.0,
                color: Colors.black54
            ),
          ),
          Text(
            'Bronze means that you need to change lots to improve',
            style: TextStyle(
                fontSize: 14.0,
                color: Colors.black54
            ),
          ),
        ],
      ),
    );
  }
}
