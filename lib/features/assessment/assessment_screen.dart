import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class AssessementScreen extends StatefulWidget {
  const AssessementScreen({super.key});

  @override
  State<AssessementScreen> createState() => _AssessementScreenState();
}

class _AssessementScreenState extends State<AssessementScreen> {
  double _value = 40.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              'Survey',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
            SfSlider(
              min: 0.0,
              max: 100.0,
              value: _value,
              interval: 20,
              showTicks: true,
              showLabels: true,
              enableTooltip: true,
              minorTicksPerInterval: 1,
              onChanged: (dynamic value) {
                setState(() {
                  _value = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
