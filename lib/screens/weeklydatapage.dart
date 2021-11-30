import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:what_todo/data/grapher.dart';
import 'package:what_todo/data/graphlegend.dart';
import 'package:what_todo/screens/dailydatapage.dart';
import 'package:what_todo/screens/profilepage.dart';

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
        body: Container(
          margin: EdgeInsets.only(
            top: 100.0,
          ),
          child: Column(
              children: [
              Text("Data on Weekly Carbon Emissions",
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.black54,
                ),
              ),
              Center(
                child: PersonalChart(
                  data: personalWeeklyData,
                ),
              ),
                Center(child: Legend()),
                SizedBox(
                  width: 250.0,
                  child: TextButton(
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
                ),
                SizedBox(
                  width: 250.0,
                  child: TextButton(
                    child: const Text("Profile"),
                    style: TextButton.styleFrom(
                        primary: Color(0xFFFFFFFF),
                        backgroundColor: Color(0xFF65FFB3),
                        textStyle: TextStyle(fontSize: 20)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return ProfilePage();
                        }),
                      );
                    },
                  ),
                ),
              ],
          ),
        ),
      ),
    );
  }
}
