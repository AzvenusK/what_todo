import 'package:what_todo/data/groupinfo.dart';
import 'package:what_todo/data/profileinfo.dart';
import 'package:flutter/material.dart';
import 'package:what_todo/data/socialpage.dart';
import 'package:what_todo/screens/dailydatapage.dart';
import 'package:what_todo/screens/homepage.dart';
import 'package:what_todo/screens/datapage.dart';
import 'package:what_todo/screens/grouptaskpage.dart';
class ProfilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          color: Color(0xFFffffff),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                      top: 20.0,
                      bottom: 16.0,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black54),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    height: 150.0,
                    width: 150.0,
                    child: Image(
                      image: AssetImage('assets/images/minty_profile_pic.png'),
                    ),
                  ),
                  ProfileData('Tolstoy DiCaprio', 'lotxtol', 'Go Green'),
                  GroupMembers(),
                  SizedBox(
                    width: 250.0,
                    child: TextButton(
                      child: const Text("Social Feed"),
                      style: TextButton.styleFrom(
                          primary: Color(0xFFFFFFFF),
                          backgroundColor: Color(0xFF32ff9a),
                          textStyle: TextStyle(fontSize: 20)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return SocialPage();
                          }),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    width: 250.0,
                    child: TextButton(
                      child: const Text("My Daily Data"),
                      style: TextButton.styleFrom(
                          primary: Color(0xFFFFFFFF),
                          backgroundColor: Color(0xFF32ff9a),
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
                      child: const Text("My Group Tasks"),
                      style: TextButton.styleFrom(
                          primary: Color(0xFFFFFFFF),
                          backgroundColor: Color(0xFF32ff9a),
                          textStyle: TextStyle(fontSize: 20)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return GroupTaskPage();
                          }),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    width: 250.0,
                    child: TextButton(
                      child: const Text("My Daily Tasks"),
                      style: TextButton.styleFrom(
                          primary: Color(0xFFFFFFFF),
                          backgroundColor: Color(0xFF32ff9a),
                          textStyle: TextStyle(fontSize: 20)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return Homepage();
                          }),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
