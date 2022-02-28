
import 'package:bowling_app/style/k_color.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../../model/data_consumption.dart';

class DataChart extends StatelessWidget {
  final List<DataConsumption> data;

  const DataChart({Key? key, required this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<charts.Series<DataConsumption, String>> series = [
      charts.Series(
        data: data,
        id: "DataConsumption",
        domainFn: (DataConsumption series, _) => series.number,
        measureFn: (DataConsumption series, _) => series.dataInGb,
        colorFn: (DataConsumption seies, _) => seies.barColor,
      )
    ];
    return Container(
      height: 400,
      padding: const EdgeInsets.all(20),
      child: Container(
        color: kcolor.background,
        child: Column(
          children: <Widget>[
            
            Expanded(
              child: charts.BarChart(
                series,
                behaviors: [
                  charts.ChartTitle(
                    'Over Count',
                    behaviorPosition: charts.BehaviorPosition.bottom,
                    titleOutsideJustification: charts.OutsideJustification.middleDrawArea
                  ),
                  charts.ChartTitle(
                    'Over Count',
                    behaviorPosition: charts.BehaviorPosition.start,
                    titleOutsideJustification: charts.OutsideJustification.middleDrawArea
                  )
                ],
                primaryMeasureAxis:charts.NumericAxisSpec(
          renderSpec: new charts.SmallTickRendererSpec(
              
              )
              ) ,
                //animate: true,
              ),
            )
          ],
        ),
      ),
    );
  }
}