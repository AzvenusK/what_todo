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
    color: charts.ColorUtil.fromDartColor(Color(0xFFcd7f32)),
  ),
  GroupCarbonData(
    name: 'Anmol',
    emissions: 5,
    color: charts.ColorUtil.fromDartColor(Color(0xFFffd700)),
  ),
  GroupCarbonData(
    name: 'Barbara',
    emissions: 12,
    color: charts.ColorUtil.fromDartColor(Color(0xFFcd7f32)),
  ),
  GroupCarbonData(
    name: 'Jaroslav',
    emissions: 8,
    color: charts.ColorUtil.fromDartColor(Color(0xFFc0c0c0)),
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

final List<PersonalCarbonData> personalDailyData = [
  PersonalCarbonData(
    category: 'travel',
    emissions: 4,
    color: charts.ColorUtil.fromDartColor(Color(0xFFcd7f32)),
  ),
  PersonalCarbonData(
    category: 'food',
    emissions: 3,
    color: charts.ColorUtil.fromDartColor(Color(0xFFc0c0c0)),
  ),
  PersonalCarbonData(
    category: 'financial',
    emissions: 2,
    color: charts.ColorUtil.fromDartColor(Color(0xFFffd700)),
  ),
  PersonalCarbonData(
    category: 'other',
    emissions: 1,
    color: charts.ColorUtil.fromDartColor(Color(0xFFffd700)),
  ),
];

final List<PersonalCarbonData> personalWeeklyData = [
  PersonalCarbonData(
    category: 'travel',
    emissions: 28,
    color: charts.ColorUtil.fromDartColor(Color(0xFFcd7f32)),
  ),
  PersonalCarbonData(
    category: 'food',
    emissions: 21,
    color: charts.ColorUtil.fromDartColor(Color(0xFFc0c0c0)),
  ),
  PersonalCarbonData(
    category: 'financial',
    emissions: 14,
    color: charts.ColorUtil.fromDartColor(Color(0xFFffd700)),
  ),
  PersonalCarbonData(
    category: 'other',
    emissions: 35,
    color: charts.ColorUtil.fromDartColor(Color(0xFFffd700)),
  ),
];

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
      height: 300,
      width: 300,
      margin: EdgeInsets.only(
        top: 20.0,
        bottom: 20
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black54)
      ),
      child: charts.BarChart(
        series,
        behaviors: [
          charts.RangeAnnotation([
            charts.LineAnnotationSegment(
                6, charts.RangeAnnotationAxisType.measure,
                color: charts.MaterialPalette.black, endLabel: 'Target')
          ],
          ),
        ],
      ),
    );
  }
}

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

    return Container(
      height: 300,
      width: 300,
      margin: EdgeInsets.only(
          top: 20.0,
          bottom: 20
      ),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black54)
      ),
      child: charts.BarChart(
      series,
      behaviors: [
        charts.RangeAnnotation([
          charts.LineAnnotationSegment(
              6, charts.RangeAnnotationAxisType.measure,
              color: charts.MaterialPalette.black, endLabel: 'Target')
        ],
        ),
      ],
    ),
    );
  }
}
