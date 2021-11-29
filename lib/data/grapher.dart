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
    color: charts.ColorUtil.fromDartColor(Color(0xFF00cc00)),
  ),
  GroupCarbonData(
    name: 'Anmol',
    emissions: 5,
    color: charts.ColorUtil.fromDartColor(Color(0xFF800080)),
  ),
  GroupCarbonData(
    name: 'Barbara',
    emissions: 12,
    color: charts.ColorUtil.fromDartColor(Color(0xFF0000ff)),
  ),
  GroupCarbonData(
    name: 'Jaroslav',
    emissions: 8,
    color: charts.ColorUtil.fromDartColor(Color(0xFFff8000)),
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
    color: charts.ColorUtil.fromDartColor(Color(0xFF808080)),
  ),
  PersonalCarbonData(
    category: 'food',
    emissions: 3,
    color: charts.ColorUtil.fromDartColor(Color(0xFF8b4513)),
  ),
  PersonalCarbonData(
    category: 'financial',
    emissions: 2,
    color: charts.ColorUtil.fromDartColor(Color(0xFF8b4513)),
  ),
  PersonalCarbonData(
    category: 'other',
    emissions: 1,
    color: charts.ColorUtil.fromDartColor(Color(0xFF2aa52a)),
  ),
];

final List<PersonalCarbonData> personalWeeklyData = [
  PersonalCarbonData(
    category: 'travel',
    emissions: 28,
    color: charts.ColorUtil.fromDartColor(Color(0xFF808080)),
  ),
  PersonalCarbonData(
    category: 'food',
    emissions: 21,
    color: charts.ColorUtil.fromDartColor(Color(0xFF8b4513)),
  ),
  PersonalCarbonData(
    category: 'financial',
    emissions: 14,
    color: charts.ColorUtil.fromDartColor(Color(0xFF8b4513)),
  ),
  PersonalCarbonData(
    category: 'other',
    emissions: 35,
    color: charts.ColorUtil.fromDartColor(Color(0xFF2aa52a)),
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
      height: 400,
      padding: EdgeInsets.all(20),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Expanded(
                child: charts.BarChart(
                  series,
                  animate: true,
                  behaviors: [
                    charts.RangeAnnotation([
                      charts.LineAnnotationSegment(
                          4, charts.RangeAnnotationAxisType.domain,
                          color: charts.MaterialPalette.black,
                          endLabel: 'Target')
                    ])
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
      behaviors: [
        charts.RangeAnnotation([
          charts.LineAnnotationSegment(
              10, charts.RangeAnnotationAxisType.measure,
              color: charts.MaterialPalette.black, endLabel: 'Target')
        ])
      ],
    );
  }
}
