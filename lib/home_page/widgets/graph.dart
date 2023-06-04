import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Graph extends StatefulWidget {
  const Graph({super.key});

  @override
  State<Graph> createState() => _GraphState();
}

class _GraphState extends State<Graph> {
  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
          // Initialize category axis
          primaryXAxis: CategoryAxis(),

          series: <LineSeries<BloodPressure, String>>[
            LineSeries<BloodPressure, String>(
              // Bind data source
              dataSource:  <BloodPressure>[
                BloodPressure(hours: 1, bloodPressure: 100),
                BloodPressure(hours: 3, bloodPressure: 70),
                BloodPressure(hours: 6, bloodPressure: 90),
                BloodPressure(hours: 11, bloodPressure: 130),
                
              ],
              xValueMapper: (BloodPressure record, _) => record.hours.toString(),
              yValueMapper: (BloodPressure record, _) => record.bloodPressure
            )
          ]
        );
  }
}

class BloodPressure {
   BloodPressure({required this.hours, required this.bloodPressure});
  final int hours;
  final double bloodPressure;
}