import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:flutter_design_showcase/FitnessScene/statistic_chart_model.dart';

class ChartBrain {
  static List<StatChartModel> data = [
    StatChartModel(
      day: "Sat",
      calories: 120,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    StatChartModel(
      day: "Sun",
      calories: 245,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    StatChartModel(
      day: "Mon",
      calories: 108,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    StatChartModel(
      day: "Tue",
      calories: 95,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    StatChartModel(
      day: "Wed",
      calories: 421,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    StatChartModel(
      day: "Thu",
      calories: 65,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    StatChartModel(
      day: "Fri",
      calories: 255,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
  ];

  List<charts.Series<StatChartModel, String>> series = [
    charts.Series(
        id: "Subscribers",
        data: data,
        domainFn: (StatChartModel series, _) => series.day,
        measureFn: (StatChartModel series, _) => series.calories,
        colorFn: (StatChartModel series, _) => series.barColor)
  ];
}
