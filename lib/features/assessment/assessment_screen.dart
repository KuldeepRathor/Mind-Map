import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class AssessmentScreen extends StatefulWidget {
  const AssessmentScreen({Key? key}) : super(key: key);

  @override
  State<AssessmentScreen> createState() => _AssessmentScreenState();
}

class _AssessmentScreenState extends State<AssessmentScreen> {
  double _stressLevel = 40.0;
  double _emotionalWellBeing = 40.0;
  double _sleepQuality = 40.0;
  double _concentrationFocus = 40.0;
  double _socialConnectedness = 40.0;
  double _energyLevel = 40.0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Survey',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: size.height * 0.1),
              buildSlider("Stress Level", _stressLevel, (value) {
                setState(() {
                  _stressLevel = value;
                });
              }),
              buildSlider("Emotional Well-being", _emotionalWellBeing, (value) {
                setState(() {
                  _emotionalWellBeing = value;
                });
              }),
              buildSlider("Sleep Quality", _sleepQuality, (value) {
                setState(() {
                  _sleepQuality = value;
                });
              }),
              buildSlider("Concentration/Focus", _concentrationFocus, (value) {
                setState(() {
                  _concentrationFocus = value;
                });
              }),
              buildSlider("Energy Level", _energyLevel, (value) {
                setState(() {
                  _energyLevel = value;
                });
              }),
              buildSlider("Social Connectedness", _socialConnectedness,
                  (value) {
                setState(() {
                  _socialConnectedness = value;
                });
              }),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSlider(
    String label,
    double value,
    ValueChanged<double> onChanged,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        SfSlider(
          min: 0.0,
          max: 100.0,
          value: value,
          interval: 20,
          showTicks: true,
          enableTooltip: true,
          minorTicksPerInterval: 1,
          onChanged: (dynamic value) {
            onChanged(value);
          },
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
