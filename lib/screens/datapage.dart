import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:what_todo/data/grapher.dart';

class DataPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DataPageState();
}

class _DataPageState extends State<DataPage> {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.nunitoSansTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Data on Carbon Emissions"),
          titleTextStyle: TextStyle(
            fontSize: 22.0,
            color: Color(0xFF000000),
          ),
          backgroundColor: Color(0xFFffffff),
        ),
        body: Center(
          child: GroupChart(
            data: groupData,
          ),
        ),
      ),
    );
  }
}
