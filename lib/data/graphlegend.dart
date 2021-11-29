import 'package:flutter/material.dart';

class Legend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
            'Graph Legend: The colour of bar indicates how well you are doing in terms of your emissions'),
        Text('Gold means you are doing well'),
        Text('Silver means that you are doing well but could improve'),
        Text('Bronze means that you need to change lots to improve'),
      ],
    );
  }
}
