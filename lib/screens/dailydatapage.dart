import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:what_todo/data/grapher.dart';
import 'package:what_todo/data/graphlegend.dart';
import 'package:what_todo/screens/weeklydatapage.dart';

class DailyDataPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DailyDataPageState();
}

class _DailyDataPageState extends State<DailyDataPage> {
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
          title: Text("Data on Daily Carbon Emissions"),
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
                data: personalDailyData,
              ),
            ),
            Center(child: Legend()),
            TextButton(
              child: const Text("Weekly"),
              style: TextButton.styleFrom(
                  primary: Color(0xFFFFFFFF),
                  backgroundColor: Color(0xFF65FFB3),
                  textStyle: TextStyle(fontSize: 20)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return WeeklyDataPage();
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
