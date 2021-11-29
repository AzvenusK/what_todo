import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:what_todo/data/grapher.dart';
import 'package:what_todo/data/graphlegend.dart';
import 'package:what_todo/screens/dailydatapage.dart';

class WeeklyDataPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _WeeklyDataPageState();
}

class _WeeklyDataPageState extends State<WeeklyDataPage> {
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
          title: Text("Data on Weekly Carbon Emissions"),
          titleTextStyle: TextStyle(
            fontSize: 22.0,
            color: Color(0xFF000000),
          ),
          backgroundColor: Color(0xFFffffff),
        ),
        body: Column(
          children: [
            Center(
              child: PersonalChart(
                data: personalWeeklyData,
              ),
            ),
            Center(child: Legend()),
            TextButton(
              child: const Text("Daily"),
              style: TextButton.styleFrom(
                  primary: Color(0xFFFFFFFF),
                  backgroundColor: Color(0xFF65FFB3),
                  textStyle: TextStyle(fontSize: 20)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return DailyDataPage();
                  }),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
