import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class GroupCarbonData {
  final String name;
  final int emissions;
  final charts.Color color;

  GroupCarbonData({
    this.name,
    this.emissions,
    this.color,
  });
}

final List<GroupCarbonData> groupData = [
  GroupCarbonData(
    name: 'Mia',
    emissions: 10,
    color: charts.ColorUtil.fromDartColor(Color(0xFFabff5d)),
  ),
  GroupCarbonData(
    name: 'Anmol',
    emissions: 5,
    color: charts.ColorUtil.fromDartColor(Color(0xFF5dff60)),
  ),
  GroupCarbonData(
    name: 'Barbara',
    emissions: 12,
    color: charts.ColorUtil.fromDartColor(Color(0xFF5dffb1)),
  ),
  GroupCarbonData(
    name: 'Jaroslav',
    emissions: 8,
    color: charts.ColorUtil.fromDartColor(Color(0xFF5dfcff)),
  ),
];

class PersonalCarbonData {
  final String category;
  final int emissions;
  final charts.Color color;

  PersonalCarbonData({
    this.category,
    this.emissions,
    this.color,
  });
}

final List<PersonalCarbonData> personalData = [
  PersonalCarbonData(
    category: 'travel',
    emissions: 3,
    color: charts.ColorUtil.fromDartColor(Color(0xFF77ffbd)),
  ),
  PersonalCarbonData(
    category: 'food',
    emissions: 2,
    color: charts.ColorUtil.fromDartColor(Color(0xFF77ff79)),
  ),
  PersonalCarbonData(
    category: 'other',
    emissions: 2,
    color: charts.ColorUtil.fromDartColor(Color(0xFFb9ff77)),
  ),
];

class GroupChart extends StatelessWidget {
  final List<GroupCarbonData> data;

  GroupChart({this.data});

  Widget build(BuildContext context) {
    List<charts.Series<GroupCarbonData, String>> series = [
      charts.Series(
          id: "Group Data",
          data: data,
          domainFn: (GroupCarbonData series, _) => series.name,
          measureFn: (GroupCarbonData series, _) => series.emissions,
          colorFn: (GroupCarbonData series, _) => series.color),
    ];

    return charts.BarChart(
      series,

    );
  }
}

class PersonalChart extends StatelessWidget {
  final List<PersonalCarbonData> data;

  PersonalChart({this.data});

  Widget build(BuildContext context) {
    List<charts.Series<PersonalCarbonData, String>> series = [
      charts.Series(
          id: "Personal Data",
          data: data,
          domainFn: (PersonalCarbonData series, _) => series.category,
          measureFn: (PersonalCarbonData series, _) => series.emissions,
          colorFn: (PersonalCarbonData series, _) => series.color),
    ];

    return Container(
      height: 400,
      padding: EdgeInsets.all(20),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Text("Personal Data"),
              Expanded(
                child: charts.BarChart(
                  series,
                  animate: true,
                  behaviors: [
                    charts.RangeAnnotation([
                      charts.LineAnnotationSegment(
                          4, charts.RangeAnnotationAxisType.measure,
                          color: charts.MaterialPalette.black, endLabel: 'Target')])
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}