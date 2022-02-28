
import 'package:charts_flutter/flutter.dart' as charts;

class DataConsumption {
  final String number;
  final double dataInGb;
  final charts.Color barColor;

  DataConsumption(
      {required this.number, required this.dataInGb, required this.barColor});
}